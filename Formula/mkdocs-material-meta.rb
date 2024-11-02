class MkdocsMaterialMeta < Formula
    desc "Meta package containing dependencies for mkdocs-material"
    version "1.0.0"
    homepage "https://squidfunk.github.io/mkdocs-material/plugins/requirements/image-processing/#dependencies"
    url "file:///dev/null"
    sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"

    depends_on "cairo"
    depends_on "freetype"
    depends_on "libffi"
    depends_on "libjpeg"
    depends_on "libpng"
    depends_on "pngquant"
    depends_on "zlib"

    def install
        (doc+"mkdocs-material-meta").write <<-EOS
            Meta package containing dependencies for mkdocs-material
        EOS
    end
end
