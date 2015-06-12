require 'spec_helper'

RSpec.describe ::RFinvoice::PackageDetails do
  subject { Fabricate.build(:package_details) }
  it_should_behave_like 'a modelized attributes', %w(PackageLength PackageWidth PackageHeight PackageWeight), 'Quantity14', false
  it_should_behave_like 'a modelized attributes', %w(PackageNetWeight PackageVolume TransportCarriageQuantity PackageWeight), 'Quantity14', false
end
