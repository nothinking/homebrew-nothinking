# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Ksecret < Formula
  desc ""
  homepage ""
  url "https://github.com/nothinking/homebrew-ksecret/archive/refs/tags/v0.0.7.tar.gz"
  sha256 "a0fd3b32d0fc540d49c3b45c3f84f1793ce5b6c601d9e7cff859cf6f4496703d"
  license ""

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    # system "./configure", *std_configure_args, "--disable-silent-rules"
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    bin.install 'sh/ksecret.sh' => 'ksecret'
    bin.install 'sh/ksecret-status.sh' => 'ksecret-status'
    bin.install 'sh/ksecret-search.sh' => 'ksecret-search'
    bin.install 'sh/ksecret-update.sh' => 'ksecret-update'
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test ksecret`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
