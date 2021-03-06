cask "entropy" do
  version "1.6.0"
  sha256 "62ae4d0607a0637d404fef709494951610a13a8d02d8f2d887e6501f98c55591"

  # eigenlogik.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://eigenlogik.s3.amazonaws.com/releases/entropy/Entropy-#{version}.zip"
  appcast "http://hyperion.eigenlogik.com/appcast/feed/entropy/"
  name "Entropy"
  homepage "http://www.eigenlogik.com/entropy/"

  app "Entropy.app"
end
