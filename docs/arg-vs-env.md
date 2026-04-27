# ARG vs ENV

## ARG

`ARG` belongs to build time.
It helps parameterize how the image is built.

## ENV

`ENV` belongs to the container runtime environment.
It influences how the application behaves when it starts.

## Practical distinction

If the value is needed to shape the build, it is a candidate for `ARG`.
If the value is needed by the running application, it is a candidate for `ENV` or compose/runtime injection.
