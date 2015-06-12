require 'rfinvoice/invoice/buyer_code'
require 'rfinvoice/invoice/buyer_postal_address_details'

module RFinvoice
  class BuyerPartyDetails < Model
    add_string_simple_properties '0_35', %w(BuyerPartyIdentifier), required: false
    add_simple_collections %w(BuyerOrganisationName), ::RFinvoice::Type::Array1_1000[::RFinvoice::Type::String2_70], required: true
    add_simple_collections %w(BuyerOrganisationDepartment), ::RFinvoice::Type::Array0_2[::RFinvoice::Type::String0_35], required: false
    add_string_simple_properties '0_35', %w(BuyerOrganisationTaxCode), required: false
    add_modelized_properties %w(BuyerCode BuyerPostalAddressDetails), required: false
  end
end
