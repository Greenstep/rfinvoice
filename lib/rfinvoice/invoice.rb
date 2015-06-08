require 'rfinvoice/invoice/date'
require 'rfinvoice/invoice/account_id'
require 'rfinvoice/invoice/account_bic'
require 'rfinvoice/invoice/party_identifier'
require 'rfinvoice/invoice/start_date'
require 'rfinvoice/invoice/end_date'
require 'rfinvoice/invoice/quantity14'
require 'rfinvoice/invoice/quantity70'
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

module RFinvoice
  class Invoice < Model
    attribute :version, ::String, default: '2.01'
    attribute :xmlns_xsi, ::String, default: 'http://www.w3.org/2001/XMLSchema-instance'
    attribute :xsi_nonamespace, ::String, default: 'Finvoice2.01.xsd'

    add_string_simple_properties '0_35', %w(SellerOrganisationUnitNumber SellerSiteCode SellerContactPersonName InvoiceRecipientOrganisationUnitNumber), required: false
    add_string_simple_properties '0_35', %w(InvoiceRecipientSiteCode InvoiceRecipientContactPersonName BuyerOrganisationUnitNumber BuyerSiteCode), required: false
    add_string_simple_properties '0_35', %w(BuyerContactPersonName DeliveryOrganisationUnitNumber DeliverySiteCode DeliveryContactPersonName), required: false
    add_string_simple_properties '0_35', %w(LayOutIdentifier InvoiceSegmentIdentifier OriginalInvoiceFormat), required: false
    add_string_simple_properties '0_512', %w(VirtualBankBarcode InvoiceUrlNameText InvoiceUrlText StorageUrlText ControlStampText AcceptanceStampText), required: false
    add_nmtoken_simple_properties '2', %w(InvoiceRecipientLanguageCode), required: false

    #
    # Childs
    #
    add_complex_properties %w(SellerPartyDetails), required: true, default: ->(_instance, _attribute) { ::RFinvoice::SellerPartyDetails.new }
    add_simple_collections [*%w(SellerContactPersonFunction SellerContactPersonDepartment),
                            *%w(InvoiceRecipientContactPersonFunction InvoiceRecipientContactPersonDepartment),
                            *%w(BuyerContactPersonFunction BuyerContactPersonDepartment),
                            *%w(DeliveryContactPersonFunction DeliveryContactPersonDepartment)],
                           ::RFinvoice::Type::Array0_2[::RFinvoice::Type::String0_35], required: false
    add_complex_properties %w(SellerCommunicationDetails MessageTransmissionDetails SellerInformationDetails InvoiceRecipientCommunicationDetails), required: false
    add_complex_properties %w(InvoiceRecipientPartyDetails InvoiceSenderPartyDetails BuyerPartyDetails BuyerCommunicationDetails), required: false
    add_complex_properties %w(DeliveryPartyDetails DeliveryCommunicationDetails DeliveryDetails), required: false

    def to_xml
      decorator.to_xml
    end
  end
end
