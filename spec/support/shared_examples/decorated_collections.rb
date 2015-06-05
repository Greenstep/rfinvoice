RSpec.shared_examples 'a decorated collections' do |keys|
  keys.each do |key|
    it { is_expected.to have_representable_collection(key.underscore).as(key).extends(::RFinvoice::Decorator.const_get(key)) }
  end
end
