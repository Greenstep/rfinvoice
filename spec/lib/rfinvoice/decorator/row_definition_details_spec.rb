require 'spec_helper'

RSpec.describe ::RFinvoice::Decorator::RowDefinitionDetails do
  let(:document) { Fabricate.build(:row_definition_details) }
  subject { described_class.new(document) }
  it_should_behave_like 'a modelized properties', %w(RowDefinitionHeaderText), 'DefinitionHeaderText'
  it_should_behave_like 'a simple properties', %w(RowDefinitionValue)
end
