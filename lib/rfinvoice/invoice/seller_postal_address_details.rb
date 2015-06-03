module RFinvoice
  class SellerPostalAddressDetails < Model
    STRINGS_2_35 = %w(SellerTownName SellerPostCodeIdentifier)
    STRINGS_0_35 = %w(CountryName SellerPostOfficeBoxIdentifier SellerOrganisationUnitNumber SellerSiteCode SellerContactPersonName)
    attribute :seller_street_name, ::RFinvoice::Type::Array1_3[::RFinvoice::Type::String2_35], required: true

    init_strings_2_35(STRINGS_2_35, true)
    init_strings_0_35(STRINGS_0_35)
  end
end