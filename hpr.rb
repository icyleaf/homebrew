class Hpr < Formula
  VERSION = '0.6.2'.freeze

  version VERSION
  desc 'Mirror git repositories to self-host gitlab services.'
  homepage 'https://github.com/icyleaf/hpr'
  url "https://github.com/icyleaf/hpr/archive/v#{VERSION}.tar.gz"
  sha256 '61947a9f3ed2f33a9421f4c514775d0db3acead144616e318af7cb20bd797d60'

  depends_on 'crystal-lang' => :build
  depends_on 'redis'

  def install
    system "shards build --release --no-debug"
    bin.install "bin/hpr"
  end

  test do
    system "{bin}/hpr", "--help"
  end
end
