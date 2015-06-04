require 'rfinvoice/invoice/seller_postal_address_details'

module RFinvoice
  class SellerPartyDetails < Model
    add_string_simple_properties '0_35', %w(SellerPartyIdentifier SellerOrganisationTaxCode), required: false
    add_string_simple_properties '0_512', %w(SellerPartyIdentifierUrlText SellerOrganisationTaxCodeUrlText), required: false
    add_complex_properties %w(SellerPostalAddressDetails), required: false
    add_complex_properties_with_type %w(SellerCode), ::RFinvoice::PartyIdentifier, required: false
    add_simple_collections %w(SellerOrganisationName), ::RFinvoice::Type::Array1_1000[::RFinvoice::Type::String2_70], required: true
    add_simple_collections %w(SellerOrganisationDepartment), ::RFinvoice::Type::Array0_2[::RFinvoice::Type::String0_35], required: false
  end
end
