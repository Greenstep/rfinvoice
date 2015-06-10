RSpec.shared_examples 'a amount model' do
  subject { Fabricate.build(described_class.name.demodulize.underscore.to_sym) }
  it { is_expected.to have_virtus_attribute(:value).of_type(::RFinvoice::Type::MonetaryAmount).with_required(true) }
  it { is_expected.to have_virtus_attribute(:currency).of_type(::RFinvoice::Type::Token3).with_required(true) }
end