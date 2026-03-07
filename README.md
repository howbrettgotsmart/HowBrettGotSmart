# HowBrettGotSmart

This repository is set up for AI-assisted development with Codex.

## Purpose

This project is a workspace for building and maintaining code with human-led decisions and AI support.

## AI-Assisted Workflow

- Humans define goals, constraints, and acceptance criteria.
- Codex proposes and implements changes in small, reviewable steps.
- All meaningful changes are reviewed by a human before merge.
- CI checks run automatically on pull requests.

## Safety Rules for Using Codex

- Never commit secrets, API keys, tokens, or credentials.
- Prefer least-privilege configuration and explicit approvals.
- Review generated code for correctness, security, and maintainability.
- Require clear diffs before applying broad or destructive edits.
- Avoid destructive git/file operations unless explicitly requested.
- Validate behavior with linting/tests before shipping.

## Recommended Development Loop

1. Create a branch for focused work.
2. Ask Codex for a small scoped change.
3. Inspect the diff carefully.
4. Run local checks (lint/tests).
5. Open a PR and use CI as a gate.

## Initial Tooling Included

- `.gitignore` with macOS, Node, shell, git, editor, and temp patterns.
- GitHub Actions workflow for ShellCheck on `.sh`/`.zsh` files (only when such files exist).

## Notes

- This repository starts minimal by design.
- Expand CI and project structure as real code is added.
