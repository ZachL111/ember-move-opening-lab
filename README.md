# ember-move-opening-lab

`ember-move-opening-lab` explores chess and game engines with a small Elixir codebase and local fixtures. The technical goal is to build an Elixir toolkit that studies opening behavior through negative fixtures, with human-readable error snapshots and synthetic fixtures only.

## Purpose

The project exists to keep a narrow engineering decision visible and testable. For this repo, that decision is how position pressure and search width should influence a review result.

## Ember Move Opening Lab Review Notes

The first comparison I would make is `endgame risk` against `position pressure` because it shows where the rule is most opinionated.

## What Is Covered

- `fixtures/domain_review.csv` adds cases for position pressure and move ordering.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/ember-move-opening-walkthrough.md` walks through the case spread.
- The Elixir code includes a review path for `endgame risk` and `position pressure`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Implementation Notes

The implementation keeps the scoring rule plain: reward signal and confidence, preserve slack, penalize drag, then classify the result into a review lane.

The Elixir code keeps the review rule close to the tests.

## Command

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Audit Path

The verifier is intentionally local. It should fail if the fixture score math, lane assignment, or language-specific test drifts.

## Limits

This remains a local project with deterministic fixtures. It does not depend on credentials, hosted services, or live data. Future work should add richer malformed inputs before widening the public API.
