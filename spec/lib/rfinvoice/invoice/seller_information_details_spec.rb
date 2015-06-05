require 'spec_helper'

RSpec.describe ::RFinvoice::SellerInformationDetails do
  subject {
    described_class.new
  }
  it_should_behave_like 'a typed attributes', %w(SellerHomeTownName SellerVatRegistrationText SellerTaxRegistrationText SellerPhoneNumber SellerFaxNumber SellerWebaddressIdentifier), 'String0_35', false
  it_should_behave_like 'a typed attributes', %w(SellerCommonEmailaddressIdentifier), 'String0_70', false
  it_should_behave_like 'a typed attributes', %w(SellerFreeText), 'String0_512', false
  it_should_behave_like 'a complex attributes', %w(SellerOfficialPostalAddressDetails SellerVatRegistrationDate), false
  it_should_behave_like 'a complex attributes collection', %w(SellerAccountDetails InvoiceRecipientDetails), ::Array, false
end
