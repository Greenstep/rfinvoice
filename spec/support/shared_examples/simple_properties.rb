RSpec.shared_examples 'a simple properties' do |keys|
  keys.each do |key|
    it { is_expected.to have_representable_property(key.underscore).as(key) }
  end
end
