cask "pdf-reader-pro" do
  version "2.7.4.2"
  sha256 "d12bd192a1839b28ec57b739f96b4035f98c72026b2648a4898a3d4c8147ce8e"

  url "https://www.pdfreaderpro.com/downloads/PDFReaderPro.dmg"
  appcast "https://www.pdfreaderpro.com/downloads/pdfreaderprocast.xml"
  name "PDF Reader Pro"
  desc "Read, annotate, edit, convert, create, OCR, fill forms and sign PDFs"
  homepage "https://www.pdfreaderpro.com/"

  app "PDF Reader Pro.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.brother.pdfreaderprofree.mac.sfl2",
    "~/Library/Application Support/com.brother.pdfreaderprofree.mac",
    "~/Library/Caches/com.brother.pdfreaderprofree.mac",
    "~/Library/Preferences/com.brother.pdfreaderprofree.mac.bookmarks.plist",
    "~/Library/Preferences/com.brother.pdfreaderprofree.mac.plist",
  ]
end
