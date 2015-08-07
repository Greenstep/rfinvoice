module RFinvoice
  class ShipmentPostalAddressDetails < Model
    add_simple_collections %w(ShipmentStreetName), ::RFinvoice::Type::Array1_3[::RFinvoice::Type::String2_35], required: false, default: ['']
    add_string_simple_properties '2_35', %w(ShipmentTownName ShipmentPostCodeIdentifier), required: false
    add_nmtoken_simple_properties '2', %w(CountryCode), required: false
    add_string_simple_properties '0_35', %w(CountryName ShipmentPostOfficeBoxIdentifier), required: false
  end
end
