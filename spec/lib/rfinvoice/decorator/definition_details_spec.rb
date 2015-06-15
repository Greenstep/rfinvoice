require 'spec_helper'

RSpec.describe ::RFinvoice::Decorator::DefinitionDetails do
  let(:document) { Fabricate.build(:definition_details) }
  subject { described_class.new(document) }
  it_should_behave_like 'a modelized properties', %w(DefinitionHeaderText), 'DefinitionHeaderText'
  it_should_behave_like 'a simple properties', %w(DefinitionValue)
end
