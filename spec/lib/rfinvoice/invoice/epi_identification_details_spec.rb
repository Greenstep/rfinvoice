require 'spec_helper'

RSpec.describe ::RFinvoice::EpiIdentificationDetails do
  subject { Fabricate.build(:epi_identification_details) }
  it_should_behave_like 'a typed attributes', %w(EpiDate), 'Date', false
  it_should_behave_like 'a typed attributes', %w(EpiReference), 'NMToken0_35', false
  it_should_behave_like 'a typed attributes', %w(EpiUrl), 'NMToken0_512', false
  it_should_behave_like 'a typed attributes', %w(EpiEmail), 'String0_70', false
  it_should_behave_like 'a typed array attributes', %w(EpiOrderInfo), ::RFinvoice::Type::Array0_7, 'Token0_70', false
end
