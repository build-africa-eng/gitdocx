group "default" {
  targets = ["linux"]
}

target "linux" {
  dockerfile = "Dockerfile.linux"
  tags = ["africanfuture/gitdocx:linux"]
  platforms = ["linux/amd64", "linux/arm64"]
  cache-from = ["type=gha"]
  cache-to   = ["type=gha,mode=max"]
}