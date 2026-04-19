---
name: github-open-pr
description: Commit all current repository changes in logical conventional-commit chunks, push the current branch, and open or update a concise draft GitHub CLI pull request into the branch the work should merge back into.
---

# GitHub Open PR

## Overview

Use this skill when the user wants to publish code to the remote, push the current branch, or open or update a pull request from the current branch.

## Preconditions

- Require a git repository with a non-detached HEAD.
- Require GitHub CLI: run `gh --version`.
- Require authenticated GitHub CLI: run `gh auth status`.
- Require a branch that can open a PR. If the current branch resolves to the same branch as the PR base, stop and tell the user to create or switch to a feature branch first.
- The user asked for the repo's current changes to be published. Include all current tracked and untracked changes unless the worktree clearly contains secrets, generated junk, or unrelated accidental files that should not be committed. In those cases, stop and ask.

## Workflow

1. Inventory the full worktree.
   - Run `git status --short --branch`.
   - Review the diff by file before staging.
   - Understand the logical themes in the changes, including submodule pointer updates.
2. Plan commit chunks before writing history.
   - Split by intent, not by directory count.
   - Keep one purpose per commit.
   - Order commits from foundational to dependent work.
   - Use partial staging when one file contains more than one concern.
   - Keep submodule pointer changes in their own commit unless they are inseparable from a parent change.
3. Create the commits.
   - Stage only one logical chunk at a time.
   - Every commit message must follow the Conventional Commits standard.
   - Continue until `git status --short` is clean.
4. Resolve the PR base branch.
   - Prefer the branch configured in `branch.<current>.gh-merge-base` when present.
   - Otherwise prefer the branch configured in `branch.<current>.merge` when it differs from the current branch.
   - Otherwise use the remote default branch, typically from `origin/HEAD`.
   - If the repo uses stacked branches or a non-default merge target, override the default guess with explicit repo context.
   - If the resolved base matches the current branch, stop instead of opening a self-targeted PR.
5. Push the current branch.
   - If the branch has no upstream, use `git push -u origin "$(git branch --show-current)"`.
   - Otherwise use `git push`.
   - If push fails, print the real error, stop, and suggest the next likely action instead of trying to fix it automatically.
6. Check whether a PR already exists for the branch.
   - Run `gh pr list --head "$(git branch --show-current)" --json number,url,baseRefName,state --limit 1`.
   - If an open PR already exists for the branch, update it with `gh pr edit` instead of creating a duplicate.
   - If an existing PR is not draft, run `gh pr ready --undo` to convert it back to draft. If that fails, print the error and continue only if the user explicitly accepts the limitation.
7. Draft the PR messaging.
   - Use a conventional or semantic PR title that summarizes the branch as a whole.
   - Keep the PR body concise.
   - Focus on important changes, developer-visible impact, migrations, risks, manual follow-up, and anything other engineers must notice.
   - Do not spend the body explaining implementation details.
8. Open or update the PR with GitHub CLI.
   - Create with `gh pr create --draft --base "$base_branch" --head "$current_branch" --title "$title" --body-file "$body_file"`.
   - Update with `gh pr edit --title "$title" --body-file "$body_file"` when a PR already exists.
9. Report the result.
   - Summarize the commit list, the pushed branch, the base branch, the PR URL, and any follow-up items.

## Commit Rules

- Every commit message must follow the Conventional Commits standard.
- Use a scope when it clarifies the affected area.
- Keep the subject imperative and concise.
- Do not hide unrelated work behind a generic message such as `chore: update files`.
- Prefer several small coherent commits over one broad commit when the changes represent distinct concerns.

## PR Rules

- The PR title must also use conventional or semantic style.
- New PRs created by this skill must always be draft PRs.
- Existing PRs should be kept as draft PRs when the platform supports `gh pr ready --undo`.
- The PR body must stay concise and reviewer-oriented.
- Call out truly important items explicitly so another developer can scan the PR and immediately see what deserves attention.
- If there are no noteworthy warnings, omit the warning section instead of filling it with noise.
