require 'rfinvoice/invoice/seller_postal_address_details'
require 'rfinvoice/invoice/seller_code'

module RFinvoice
  class SellerPartyDetails < Model
    add_string_simple_properties '0_35', %w(SellerPartyIdentifier), required: false
    add_string_simple_properties '0_512', %w(SellerPartyIdentifierUrlText), required: false
    add_simple_collections %w(SellerOrganisationName), ::RFinvoice::Type::Array1_1000[::RFinvoice::Type::String2_70], required: true
    add_simple_collections %w(SellerOrganisationDepartment), ::RFinvoice::Type::Array0_2[::RFinvoice::Type::String0_35], required: false
    add_string_simple_properties '0_35', %w(SellerOrganisationTaxCode), required: false
    add_string_simple_properties '0_512', %w(SellerOrganisationTaxCodeUrlText), required: false
    add_complex_properties %w(SellerCode SellerPostalAddressDetails), required: false
  end
end
