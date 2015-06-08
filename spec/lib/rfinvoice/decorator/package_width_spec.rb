require 'spec_helper'

RSpec.describe ::RFinvoice::Decorator::PackageWidth do
  let(:document) { Fabricate(:package_width) }
  subject { described_class.new(document) }
  it { is_expected.to have_representable_property(:value).with_content(true) }
  it { is_expected.to have_representable_property(:quantity_unit_code).as('QuantityUnitCode').with_attribute }
end