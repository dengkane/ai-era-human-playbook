# Workflow — Writing and Shipping a Chapter

This is the operating manual for the repo. It covers how a chapter gets from a blank file to `main`,
and what each script does.

The pipeline in [README.md](README.md) describes the *content* flow (intel → draft → edit → publish).
This document describes the *mechanical* flow: the git commands, the checks, the files.

---

## One-time setup

The machine this was first set up on has no usable root and a read-only `$HOME`, so two things are
vendored into the repo instead of installed system-wide. Both are gitignored.

```bash
./scripts/setup-ssh.sh      # SSH key in .git-ssh/ + wire up core.sshCommand
./scripts/install-gh.sh     # gh binary in .tools/ (no root needed)
./scripts/gh.sh auth login  # authenticate gh for PR creation
```

### Why SSH, and why the key is inside the repo

`~/.ssh` is not writable in this environment, so the key lives at `.git-ssh/id_ed25519` and
`scripts/git-ssh.sh` is registered as `core.sshCommand`. That wrapper:

- resolves the key path relative to the repo root, so git works from any subdirectory;
- passes `-F /dev/null`, which **ignores the system ssh config**. This is required, not cosmetic:
  `/etc/ssh/ssh_config.d/20-systemd-ssh-proxy.conf` has bad ownership on this machine and ssh refuses
  to start when it reads it. If you ever see `Bad owner or permissions on ... ssh_config.d/...`, that
  is this problem, and the `-F /dev/null` in the wrapper is the fix.

`.git-ssh/` is gitignored. **Never commit it.** The private key is in there.

Confirm the setup at any time:

```bash
./scripts/setup-ssh.sh --check
```

### SSH vs. PR creation

SSH authenticates `git push` only. It cannot open a pull request — that goes through GitHub's API.
That is what `gh` is for. If `gh` is not authenticated, `publish-chapter.sh` still pushes the branch
and prints the compare URL, and you finish in the browser.

---

## Writing a chapter

### 1. Start from the template

```bash
cp templates/chapter-template.md chapters/en/ch02-youre-anxious-because-youre-using-an-old-map.md
```

Filename convention is enforced by the linter: `ch<NN>-<kebab-case-slug>.md`. Use `chapters/en/README.md`
as the index — flip the chapter's status there when it moves.

### 2. Draft in `.scratch/` if you want

`.scratch/` is gitignored. Use it for fragments, outlines, and dead ends you are not ready to commit.

### 3. Fill in the front matter

The linter requires these fields: `chapter`, `title`, `part`, `status`, `language`, `created`,
`last_updated`, `assisted_by`, `edited_by`.

`status` is one of `planned` / `draft` / `review` / `stable`.

### 4. Delete the HTML comments

The template is full of `<!-- guidance -->`. Those are for you while drafting. Remove them before you
publish — the linter warns on any that remain.

One exception: `<!-- Last verified: YYYY-MM-DD -->` is meant to stay. Put it under any fact that goes
stale — prices, model names, legal claims, salary figures. It tells the reader how old the number is.

### 5. Check it

```bash
./scripts/check-chapter.sh chapters/en/ch02-....md
```

Errors block publishing. Warnings are judgement calls. The check covers filename, front matter,
footer markers, leftover scaffolding, `TODO` markers, `Last verified` presence, and length.

### 6. Publish

```bash
./scripts/publish-chapter.sh chapters/en/ch02-....md
```

This does, in order:

1. lints the chapter — aborts on errors;
2. creates or reuses the branch `draft/<filename-stem>`;
3. commits as `draft(ch02): <title>` (or `revise(...)` if the file is already tracked);
4. pushes to `origin`;
5. opens a PR via `gh` if authenticated, otherwise prints the compare URL.

It will **not** move you off a branch it did not create, and it never touches `main` or force-pushes.
Re-running it on the same chapter pushes new commits to the same branch — so the PR updates in place.

### 7. Merge, then reset

Single-author repo: review your own diff, merge the PR on GitHub, then:

```bash
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

---

## Reference

| Script | Purpose |
|--------|---------|
| `scripts/setup-ssh.sh` | Generate/verify the SSH key, wire up `core.sshCommand`, switch `origin` to SSH. `--check` to verify only. |
| `scripts/git-ssh.sh` | The SSH wrapper git calls. Resolves the repo-local key and ignores the broken system ssh config. |
| `scripts/install-gh.sh` | Download `gh` into `.tools/` without root. |
| `scripts/gh.sh` | Run the vendored `gh`, falling back to `PATH`. |
| `scripts/check-chapter.sh` | Lint one chapter file. Non-zero exit on errors. |
| `scripts/publish-chapter.sh` | Branch → commit → push → PR for one chapter. `--dry-run` to preview. |

## Troubleshooting

**`Bad owner or permissions on /etc/ssh/ssh_config.d/...`**
The system ssh config is broken. `scripts/git-ssh.sh` already works around it with `-F /dev/null`. If
you call `ssh` or `git` outside this repo's config, you'll hit it again.

**`Permission denied (publickey)`**
The key is not registered on GitHub. Run `./scripts/setup-ssh.sh`, copy the printed public key to
<https://github.com/settings/ssh/new>, then `./scripts/setup-ssh.sh --check`.

**`gh: command not found`, or PR creation is skipped**
`gh` is not on `PATH` and not in `.tools/`. Run `./scripts/install-gh.sh`, then `./scripts/gh.sh auth login`.
The push still worked — only the automatic PR was skipped.

**`could not read Username for 'https://github.com'`**
`origin` is still on HTTPS. Run `./scripts/setup-ssh.sh`, which switches it to SSH.
