require 'spec_helper'

RSpec.describe ::RFinvoice::Decorator::DefinitionHeaderText do
  let(:document) { Fabricate(:definition_header_text) }
  subject { described_class.new(document) }
  it { is_expected.to have_representable_property(:value).with_content(true) }
  it { is_expected.to have_representable_property(:code).as('DefinitionCode').with_attribute }
end