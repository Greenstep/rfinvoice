require 'spec_helper'

RSpec.describe ::RFinvoice::Decorator::EpiCharge do
  let(:document) { Fabricate.build(described_class.name.demodulize.underscore.to_sym) }
  subject { described_class.new(document) }
  it { is_expected.to have_representable_property(:charge_option).as('ChargeOption').with_attribute }
end