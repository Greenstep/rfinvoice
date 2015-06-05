require 'spec_helper'

RSpec.describe ::RFinvoice::Decorator::SellerInformationDetails do
  let(:document) { Fabricate.build(:seller_information_details) }
  subject { described_class.new(document) }
  it_should_behave_like 'a simple properties', %w(SellerHomeTownName SellerVatRegistrationText SellerTaxRegistrationText SellerPhoneNumber SellerFaxNumber SellerWebaddressIdentifier SellerCommonEmailaddressIdentifier SellerFreeText)
  it_should_behave_like 'a decorated collections', %w(SellerAccountDetails InvoiceRecipientDetails)
  it_should_behave_like 'a decorated properties', %w(SellerOfficialPostalAddressDetails SellerVatRegistrationDate)
end