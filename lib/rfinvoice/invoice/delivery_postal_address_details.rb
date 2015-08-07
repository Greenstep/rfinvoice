module RFinvoice
  class DeliveryPostalAddressDetails < Model
    add_simple_collections %w(DeliveryStreetName), ::RFinvoice::Type::Array1_3[::RFinvoice::Type::String2_35], required: false, default: ['']
    add_string_simple_properties '2_35', %w(DeliveryTownName DeliveryPostCodeIdentifier), required: false
    add_nmtoken_simple_properties '2', %w(CountryCode), required: false
    add_string_simple_properties '0_35', %w(CountryName DeliveryPostofficeBoxIdentifier), required: false
  end
end
