FROM debian:bookworm-slim
RUN apt-get update && apt-get install -y curl
COPY --from=ghcr.io/jqlang/jq:1.7 /jq /usr/local/bin/jq

WORKDIR /app
RUN ln -s $PWD/tfh/bin/tfh /usr/local/bin/tfh
COPY . .

ENTRYPOINT [ "tfh" ]
