class OpsMeta < Formula
  desc "Meta package containing dependencies for my homelab"
  homepage "https://github.com/nint8835/ops"
  url "file:///dev/null"
  version "1.0.0"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"

  depends_on "cmctl"
  depends_on "fluxcd/tap/flux"
  depends_on "helm"
  depends_on "kubectl-cnpg"
  depends_on "kubernetes-cli"
  depends_on "sops"
  depends_on "talosctl"
  depends_on "tflint"

  def install
    (doc+"ops").write <<-EOS
            Meta package containing dependencies for my homelab
    EOS
  end
end
