require 'spec_helper'

RSpec.describe RFinvoice::DefinitionHeaderText do
  subject { Fabricate(:definition_header_text) }
  it { is_expected.to have_virtus_attribute(:value).of_type(::RFinvoice::Type::String0_70).with_required(false) }
  it { is_expected.to have_virtus_attribute(:code).of_type(::RFinvoice::Type::Token1_20).with_required(false) }
end
