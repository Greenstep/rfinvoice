RSpec.shared_examples 'a modelized collections' do |keys, model|
  keys.each do |key|
    it { is_expected.to have_representable_collection(key.underscore).as(key).extends("RFinvoice::Decorator::#{model}".constantize) }
  end
end
