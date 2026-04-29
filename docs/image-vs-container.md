# Image vs Container

The shortest beginner model:

```text
image     -> recipe / packed box / blueprint
container -> running instance / opened box / process from image
```

An **image** is immutable. It is a layered artifact that describes what files, packages, and default startup command should exist.

A **container** is created from an image. It is the runtime object Docker starts and observes. Practically, it is an isolated process or group of processes with a filesystem view, network settings, and optional mounts.

If the environment needs to change, change the image/config and recreate the container. Do not treat a running container as a special machine to fix by hand.
