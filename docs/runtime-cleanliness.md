# Runtime Cleanliness

Clean runtime does not mean "small for aesthetics." It means the final image contains fewer things that are unrelated to running the application.

## What stays out

The final `runtime` stage does not copy:

- Composer binary;
- package manager caches;
- dev dependencies;
- `.git`;
- `.env`;
- IDE files;
- temporary logs and local clutter.

## Why it matters

Fewer files make the image easier to inspect. Fewer tools reduce the places where unexpected behavior can appear. This is the practical meaning of a smaller risk surface.

## How to build the runtime image

```bash
docker build --target runtime -t ecommerce-php:runtime -f docker/php/Dockerfile .
```

This command builds the final runtime stage. It does not prove the container was fully tested in every environment; it only creates the image from the Dockerfile recipe.
