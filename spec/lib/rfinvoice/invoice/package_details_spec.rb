require 'spec_helper'

RSpec.describe ::RFinvoice::PackageDetails do
  subject { Fabricate.build(:package_details) }
  it_should_behave_like 'a complex attributes', %w(PackageLength PackageWidth PackageHeight PackageWeight), false
  it_should_behave_like 'a complex attributes', %w(PackageNetWeight PackageVolume TransportCarriageQuantity PackageWeight), false
end
