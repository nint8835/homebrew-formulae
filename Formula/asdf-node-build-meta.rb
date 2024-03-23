class AsdfNodeBuildMeta < Formula
    desc "Meta package containing dependencies for using node-build with asdf"
    version "1.0.0"
    homepage "https://asdf-vm.com/guide/getting-started.html#plugin-dependencies"
    url "file:///dev/null"
    sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"

    depends_on "gawk"
    depends_on "gpg"

    def install
        (doc+"node-build-meta").write <<-EOS
            Meta package containing dependencies for node-build with asdf
        EOS
    end
end
