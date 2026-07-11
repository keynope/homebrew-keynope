class Keynope < Formula
  desc "Retro terminal presentation tool"
  homepage "https://github.com/keynope/keynope"
  version "0.1.1"

  depends_on :macos

  release_tag = version.to_s

  on_macos do
    depends_on macos: :sonoma

    on_arm do
      url "https://github.com/keynope/keynope/releases/download/#{release_tag}/keynope-mac-arm64.tar.gz"
      sha256 "f6ab4b9afaad01bf70881ccde0cedd714df736f11c2a19eca640f4ec22b13868"
    end

    on_intel do
      url "https://github.com/keynope/keynope/releases/download/#{release_tag}/keynope-mac-amd64.tar.gz"
      sha256 "bd6e609cca7409bfde4e660b38678e99970afb50bb719b3122ed67ba89abac67"
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
