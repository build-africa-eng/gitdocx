# GitDocx - Enhanced Docker Buildx GitHub Action

A pluggable Docker Buildx setup for GitHub Actions with QEMU, caching, and DockerHub integration.

## Usage

```yaml
- uses: youruser/gitdocx@main
  with:
    dockerhub-username: ${{ secrets.DOCKER_USERNAME }}
    dockerhub-password: ${{ secrets.DOCKER_PASSWORD }}
