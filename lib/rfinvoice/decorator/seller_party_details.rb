require 'rfinvoice/decorator/seller_postal_address_details'
module RFinvoice
  module Decorator
    class SellerPartyDetails < Base
      collections %w(SellerOrganisationName SellerOrganisationDepartment)

      properties ::RFinvoice::SellerPartyDetails::STRINGS_0_35
      properties ::RFinvoice::SellerPartyDetails::STRINGS_0_512

      property :seller_code, decorator: ::RFinvoice::Decorator::PartyIdentifier, as: 'SellerCode'
      property :seller_postal_address_details, decorator: ::RFinvoice::Decorator::SellerPostalAddressDetails
    end
  end
end
