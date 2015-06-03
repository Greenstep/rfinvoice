module RFinvoice
  class SellerPartyDetails < Model
    STRINGS_0_35 = %w(SellerPartyIdentifier SellerOrganisationTaxCode )
    STRINGS_0_512 = %w(SellerPartyIdentifierUrlText SellerOrganisationTaxCodeUrlText)

    init_strings_0_35(STRINGS_0_35)
    init_strings_0_512(STRINGS_0_512)

    attribute :seller_code, ::RFinvoice::PartyIdentifier, required: false
    attribute :seller_organisation_name, ::RFinvoice::Type::Array1_1000[::RFinvoice::Type::String2_70], required: true
    attribute :seller_organisation_department, ::RFinvoice::Type::Array0_2[::RFinvoice::Type::String0_35], required: false
  end
end
