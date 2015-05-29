module RFinvoice
  class SellerPartyDetails < Model
    STRINGS_0_35 = %w(SellerPartyIdentifier SellerOrganisationTaxCode )
    STRINGS_0_512 = %w(SellerPartyIdentifierUrlText SellerOrganisationTaxCodeUrlText)
    init_strings_0_35
    init_strings_0_512

    attribute :seller_code, ::RFinvoice::Type::String0_35
  end
end