require 'rfinvoice/invoice/seller_official_postal_address_details'
require 'rfinvoice/invoice/seller_account_details'

module RFinvoice
  class SellerInformationDetails < Model
    add_string_simple_properties '0_35', %w(SellerHomeTownName SellerVatRegistrationText SellerTaxRegistrationText SellerPhoneNumber SellerFaxNumber SellerWebaddressIdentifier), required: false
    add_string_simple_properties '0_70', %w(SellerCommonEmailaddressIdentifier), required: false
    add_string_simple_properties '0_512', %w(SellerFreeText), required: false
    add_complex_properties_with_type %w(SellerVatRegistrationDate), ::RFinvoice::Date, required: false
    add_complex_properties %w(SellerOfficialPostalAddressDetails), required: false
    add_complex_collection %w(SellerAccountDetails), ::Array[::RFinvoice::SellerAccountDetails], required: false
  end
end
