require 'spec_helper'

RSpec.describe ::RFinvoice::Decorator::DefinitionDetails do
  let(:document) { Fabricate.build(:definition_details) }
  subject { described_class.new(document) }
  it_should_behave_like 'a decorated properties', %w(DefinitionValue DefinitionHeaderText)
end
