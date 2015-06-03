require 'spec_helper'

RSpec.describe ::RFinvoice::Decorator::SellerPartyDetails do
  let(:document) { ::RFinvoice::SellerPartyDetails.new(seller_organisation_name: ['Test Organization']) }
  subject { described_class.new(document) }
end