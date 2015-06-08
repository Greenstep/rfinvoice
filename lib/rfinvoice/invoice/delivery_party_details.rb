require 'rfinvoice/invoice/delivery_code'
require 'rfinvoice/invoice/delivery_postal_address_details'

module RFinvoice
  class DeliveryPartyDetails < Model
    add_string_simple_properties '0_35', %w(DeliveryPartyIdentifier DeliveryOrganisationTaxCode), required: false
    add_complex_properties %w(DeliveryPostalAddressDetails DeliveryCode), required: false
    add_simple_collections %w(DeliveryOrganisationName), ::RFinvoice::Type::Array1_1000[::RFinvoice::Type::String2_35], required: true
    add_simple_collections %w(DeliveryOrganisationDepartment), ::RFinvoice::Type::Array0_2[::RFinvoice::Type::String0_35], required: false
  end
end