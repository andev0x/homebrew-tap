# Homebrew Tap (General Guide)

This repository is a Homebrew tap: a package source that lets users install software with `brew`.

Use this README as both:
- a quick guide for this repo (`andev0x/tap`), and
- a reference pattern for understanding similar tap/project repositories.

## What This Repository Does

- Publishes Homebrew formulas (package definitions)
- Points to release artifacts and checksums for repeatable installs
- Includes formula-level tests used by Homebrew

Current formula in this tap:
- `guts` - terminal data explorer for CSV, JSON, and databases

## Quick Start

Install from this tap:

```bash
brew tap andev0x/tap
brew install guts
```

Or install with fully qualified name:

```bash
brew install andev0x/tap/guts
```

Upgrade:

```bash
brew update
brew upgrade guts
```

Uninstall:

```bash
brew uninstall guts
brew untap andev0x/tap
```

## How To Read Repositories Like This

When you open any similar project, scan in this order:

1. `README.md` - purpose, install path, maintenance flow
2. `Formula/` - package definitions (version, URL, checksum, dependencies)
3. CI/workflow files - how releases and checks are automated
4. Contribution docs - coding/review expectations

Good questions to ask while reading:
- What does this repo publish?
- Where is versioning updated?
- How are integrity and reproducibility handled (checksums/tests)?
- What is manual vs automated in release workflow?

## Repository Layout

- `Formula/` - Homebrew formula files
- `README.md` - installation and usage docs
- CI/config files - automation for validation and release checks

## Contributing

Contributions are welcome.

1. Open an issue with the problem or proposed improvement.
2. Submit a focused PR (version bump, checksum update, or packaging fix).
3. Include a clear description and a testable outcome.

## License

Formula metadata in this repository follows the repository license.
The `guts` project is licensed under MIT.
