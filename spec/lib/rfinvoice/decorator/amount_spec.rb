require 'spec_helper'

RSpec.describe ::RFinvoice::Decorator::Amount do
  let(:document) { Fabricate.build(:amount) }
  subject { described_class.new(document) }
  it { is_expected.to have_representable_property(:value).with_content(true) }
  it { is_expected.to have_representable_property(:currency).as('AmountCurrencyIdentifier').with_attribute }
end