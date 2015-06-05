RSpec.shared_examples 'a simple collections' do |keys|
  keys.each do |key|
    it { is_expected.to have_representable_collection(key.underscore).as(key) }
  end
end
