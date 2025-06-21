# GitDocx – Enhanced Buildx for Linux and Windows Containers

GitDocx sets up an advanced multi-platform Docker Buildx system via GitHub Actions.

## 🧰 Features

- Multi-platform: Linux (amd64/arm64) & Windows (amd64)
- QEMU emulation for ARM builds
- Inline caching and registry cache
- Uses `bake.hcl` to orchestrate builds

## 🚀 Usage

```yaml
- uses: africanfuture/gitdocx@main
  with:
    dockerhub-username: ${{ secrets.DOCKER_USERNAME }}
    dockerhub-password: ${{ secrets.DOCKER_PASSWORD }}
