cask "transcribe" do
  if MacOS.version <= :catalina
    version "8.75.2"
    sha256 "f01781100cd3b9987c8f8892145a2eaa358df07b92e10e26f30b6a877f5b352c"
    url "https://www.seventhstring.com/xscribe/downmac_old/transcribe#{version.no_dots}.dmg"
  else
    version "8.80.0"
    sha256 "2c32b81ebe15115550c74f6d758facac05acbd20d1da16237e1fe3fc60b04215"
    url "https://www.seventhstring.com/xscribe/transcribe.dmg"
  end

  appcast "https://www.seventhstring.com/xscribe/download_mac.html",
          must_contain: version.major_minor
  name "Transcribe!"
  desc "Transcribes recorded music"
  homepage "https://www.seventhstring.com/xscribe/overview.html"

  app "Transcribe!.app"

  uninstall quit: "com.seventhstring.transcribe"

  zap trash: [
    "~/Library/Preferences/Transcribe!7 Preferences",
    "~/Library/Preferences/com.seventhstring.transcribe.plist",
  ]
end
