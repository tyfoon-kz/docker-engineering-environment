# Recreation vs Manual Fix

## Why recreation is preferred

Containers should usually be recreated because:
- the desired state should live in the declaration, not in manual shell history;
- another developer must be able to get the same result on another machine;
- reproducibility is more valuable than local improvisation.

## Why manual fixes are dangerous

When a developer changes a container by hand:
- the runtime drifts away from its source declaration;
- the team cannot reliably reproduce the same state;
- debugging becomes harder because the environment is no longer transparent.
