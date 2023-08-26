## Step 1

run `docker build .`.

## Step 2

get files in `/pack` out, then modify `UK_ALIBS` and `UK_OLIBS` in unikraft Makefile.

```
UK_ALIBS:= packed_node_deps.a
UK_OLIBS:= node_text_start.o node_main.o node_snapshot.o 
```

## Step 3

build unikraft, then you will get the final image.
