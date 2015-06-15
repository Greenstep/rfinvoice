require 'rfinvoice/invoice/date'
require 'rfinvoice/invoice/account_id'
require 'rfinvoice/invoice/account_bic'
require 'rfinvoice/invoice/party_identifier'
require 'rfinvoice/invoice/quantity14'
require 'rfinvoice/invoice/quantity70'
require 'rfinvoice/invoice/amount'
require 'rfinvoice/invoice/unit_amount'
require 'rfinvoice/invoice/epi_amount'
require 'rfinvoice/invoice/party_details'
require 'rfinvoice/invoice/definition_header_text'
require 'rfinvoice/invoice/payment_over_due_fine_details'
require 'rfinvoice/invoice/seller_party_details'
require 'rfinvoice/invoice/seller_communication_details'
require 'rfinvoice/invoice/message_transmission_details'
require 'rfinvoice/invoice/seller_information_details'
require 'rfinvoice/invoice/invoice_sender_party_details'
require 'rfinvoice/invoice/invoice_recipient_party_details'
require 'rfinvoice/invoice/invoice_recipient_communication_details'
require 'rfinvoice/invoice/buyer_party_details'
require 'rfinvoice/invoice/buyer_communication_details'
require 'rfinvoice/invoice/delivery_party_details'
require 'rfinvoice/invoice/delivery_communication_details'
require 'rfinvoice/invoice/delivery_details'
require 'rfinvoice/invoice/invoice_details'
require 'rfinvoice/invoice/base_invoice_row'
require 'rfinvoice/invoice/invoice_row'
require 'rfinvoice/invoice/epi_details'

module RFinvoice
  class Invoice < Model
    attribute :version, ::String, default: '2.01'
    attribute :xmlns_xsi, ::String, default: 'http://www.w3.org/2001/XMLSchema-instance'
    attribute :xsi_nonamespace, ::String, default: 'Finvoice2.01.xsd'
    add_modelized_properties %w(MessageTransmissionDetails), required: false
    add_modelized_properties %w(SellerPartyDetails), required: true
    add_string_simple_properties '0_35', %w(SellerOrganisationUnitNumber SellerSiteCode SellerContactPersonName), required: false
    add_simple_collections %w(SellerContactPersonFunction SellerContactPersonDepartment), ::RFinvoice::Type::Array0_2[::RFinvoice::Type::String0_35], required: false
    add_modelized_properties %w(SellerCommunicationDetails SellerInformationDetails InvoiceSenderPartyDetails InvoiceRecipientPartyDetails), required: false
    add_string_simple_properties '0_35', %w(InvoiceRecipientOrganisationUnitNumber InvoiceRecipientSiteCode InvoiceRecipientContactPersonName), required: false
    add_simple_collections %w(InvoiceRecipientContactPersonFunction InvoiceRecipientContactPersonDepartment), ::RFinvoice::Type::Array0_2[::RFinvoice::Type::String0_35], required: false
    add_nmtoken_simple_properties '2', %w(InvoiceRecipientLanguageCode), required: false
    add_modelized_properties %w(InvoiceRecipientCommunicationDetails BuyerPartyDetails), required: false
    add_string_simple_properties '0_35', %w(BuyerOrganisationUnitNumber BuyerSiteCode BuyerContactPersonName), required: false
    add_simple_collections %w(BuyerContactPersonFunction BuyerContactPersonDepartment), ::RFinvoice::Type::Array0_2[::RFinvoice::Type::String0_35], required: false
    add_modelized_properties %w(BuyerCommunicationDetails DeliveryPartyDetails), required: false
    add_string_simple_properties '0_35', %w(DeliveryOrganisationUnitNumber DeliverySiteCode DeliveryContactPersonName), required: false
    add_simple_collections %w(DeliveryContactPersonFunction DeliveryContactPersonDepartment), ::RFinvoice::Type::Array0_2[::RFinvoice::Type::String0_35], required: false
    add_modelized_properties %w(DeliveryCommunicationDetails DeliveryDetails), required: false
    add_modelized_properties %w(InvoiceDetails), required: true
    add_string_simple_properties '0_512', %w(VirtualBankBarcode), required: false
    add_modelized_collection_array %w(InvoiceRow), required: true
    add_modelized_properties %w(EpiDetails), required: true
    add_simple_collections %w(InvoiceUrlNameText InvoiceUrlText), ::Array[::RFinvoice::Type::String0_512], required: false
    add_string_simple_properties '0_512', %w(StorageUrlText), required: false
    add_string_simple_properties '0_35', %w(LayOutIdentifier InvoiceSegmentIdentifier), required: false
    add_string_simple_properties '0_512', %w(ControlStampText AcceptanceStampText), required: false
    add_string_simple_properties '0_35', %w(OriginalInvoiceFormat), required: false

    def to_xml
      decorator.to_xml
    end
  end
end
