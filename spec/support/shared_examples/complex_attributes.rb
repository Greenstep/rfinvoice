RSpec.shared_examples 'a complex attributes' do |keys, required|
  keys.each do |key|
    it { is_expected.to have_virtus_attribute(key.underscore).of_type(::RFinvoice.const_get(key)).with_required(required) }
  end
end