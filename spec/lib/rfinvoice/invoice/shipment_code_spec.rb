require 'spec_helper'

RSpec.describe ::RFinvoice::ShipmentCode do
  subject { Fabricate.build(:shipment_code) }
  it { is_expected.to have_virtus_attribute(:value).of_type(::RFinvoice::Type::String0_35).with_required(false) }
  it { is_expected.to have_virtus_attribute(:identifier_type).of_type(::RFinvoice::Type::IdentifierType).with_required(false) }
end
