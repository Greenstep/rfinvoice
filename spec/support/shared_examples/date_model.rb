RSpec.shared_examples 'a date model' do
  subject { Fabricate.build(described_class.name.demodulize.underscore.to_sym) }
  it { is_expected.to have_virtus_attribute(:value).of_type(::Date).with_required(false) }
  it { is_expected.to have_virtus_attribute(:format).of_type(::String).with_required(false).with_default('CCYYMMDD') }
end
