# Workflow — Writing and Shipping a Chapter

This is the operating manual for the repo. It covers how a chapter gets from a blank file to `main`,
and what each script does.

The pipeline in [README.md](README.md) describes the *content* flow (intel → draft → edit → publish).
This document describes the *mechanical* flow: the git commands, the checks, the files.

---

## One-time setup

```bash
./scripts/setup-ssh.sh                              # SSH key + core.sshCommand
echo '<your-pat>' > .secrets/github-token           # PAT, for opening PRs
chmod 600 .secrets/github-token
./scripts/doctor.sh                                 # verify everything
```

Two credentials, two jobs:

| Credential | Used for | Stored in |
|------------|----------|-----------|
| SSH key | `git push` | `.git-ssh/` (gitignored) |
| GitHub token (PAT) | opening pull requests | `.secrets/github-token` (gitignored) |

They are deliberately separate. The token never touches your git history, and losing it only costs you
PR automation, not your ability to push.

### Why SSH, and why the key is inside the repo

`scripts/git-ssh.sh` is registered as `core.sshCommand` and points ssh at `.git-ssh/id_ed25519`. It:

- resolves the key path relative to the repo root, so git works from any subdirectory;
- passes `-F /dev/null`, which **ignores the system ssh config**.

That second point is not cosmetic. On this machine `/etc/ssh/ssh_config.d/` is owned by
`nobody:nogroup`, and ssh refuses to start at all when it reads it — which breaks every SSH push with
a `Bad owner or permissions` error that looks nothing like the real cause. The `-F /dev/null` bypasses
the broken include.

The durable fix is to correct the ownership (needs root):

```bash
sudo chown root:root /etc/ssh/ssh_config.d /usr/lib/systemd/ssh_config.d
sudo chown root:root /etc/ssh/ssh_config.d/*.conf /usr/lib/systemd/ssh_config.d/*.conf
```

Once that is done, ordinary `ssh` and `git` work everywhere, not just inside this repo.

`.git-ssh/` is gitignored. **Never commit it** — it holds a private key.

### The token

Looked up in this order, first hit wins:

1. `$GITHUB_TOKEN`
2. `$GH_TOKEN`
3. `.secrets/github-token`
4. `gh auth token`, if `gh` is installed and logged in

Create one at <https://github.com/settings/tokens>. Scope: **`repo`** (classic PAT), or
`Contents: read/write` + `Pull requests: read/write` (fine-grained).

Check it:

```bash
./scripts/github-token.sh --check
```

Then verify the whole setup end to end:

```bash
./scripts/doctor.sh
```

---

## Writing a chapter

### 1. Research first

**Do not start drafting until the research is done.** A chapter written first and sourced afterwards
produces claims that fit the prose, which is backwards.

```bash
cp templates/research-notes-template.md chapters/en/research/ch03-notes.md
```

Work through it:

1. **Search widely.** Run several queries from different angles — the claim itself, the counter-claim,
   the underlying data, and who disagrees. Record every query you actually ran, including the ones
   that went nowhere.
2. **Open every source.** A search snippet is a lead, not a source. Read the page. If it is paywalled,
   say so and find something a reader can check — in Ch. 01 the accessible coverage of a paywalled
   Bloomberg article contradicted the snippet, and the snippet was wrong.
3. **Keep at least 5 independent sources** per chapter. Independent means separate origins, not one
   report reprinted five times.
4. **Prefer primary over secondary.** Original data, official reports, statistics, academic papers,
   first-hand accounts, and the actual pricing page count as primary and can carry a claim alone.
   Reporting *about* someone's data is fine as a lead but must not be the only support for a number.
5. **Record what you rejected, and why.** This is the most valuable part of the file. A source you
   cannot describe is a source you did not read.
6. **Downgrade claims the research does not support** — before they reach the draft, not after.

The result is `chapters/en/research/ch<NN>-notes.md`, committed alongside the chapter. See
[Research Notes](chapters/en/research/README.md) for the rules, and
[Factual claims](chapters/en/README.md#factual-claims) for why this is enforced.

### 2. Start from the template

```bash
cp templates/chapter-template.md chapters/en/ch03-what-ai-can-never-do-well-and-why-thats-your-moat.md
```

Filename convention is enforced by the linter: `ch<NN>-<kebab-case-slug>.md`. Use `chapters/en/README.md`
as the index — flip the chapter's status there when it moves.

### 3. Draft in `.scratch/` if you want

`.scratch/` is gitignored. Use it for fragments, outlines, and dead ends you are not ready to commit.

### 4. Fill in the front matter, length, and structure

The linter requires these fields: `chapter`, `title`, `part`, `status`, `language`, `created`,
`last_updated`, `assisted_by`, `edited_by`.

`status` is one of `planned` / `draft` / `review` / `stable`.

Also fill in `word_target` (use `2500`) and `tags`. The linter cross-checks `word_target` against the
actual body length and warns if they are more than 400 words apart — which is how the mismatch in
Ch. 01 and Ch. 02 was caught.

Target **~2500 words of body**, which is the low end of the 2,500–5,000-word range non-fiction
chapters normally run. Twenty-one chapters at 2500 is a 52,000-word book.

- two or three body sections of roughly 700–900 words each, each with its own argument and example;
- **named after their arguments**, not "Section 2";
- finishes with `## The honest caveats` and `## Do this today`.

The full spec lives in [`chapters/en/README.md`](chapters/en/README.md#writing-standards), and the
template encodes it with worked examples. Length is a consequence of the arguments, not a target to
hit — a chapter that needs a second argument is short of an argument, not of words.

### 5. Delete the HTML comments

The template is full of `<!-- guidance -->`. Those are for you while drafting. Remove them before you
publish — the linter warns on any that remain.

Two comments are content, not scaffolding, and stay:

```markdown
<!-- verified YYYY-MM-DD — source: <URL> -->   a claim you actually checked
<!-- unverified -->                            a claim you have not checked yet
```

Put one under every concrete, checkable claim — an amount, a percentage, a dated event. `verified`
means you opened the source; never use it to mean "this sounds right". `unverified` is fine in draft
and becomes an **error** at `review`. See
[Factual claims](chapters/en/README.md#factual-claims) for the reasoning, and for the three failure
modes in Ch. 01 and Ch. 02 that made this rule necessary.

### 6. Check it

```bash
./scripts/check-chapter.sh chapters/en/ch02-....md
```

Errors block publishing. Warnings are judgement calls. The check covers filename, front matter,
footer markers, leftover scaffolding, `TODO` markers, source markers, and length (flags below 1000
and above 2000 words of body, and any large gap between the body and the declared `word_target`).

Two of the source checks are **errors**, not warnings: a `verified` marker with no `source:`, and any
`unverified` claim once `status` is `review` or `stable`.

### 7. Publish

```bash
./scripts/publish-chapter.sh chapters/en/ch02-....md
```

This does, in order:

1. lints the chapter — aborts on errors;
2. creates or reuses the branch `draft/<filename-stem>`;
3. commits as `draft(ch02): <title>` (or `revise(...)` if the file is already tracked);
4. pushes over SSH;
5. opens a draft PR through the REST API, if a token is available.

Flags: `--dry-run` previews without touching anything, `--no-pr` pushes without opening a PR,
`--type` overrides the inferred commit type.

It will **not** move you off a branch it did not create, and it never touches `main` or force-pushes.
Re-running it on the same chapter pushes new commits to the same branch — if a PR is already open for
that branch, `pr-create.sh` reports it rather than opening a second one.

### 8. Merge, then reset

Single-author repo: read your own diff, then

```bash
./scripts/pr-merge.sh draft/ch02-your-slug
```

That marks the draft PR ready (the API refuses to merge a draft, and there is no REST
endpoint to un-draft it), waits for GitHub to compute mergeability, squash-merges, and
deletes the branch locally and on the remote.

Doing it by hand instead:

```bash
# mark the PR ready for review in the GitHub UI first — drafts cannot be merged
git checkout main && git pull && git branch -d draft/ch02-....
```

---

## Updating the index and changelog

A chapter is not shipped until three files agree:

| File | What to update |
|------|----------------|
| `chapters/en/README.md` | chapter status: `planned` → `draft` → `review` |
| `CHANGELOG.md` | an entry under the current `YYYY.MM` heading |
| `chapters/en/ch<NN>-....md` | `last_updated` in front matter **and** the footer date |

The `Last updated:` footer and the `last_updated:` field should match. If you change one, change both.

`publish-chapter.sh` stages `chapters/en/README.md`, `CHANGELOG.md`, `chapters/en/research/README.md`,
and the chapter's own `research/ch<NN>-notes.md` alongside the chapter, when they have uncommitted
changes — so none of the four gets left behind. It will not guess at anything else: other modified
files stay unstaged. For a **new** chapter it warns if `CHANGELOG.md` is untouched, since that entry
is a judgement call it cannot write for you.

---

## Reference

| Script | Purpose |
|--------|---------|
| `scripts/setup-ssh.sh` | Create/verify the SSH key, wire up `core.sshCommand`, point `origin` at SSH. `--check` to verify only. |
| `scripts/git-ssh.sh` | The SSH wrapper git calls. Resolves the repo-local key, ignores the broken system ssh config. |
| `scripts/github-token.sh` | Resolve and diagnose the PAT. `--check` reports the source without printing the token. |
| `scripts/pr-create.sh` | Open (or find) a PR via the REST API. Idempotent. |
| `scripts/pr-merge.sh` | Mark a draft PR ready, merge it, delete the branch. `--dry-run` to preview. |
| `scripts/doctor.sh` | Diagnose repo, ssh, key, and token in one shot. Start here when something fails. |
| `scripts/check-chapter.sh` | Lint one chapter file. Non-zero exit on errors. |
| `scripts/publish-chapter.sh` | Branch → commit → push → PR for one chapter. |
| `scripts/gh.sh` | Optional `gh` wrapper. Not required — PRs go through the REST API. |

## Troubleshooting

Start with `./scripts/doctor.sh`. It checks all of the below at once.

**`Bad owner or permissions on /etc/ssh/ssh_config.d/...`**
The system ssh config is broken. Inside this repo, `scripts/git-ssh.sh` works around it with
`-F /dev/null`. Outside the repo, fix the ownership (see
[One-time setup](#one-time-setup)) — it needs root.

**`Permission denied (publickey)`**
The key is not registered on GitHub. Run `./scripts/setup-ssh.sh`, add the printed public key at
<https://github.com/settings/ssh/new>, then `./scripts/setup-ssh.sh --check`.

**PR creation is skipped**
No token was found. `./scripts/github-token.sh --check` says which source it looked at. The push still
worked — only the PR was skipped, and the compare URL is printed for you.

**`GitHub API error: Bad credentials`**
The token is wrong, expired, or revoked. Issue a new one.

**`GitHub API error: Resource not accessible by personal access token`**
The token lacks scope, or the org requires SSO authorization. Needs `repo`.

**`could not read Username for 'https://github.com'`**
`origin` is still on HTTPS. Run `./scripts/setup-ssh.sh`, which switches it to SSH.
