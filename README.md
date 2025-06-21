## GitDocx is a cross-platform document automation builder using Git-powered workflows and Docker Buildx.

---

## 🚀 Features

- ✅ Linux/amd64 and arm64 builds
- 🔁 GitHub Actions CI with Buildx Bake
- 🐋 Docker Hub + GHCR multi-registry publishing
- ⚡ Caching with GitHub Actions (`gha`) cache driver

---

## 📦 Usage

## Pull from Docker Hub

```bash```
**```docker pull africanfuture/gitdocx:latest```**

**```Or from GitHub Container Registry:```**

**```docker pull ghcr.io/africanfuture/gitdocx:latest```**


---



## 🔧 Build Locally (Linux only)

Ensure Buildx is enabled:

'''docker buildx create --use
docker buildx bake --push'''

Or for local dev:

'''docker buildx bake --set linux.output=type=docker dev'''

---



## 📁 File Structure

Dockerfile.linux – Linux image definition

bake.hcl – Buildx multi-platform config

.github/workflows/ – CI automation for Linux builds

---


## 📤 Publish

This repo automatically builds and pushes images to:

Docker Hub

GitHub Container Registry

---


## 📜 License

MIT © African Future

---



