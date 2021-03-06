RSpec.shared_examples 'a modelized attribute' do |key, type, required|
  it { is_expected.to have_virtus_attribute(key.underscore).of_type(::RFinvoice.const_get(type)).with_required(required) }
end

RSpec.shared_examples 'a modelized attributes' do |array, type, required|
  array.each do |key|
    it { is_expected.to have_virtus_attribute(key.underscore).of_type(::RFinvoice.const_get(type)).with_required(required) }
  end
end
