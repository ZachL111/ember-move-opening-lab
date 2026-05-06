# Review Journal

The cases below are the review handles I would use before changing the implementation.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its chess and game engines focus without claiming live deployment or external usage.

## Cases

- `baseline`: `position pressure`, score 203, lane `ship`
- `stress`: `move ordering`, score 131, lane `watch`
- `edge`: `search width`, score 199, lane `ship`
- `recovery`: `endgame risk`, score 206, lane `ship`
- `stale`: `position pressure`, score 112, lane `watch`

## Note

This file is intentionally plain so the fixture remains the source of truth.
