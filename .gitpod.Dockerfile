FROM gitpod/workspace-full

# Install custom tools, runtime, etc.
RUN brew install ipfs \
    && ipfs init --profile server