class TapS3Json < Formula
  desc "A Singer.io tap for Json files in S3"
  homepage "https://github.com/dcereijodo/tap-s3-json"
  url "https://github.com/dcereijodo/tap-s3-json/releases/download/v0.0.2/tap-s3-json-0.0.2.zip"
  sha256 "eed8e97dabdf94bd6253e795dc8b28a827a3ef741975194f048d322b6e5a9835"

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
    assert_equal "0.0.2", shell_output("#{bin}/tap-s3-json version").strip
  end
end
