require 'spec_helper'

RSpec.describe ::RFinvoice::Decorator::PackageDetails do
  let(:document) { Fabricate.build(:package_details) }
  subject { described_class.new(document) }
  it_should_behave_like 'a decorated properties', %w(PackageLength PackageWidth PackageHeight PackageWeight)
  it_should_behave_like 'a decorated properties', %w(PackageNetWeight PackageVolume TransportCarriageQuantity)
end
