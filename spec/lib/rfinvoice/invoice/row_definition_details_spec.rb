require 'spec_helper'

RSpec.describe ::RFinvoice::RowDefinitionDetails do
  subject { Fabricate.build(:row_definition_details) }
  it_should_behave_like 'a typed attributes', %w(RowDefinitionValue), 'Quantity70', false
  it_should_behave_like 'a typed attributes', %w(RowDefinitionHeaderText), 'DefinitionHeaderText', false
end
