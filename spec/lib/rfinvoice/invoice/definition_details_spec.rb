require 'spec_helper'

RSpec.describe ::RFinvoice::DefinitionDetails do
  subject { Fabricate.build(:definition_details) }
  it_should_behave_like 'a typed attributes', %w(DefinitionValue), 'Quantity70', false
  it_should_behave_like 'a typed attributes', %w(DefinitionHeaderText), 'DefinitionHeaderText', false
end
