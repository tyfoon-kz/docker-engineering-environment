# Docker Host OS Notes

Docker commands look similar on Linux, macOS, and Windows, but the host architecture is not identical.

## Linux

Linux is the most direct model for this course. Linux containers use Linux kernel features, so there are fewer hidden layers between the container and the host. File permissions, bind mounts, and file watching usually behave closest to production Linux servers.

## macOS

macOS is acceptable for learning Docker, but Linux containers still run through a virtualization layer. Most beginner scenarios work fine, but bind mount performance and file watching are not exactly the same as native Linux.

## Windows and WSL2

Windows can work, but beginners need to be careful. Linux containers usually run through WSL2. That creates a boundary between the Windows filesystem and the Linux filesystem.

If using Windows, keep the project inside the WSL2 Linux filesystem, not in `C:` or `/mnt/c`. This reduces slow bind mounts, path confusion, line-ending issues, and file watching problems.

This is not a judgment about Windows. It is an engineering note: fewer hidden layers make the course easier to reason about.
