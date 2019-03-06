# frozen_string_literal: true

require 'barby'
require 'barby/barcode'
require 'barby/barcode/qr_code'
require 'barby/outputter/png_outputter'

class QrCode
  def self.generate(url)
    barcode = Barby::QrCode.new(url, level: :q, size: 5)
    base64_output = Base64.encode64(barcode.to_png(xdim: 5))
    "data:image/png;base64,#{base64_output}"
  end
end
