module RFinvoice
  class Invoice < Model
    HEADER = '<Finvoice Version="2.01" xmlns:xsi=http://www.w3.org/2001/XMLSchema-instance xsi:noNamespaceSchemaLocation="Finvoice2.01.xsd">'.freeze

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
      'AcceptanceStampText'.freeze,
    ]

    attribute :version, ::String, default: '2.01'

    init_strings_0_35
    init_strings_0_512

    #
    # Childs
    #

    # SellerPartyDetails
    attribute :seller_party_details, ::RFinvoice::SellerPartyDetails,
              required: true, default: ::RFinvoice::SellerPartyDetails.new
  end
end