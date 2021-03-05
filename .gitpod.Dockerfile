FROM gitpod/workspace-full

# Install custom tools, runtime, etc.
RUN brew install ipfs \
    && ipfs init --profile server \
    && ipfs config --json API.HTTPHeaders.Access-Control-Allow-Origin '["*","http://localhost:3000", "http://127.0.0.1:5001", "https://webui.ipfs.io"]' \
    && ipfs config --json API.HTTPHeaders.Access-Control-Allow-Methods '["PUT", "POST"]'
