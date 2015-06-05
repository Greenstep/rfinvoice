RSpec.shared_examples 'a modelized properties' do |keys, model|
  keys.each do |key|
    it { is_expected.to have_representable_property(key.underscore).as(key).extends("RFinvoice::Decorator::#{model}".constantize) }
  end
end
