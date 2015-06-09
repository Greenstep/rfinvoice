module RFinvoice
  class SellerPostalAddressDetails < Model
    add_simple_collections %w(SellerStreetName), ::RFinvoice::Type::Array1_3[::RFinvoice::Type::String2_35], required: true
    add_string_simple_properties '2_35', %w(SellerTownName SellerPostCodeIdentifier), required: true
    add_nmtoken_simple_properties '2', %w(CountryCode), required: false
    add_string_simple_properties '0_35', %w(CountryName SellerPostOfficeBoxIdentifier), required: false
  end
end
