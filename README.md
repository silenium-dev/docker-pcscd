# Description

containerized pcscd

## Features

- based on alpine
- socket at `/run/pcscd/pcscd.comm`
- can be used as K8s sidecar for stuff like step-ca to enable usage of HSMs

## Security

- can run in fully locked down, offline container
- can run as non-root user
- all capabilities can be dropped
- can run with read-only root-fs
- only rw path is `/run/pcscd/` for unix socket creation
