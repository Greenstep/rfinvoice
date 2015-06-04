require 'spec_helper'

RSpec.describe ::RFinvoice::Decorator::SellerCommunicationDetails do
  let(:document) { ::RFinvoice::SellerCommunicationDetails.new }
  subject { described_class.new(document) }
  %w(SellerPhoneNumberIdentifier SellerEmailaddressIdentifier).each do |key|
    it { is_expected.to have_representable_property(key.underscore).as(key) }
  end
end
