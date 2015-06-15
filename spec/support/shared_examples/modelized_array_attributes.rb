RSpec.shared_examples 'a modelized array attributes' do |keys, array_type, type, required|
  keys.each do |key|
    it { is_expected.to have_virtus_attribute(key.underscore).of_type(array_type["RFinvoice::#{type}".constantize]).with_required(required) }
  end
end
