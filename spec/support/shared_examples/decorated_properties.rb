RSpec.shared_examples 'a decorated properties' do |keys|
  keys.each do |key|
    it { is_expected.to have_representable_property(key.underscore).as(key).extends(::RFinvoice::Decorator.const_get(key)) }
  end
end
