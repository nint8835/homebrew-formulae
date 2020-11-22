# Based off of imagemagick & imagemagick@6 from https://github.com/Homebrew/homebrew-core
# License: https://github.com/Homebrew/homebrew-core/blob/master/LICENSE.txt
class Imagemagick6LQR < Formula
    desc "Tools and libraries to manipulate images in many formats"
    homepage "https://www.imagemagick.org/"
    # Please always keep the Homebrew mirror as the primary URL as the
    # ImageMagick site removes tarballs regularly which means we get issues
    # unnecessarily and older versions of the formula are broken.
    url "https://dl.bintray.com/homebrew/mirror/imagemagick%406-6.9.11-41.tar.xz"
    mirror "https://www.imagemagick.org/download/releases/ImageMagick-6.9.11-41.tar.xz"
    sha256 "80f201dc2fbfc9e413a265eb1fbc4190e54d0153c50d1eaf74bde54e9d932da5"
    license "ImageMagick"
    head "https://github.com/imagemagick/imagemagick6.git"
  
    livecheck do
      url "https://www.imagemagick.org/download/"
      regex(/href=.*?ImageMagick[._-]v?(6(?:\.\d+)+(?:-\d+)?)\.t/i)
    end
  
    keg_only :versioned_formula
  
    depends_on "pkg-config" => :build
  
    depends_on "freetype"
    depends_on "ghostscript"
    depends_on "jpeg"
    depends_on "libpng"
    depends_on "libtiff"
    depends_on "libtool"
    depends_on "little-cms2"
    depends_on "openjpeg"
    depends_on "webp"
    depends_on "xz"
    depends_on "liblqr"
  
    skip_clean :la
  
    def install
      # Avoid references to shim
      inreplace Dir["**/*-config.in"], "@PKG_CONFIG@", Formula["pkg-config"].opt_bin/"pkg-config"
  
      args = %W[
        --enable-osx-universal-binary=no
        --prefix=#{prefix}
        --disable-dependency-tracking
        --disable-silent-rules
        --disable-opencl
        --disable-openmp
        --enable-shared
        --enable-static
        --with-freetype=yes
        --with-modules
        --with-webp=yes
        --with-openjp2
        --with-gslib
        --with-lqr
        --with-gs-font-dir=#{HOMEBREW_PREFIX}/share/ghostscript/fonts
        --without-fftw
        --without-pango
        --without-x
        --without-wmf
      ]
  
      # versioned stuff in main tree is pointless for us
      inreplace "configure", "${PACKAGE_NAME}-${PACKAGE_VERSION}", "${PACKAGE_NAME}"
      system "./configure", *args
      system "make", "install"
    end
  
    test do
      assert_match "PNG", shell_output("#{bin}/identify #{test_fixtures("test.png")}")
      # Check support for recommended features and delegates.
      features = shell_output("#{bin}/convert -version")
      %w[Modules freetype jpeg png tiff].each do |feature|
        assert_match feature, features
      end
    end
  end