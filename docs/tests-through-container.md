# Tests Through the Container

## Why the same interpreter matters

Tests are meaningful only when they exercise the same PHP runtime model as the application.
When the IDE runs tests through host PHP while the app lives in the container, passing tests can still hide runtime failures.

## What the project gains

- Test results align with the real runtime.
- Extension-dependent behavior becomes visible earlier.
- Path assumptions stay closer to the actual container layout.
- Mentors and teammates can reason about one execution path instead of two.

## Rule

Composer and tests should follow the same remote interpreter so that IDE feedback remains trustworthy.

