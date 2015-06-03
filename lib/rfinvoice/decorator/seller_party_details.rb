module RFinvoice
  module Decorator
    class SellerPartyDetails < Base
      ::RFinvoice::SellerPartyDetails::STRINGS_0_35.each do |key|
        property key.underscore.to_sym, as: key
      end

      ::RFinvoice::SellerPartyDetails::STRINGS_0_512.each do |key|
        property key.underscore.to_sym, as: key
      end

      property :seller_code, decorator: ::RFinvoice::Decorator::PartyIdentifier, as: 'SellerCode'

      collections %w(SellerOrganisationName SellerOrganisationDepartment)
    end
  end
end
