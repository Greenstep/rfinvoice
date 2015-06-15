require 'spec_helper'

RSpec.describe ::RFinvoice::Decorator::EpiRemittanceInfoIdentifier do
  let(:document) { Fabricate.build(described_class.name.demodulize.underscore.to_sym) }
  subject { described_class.new(document) }
  it { is_expected.to have_representable_property(:value).with_content(true) }
  it { is_expected.to have_representable_property(:scheme).as('IdentificationSchemeName').with_attribute }
end