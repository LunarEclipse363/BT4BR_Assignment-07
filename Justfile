default:
  just --list

# Compile html version
build-html:
  podman run --rm -v ./:/userdata docker.io/rocker/verse:4.4 /bin/bash -c 'cd /userdata && quarto render notebook.qmd --to html'

# Compile markdown version as README.md
build-md:
  podman run --rm -v ./:/userdata docker.io/rocker/verse:4.4 /bin/bash -c 'cd /userdata && quarto render notebook.qmd --to gfm --no-execute -o README.md'
