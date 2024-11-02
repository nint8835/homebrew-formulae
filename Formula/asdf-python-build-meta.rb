class AsdfPythonBuildMeta < Formula
  desc "Meta package containing dependencies for using python-build with asdf"
  homepage "https://github.com/pyenv/pyenv/wiki#suggested-build-environment"
  url "file:///dev/null"
  version "1.0.0"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"

  depends_on "openssl"
  depends_on "readline"
  depends_on "sqlite3"
  depends_on "tcl-tk"
  depends_on "xz"
  depends_on "zlib"

  def install
    (doc+"asdf-python-build-meta").write <<-EOS
            Meta package containing dependencies for using python-build with asdf
    EOS
  end
end
