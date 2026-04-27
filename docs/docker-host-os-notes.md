# Docker Host OS Notes

## Why host OS matters

Docker commands look the same across operating systems, but the runtime path is not identical. For a course built around Linux containers, the host OS changes how files, permissions, file watching, and mounts behave.

## Linux

Linux is the most predictable environment for this course:
- Linux containers use a Linux kernel directly;
- bind mounts are usually the least surprising;
- file permissions and UID/GID behavior are closer to what later appears on Linux servers;
- there is less hidden virtualization between the developer and the container runtime.

If a student can choose only one platform, Linux is the preferred one.

## macOS

macOS is acceptable for the course, but Linux containers still run through a virtualization layer. That usually means:
- a bit more overhead between container and host;
- bind mounts can feel slower than on Linux;
- file watching can be less predictable than on a native Linux host.

For learning and day-to-day development, macOS is workable, but it is still not the same as running on Linux directly.

## Windows and WSL2

Windows is the least predictable option for this course because Linux containers normally run through `WSL2`. That introduces a boundary between the Windows filesystem and the Linux filesystem.

The most important practical rule is this:
- if Windows must be used, keep the project inside the Linux filesystem of `WSL2`, not on `C:` or `/mnt/c`.

Why that rule exists:
- bind mounts are usually faster in the Linux filesystem;
- file change notifications behave more correctly there;
- path translation is simpler;
- permission mismatches and line-ending issues are less frequent.

If the project lives on the Windows filesystem, students are more likely to run into slow mounts, confusing file-watch behavior, and operational noise that is not central to the course goals.

## Course recommendation

The course recommendation is explicit:
1. Prefer Linux.
2. Use macOS if Linux is unavailable.
3. Avoid Windows when possible.
4. If Windows is unavoidable, work from `WSL2` and keep the source code inside the Linux filesystem.
