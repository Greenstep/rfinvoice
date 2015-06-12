require 'spec_helper'

RSpec.describe ::RFinvoice::Decorator::PackageDetails do
  let(:document) { Fabricate.build(:package_details) }
  subject { described_class.new(document) }
  it_should_behave_like 'a modelized properties', %w(PackageLength PackageWidth PackageHeight PackageWeight), 'Quantity14'
  it_should_behave_like 'a modelized properties', %w(PackageNetWeight PackageVolume TransportCarriageQuantity), 'Quantity14'
end
