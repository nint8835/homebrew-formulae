class BorikMeta < Formula
    desc "Meta package containing dependencies for compiling and running Borik"
    version "1.0.0"
    url "file:///dev/null"
    sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"

    depends_on "imagemagick"
    depends_on "pkg-config"

    def install
        (doc+"borik-meta").write <<-EOS
            Meta package containing dependencies for compiling and running Borik
        EOS
    end
end
