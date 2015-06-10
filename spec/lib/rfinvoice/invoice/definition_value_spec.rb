require 'spec_helper'

RSpec.describe RFinvoice::DefinitionValue do
  subject { Fabricate(:definition_value) }
  it { is_expected.to have_virtus_attribute(:value).of_type(::RFinvoice::Type::String0_70).with_required(true) }
  it { is_expected.to have_virtus_attribute(:quantity_unit_code).of_type(::RFinvoice::Type::Token0_14).with_required(false) }
end
