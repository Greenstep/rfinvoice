require 'rfinvoice/invoice/seller_account_details'

module RFinvoice
  class SellerOfficialPostalAddressDetails < Model
    init_strings_2_35 %w(SellerOfficialStreetName SellerOfficialTownName SellerOfficialPostCodeIdentifier), true
    init_strings_0_35 %w(CountryName)
    init_nmtokens_2 %w(CountryCode)
    init_child_objects %w(SellerAccountDetails)
  end
end
