RSpec.shared_examples 'a typed attributes' do |keys, type, required|
  klass = "RFinvoice::#{type}".safe_constantize || "RFinvoice::Type::#{type}".safe_constantize
  keys.each do |key|
    it { is_expected.to have_virtus_attribute(key.underscore).of_type(klass).with_required(required) }
  end
end
