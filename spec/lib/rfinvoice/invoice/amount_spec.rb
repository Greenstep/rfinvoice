require 'spec_helper'

RSpec.describe ::RFinvoice::Amount do
  subject { Fabricate.build(described_class.name.demodulize.underscore.to_sym) }
  it { is_expected.to have_virtus_attribute(:value).of_type(::RFinvoice::Type::MonetaryAmountType).with_required(false) }
  it { is_expected.to have_virtus_attribute(:currency).of_type(::RFinvoice::Type::Token3).with_required(false) }
end
