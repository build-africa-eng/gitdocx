# gitdocx/bake.hcl

group "default" {
  targets = ["base", "full"]
}

target "base" {
  dockerfile = "Dockerfile.base"
  tags = ["youruser/gitdocx-base:latest"]
  platforms = ["linux/amd64", "linux/arm64"]
  cache-from = ["type=gha"]
  cache-to = ["type=gha,mode=max"]
}

target "full" {
  dockerfile = "Dockerfile"
  tags = ["youruser/gitdocx:latest"]
  platforms = ["linux/amd64", "linux/arm64"]
  cache-from = ["type=gha"]
  cache-to = ["type=gha,mode=max"]
}
