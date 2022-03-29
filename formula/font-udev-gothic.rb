cask "font-udev-gothic" do
  version "v0.0.7"
  sha256 "62735bda02f3c7cc053b79754c83ccc2fcb3392ba4a8dc8946f34298f5258abc"

  url "https://github.com/yuru7/udev-gothic/releases/download/#{version}/UDEVGothic_#{version}.zip"
  appcast "https://github.com/yuru7/udev-gothic/releases.atom"
  name "UDEV Gothic"
  desc "Integrate fonts from BIZ UD Gothic and JetBrains Mono"
  homepage "https://github.com/yuru7/udev-gothic/"

  font "UDEVGothic_#{version}/UDEVGothic-Bold.ttf"
  font "UDEVGothic_#{version}/UDEVGothic-Regular.ttf"
  font "UDEVGothic_#{version}/UDEVGothic35-Bold.ttf"
  font "UDEVGothic_#{version}/UDEVGothic35-Regular.ttf"
  font "UDEVGothic_#{version}/UDEVGothic35JPDOC-Bold.ttf"
  font "UDEVGothic_#{version}/UDEVGothic35JPDOC-Regular.ttf"
  font "UDEVGothic_#{version}/UDEVGothic35LG-Bold.ttf"
  font "UDEVGothic_#{version}/UDEVGothic35LG-Regular.ttf"
  font "UDEVGothic_#{version}/UDEVGothicJPDOC-Bold.ttf"
  font "UDEVGothic_#{version}/UDEVGothicJPDOC-Regular.ttf"
  font "UDEVGothic_#{version}/UDEVGothicLG-Bold.ttf"
  font "UDEVGothic_#{version}/UDEVGothicLG-Regular.ttf"
end
