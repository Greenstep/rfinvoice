require 'rfinvoice/invoice/seller_official_postal_address_details'
require 'rfinvoice/invoice/seller_account_details'
require 'rfinvoice/invoice/invoice_recipient_details'

module RFinvoice
  class SellerInformationDetails < Model
    add_modelized_properties %w(SellerOfficialPostalAddressDetails), required: false
    add_string_simple_properties '0_35', %w(SellerHomeTownName SellerVatRegistrationText), required: false
    add_date_properties %w(SellerVatRegistrationDate), required: false
    add_string_simple_properties '0_35', %w(SellerTaxRegistrationText SellerPhoneNumber SellerFaxNumber), required: false
    add_string_simple_properties '0_70', %w(SellerCommonEmailaddressIdentifier), required: false
    add_string_simple_properties '0_35', %w(SellerWebaddressIdentifier), required: false
    add_string_simple_properties '0_512', %w(SellerFreeText), required: false
    add_modelized_collection_array %w(SellerAccountDetails InvoiceRecipientDetails), required: false
  end
end
