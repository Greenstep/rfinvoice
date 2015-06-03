module RFinvoice
  module Decorator
    class SellerPostalAddressDetails < Base
      collections %w(SellerStreetName)
      properties ::RFinvoice::SellerPostalAddressDetails::STRINGS_0_35
      properties ::RFinvoice::SellerPostalAddressDetails::STRINGS_2_35
      properties %w(CountryCode)
    end
  end
end
