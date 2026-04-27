# Multi-Stage Flow

`builder -> final`

## Flow

1. The builder stage installs or prepares dependencies.
2. The builder stage assembles the application artifact.
3. The final stage copies only the needed result with `COPY --from=builder`.
4. The runtime image starts without carrying the full build toolchain.
