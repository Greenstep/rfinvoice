require 'rfinvoice/invoice/date'
require 'rfinvoice/invoice/party_identifier'
require 'rfinvoice/invoice/seller_party_details'
require 'rfinvoice/invoice/seller_communication_details'
require 'rfinvoice/invoice/message_transmission_details'
require 'rfinvoice/invoice/seller_information_details'

module RFinvoice
  class Invoice < Model
    STRINGS_0_35 = [
      'SellerOrganisationUnitNumber'.freeze,
      'SellerSiteCode'.freeze,
      'SellerContactPersonName'.freeze,
      'InvoiceRecipientOrganisationUnitNumber'.freeze,
      'InvoiceRecipientSiteCode'.freeze,
      'InvoiceRecipientContactPersonName'.freeze,
      'BuyerOrganisationUnitNumber'.freeze,
      'BuyerSiteCode'.freeze,
      'BuyerContactPersonName'.freeze,
      'DeliveryOrganisationUnitNumber'.freeze,
      'DeliverySiteCode'.freeze,
      'DeliveryContactPersonName'.freeze,
      'LayOutIdentifier'.freeze,
      'InvoiceSegmentIdentifier'.freeze
    ]

    STRINGS_0_512 = [
      'VirtualBankBarcode'.freeze,
      'InvoiceUrlNameText'.freeze,
      'InvoiceUrlText'.freeze,
      'StorageUrlText'.freeze,
      'ControlStampText'.freeze,
      'AcceptanceStampText'.freeze
    ]

    attribute :version, ::String, default: '2.01'.freeze
    attribute :xmlns_xsi, ::String, default: 'http://www.w3.org/2001/XMLSchema-instance'.freeze
    attribute :xsi_nonamespace, ::String, default: 'Finvoice2.01.xsd'.freeze

    init_strings_0_35(STRINGS_0_35)
    init_strings_0_512(STRINGS_0_512)

    #
    # Childs
    #
    attribute :seller_party_details, ::RFinvoice::SellerPartyDetails,
              required: true, default: ->(_instance, _attribute) { ::RFinvoice::SellerPartyDetails.new }

    attribute :seller_contact_person_function, ::RFinvoice::Type::Array0_2[::RFinvoice::Type::String0_35], required: false
    attribute :seller_contact_person_department, ::RFinvoice::Type::Array0_2[::RFinvoice::Type::String0_35], required: false

    init_child_objects %w(SellerCommunicationDetails MessageTransmissionDetails SellerInformationDetails)

    def to_xml
      decorator.to_xml
    end
  end
end
