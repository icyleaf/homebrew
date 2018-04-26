class Hpr < Formula
  VERSION = '0.5.0'.freeze

  version VERSION
  desc 'Mirror git repositories to self-host gitlab services.'
  homepage 'https://github.com/icyleaf/hpr'
  url "https://github.com/icyleaf/hpr/archive/v#{VERSION}.tar.gz"

  depends_on 'crystal-lang' => :build
  depends_on 'redis'

  def install
    system "mkdir lib"
    system "shards build --release --no-debug"
    bin.install "hpr"
  end

  test do
    system "{bin}/hpr", "--help"
  end
end
