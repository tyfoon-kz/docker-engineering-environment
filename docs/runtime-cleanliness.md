# Runtime Cleanliness

## What should stay out of the final image

- build-only tooling
- dev-only dependencies
- temporary build artifacts
- unnecessary helper utilities

## Why that matters

A cleaner runtime image is easier to understand and closer to production discipline.
The benefit is not only image size but also predictability and lower operational noise.
