require 'rfinvoice/invoice/shipment_code'
require 'rfinvoice/invoice/shipment_postal_address_details'

module RFinvoice
  class ShipmentPartyDetails < Model
    add_string_simple_properties '0_35', %w(ShipmentPartyIdentifier ShipmentOrganisationTaxCode ShipmentSiteCode), required: false
    add_complex_properties %w(ShipmentPostalAddressDetails ShipmentCode), required: false
    add_simple_collections %w(ShipmentOrganisationName), ::RFinvoice::Type::Array1_1000[::RFinvoice::Type::String2_35], required: true
    add_simple_collections %w(ShipmentOrganisationDepartment), ::RFinvoice::Type::Array0_2[::RFinvoice::Type::String0_35], required: false
  end
end
