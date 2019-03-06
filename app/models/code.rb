class Code < ApplicationRecord
  validates :url, presence: true

  after_validation :generate_qr_code, on: %i[create update]

  def generate_qr_code
    QrCode.generate(url)
  end
end
