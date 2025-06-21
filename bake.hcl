group "default" {
  targets = ["linux", "windows"]
}

target "linux" {
  dockerfile = "Dockerfile.linux"
  tags = ["africanfuture/gitdocx:linux"]
  platforms = ["linux/amd64", "linux/arm64"]
  cache-from = ["type=gha"]
  cache-to = ["type=gha,mode=max"]
}

target "windows" {
  dockerfile = "Dockerfile.windows"
  tags = ["africanfuture/gitdocx:windows"]
  platforms = ["windows/amd64"]
  cache-from = ["type=gha"]
  cache-to = ["type=gha,mode=max"]
}
