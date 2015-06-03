module RFinvoice
  class SellerInformationDetails < Model
    init_strings_0_35 %w(SellerHomeTownName SellerVatRegistrationText SellerTaxRegistrationText SellerPhoneNumber SellerFaxNumber SellerWebaddressIdentifier)
    init_strings_0_70 %w(SellerCommonEmailaddressIdentifier)
    init_strings_0_512 %w(SellerFreeText)
    init_dates %w(SellerVatRegistrationDate)
  end
end
