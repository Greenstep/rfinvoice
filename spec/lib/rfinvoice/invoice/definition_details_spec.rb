require 'spec_helper'

RSpec.describe ::RFinvoice::DefinitionDetails do
  subject { Fabricate.build(:definition_details) }
  it_should_behave_like 'a complex attributes', %w(DefinitionValue DefinitionHeaderText), false
end
