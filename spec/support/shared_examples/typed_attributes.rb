RSpec.shared_examples 'a typed attributes' do |keys, type, required|
  keys.each do |key|
    it { is_expected.to have_virtus_attribute(key.underscore).of_type(::RFinvoice::Type.const_get(type)).with_required(required) }
  end
end
