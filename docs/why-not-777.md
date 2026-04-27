# Why Not 777

`chmod 777` is rejected here because it hides the ownership problem instead of solving it.

The environment should answer:
- who owns the files;
- who needs write access;
- which paths are writable and why.

Opening everything to everyone only destroys that contract.
