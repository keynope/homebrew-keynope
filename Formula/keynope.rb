class Keynope < Formula
  desc "Retro terminal presentation tool"
  homepage "https://github.com/keynope/keynope"
  version "0.1.0"

  depends_on :macos

  release_tag = version.to_s

  on_macos do
    depends_on macos: :sonoma

    on_arm do
      url "https://github.com/keynope/keynope/releases/download/#{release_tag}/keynope-mac-arm64.tar.gz"
      sha256 "0885c3b97c2a4f66fd8af0ba552bc2690f97d8dd285d3ae99f17699277295f16"
    end

    on_intel do
      url "https://github.com/keynope/keynope/releases/download/#{release_tag}/keynope-mac-amd64.tar.gz"
      sha256 "13137538d33b5e7d29fb651a77686adc974e137b4ba830f23c33491bdffab455"
    end
  end

  def install
    cli = buildpath/"keynope"
    helper = buildpath/"KeynopePresenter.app"
    helper_executable = helper/"Contents/MacOS/KeynopePresenter"

    odie "Expected prebuilt CLI missing: #{cli}" unless cli.file?
    odie "Expected presenter helper missing: #{helper_executable}" unless helper_executable.file?

    libexec.install cli, helper
    chmod 0755, libexec/"keynope"
    bin.install_symlink libexec/"keynope"
  end

  test do
    assert_match "usage: keynope", shell_output("#{bin}/keynope --help 2>&1", 2)
    assert_path_exists libexec/"KeynopePresenter.app/Contents/MacOS/KeynopePresenter"
  end
end
