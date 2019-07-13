class TapS3Json < Formula
  desc "A Singer.io tap for Json files in S3"
  homepage "https://github.com/dcereijodo/tap-s3-json"
  url "https://github.com/dcereijodo/tap-s3-json/releases/download/v0.0.1/tap-s3-json-0.0.1.zip"
  sha256 "5e1912dc0f08b35254c90381a654249a9fe4f8ed8068265bd4041ba71782f25c"

  depends_on :java => "1.8+"

  def install
    rm_rf Dir["bin/*.bat"] # Remove Windows files.

    lib.install Dir["lib/*"]
    bin.install Dir["bin/*"]

    executable = bin/"tap-s3-json"
    executable.chmod 0555
  end

  test do
    # a bad test
    assert_equal "0.0.1", shell_output("#{bin}/tap-s3-json version").strip
  end
end
