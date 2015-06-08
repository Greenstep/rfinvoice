require 'spec_helper'

RSpec.describe ::RFinvoice::Decorator::EndDate do
  let(:document) { Fabricate(:end_date) }
  subject { described_class.new(document) }
  it { is_expected.to have_representable_property(:value).with_content(true) }
  it { is_expected.to have_representable_property(:format).as('Format').with_attribute }
end