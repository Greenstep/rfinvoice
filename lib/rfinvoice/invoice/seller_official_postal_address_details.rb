module RFinvoice
  class SellerOfficialPostalAddressDetails < Model
    add_string_simple_properties '2_35', %w(SellerOfficialStreetName SellerOfficialTownName SellerOfficialPostCodeIdentifier), required: true
    add_string_simple_properties '0_35', %w(CountryName)
    add_nmtoken_simple_properties '2', %w(CountryCode)
  end
end
