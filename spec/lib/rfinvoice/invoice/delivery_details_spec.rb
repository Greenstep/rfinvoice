require 'spec_helper'

RSpec.describe ::RFinvoice::DeliveryDetails do
  subject { Fabricate.build(:delivery_details) }
  it_should_behave_like 'a complex attributes', %w(ShipmentPartyDetails DeliveryPeriodDetails DeliveryDate TransportInformationDate), false
  it_should_behave_like 'a complex attributes', %w(PackageDetails), false
  it_should_behave_like 'a typed attributes', %w(WaybillIdentifier WaybillTypeCode ClearanceIdentifier DeliveryNoteIdentifier), 'String0_35', false
  it_should_behave_like 'a typed attributes', %w(DelivererIdentifier DelivererCountryName ModeOfTransportIdentifier), 'String0_35', false
  it_should_behave_like 'a typed attributes', %w(CarrierName VesselName LocationIdentifier CountryOfOrigin), 'String0_35', false
  it_should_behave_like 'a typed attributes', %w(CountryOfDestinationName ManufacturerCountryName ManufacturerOrderIdentifier), 'String0_35', false
  it_should_behave_like 'a typed attributes', %w(TerminalAddressText DeliveryMethodText DeliveryTermsText), 'String0_512', false
  it_should_behave_like 'a typed attributes', %w(DeliveryTermsCode), 'String1_4', false
  it_should_behave_like 'a typed attributes', %w(DelivererCountryCode DestinationCountryCode ManufacturerCountryCode), 'NMToken2', false
  it_should_behave_like 'a typed array attributes', %w(PlaceOfDischarge FinalDestinationName ManufacturerName DelivererName), ::RFinvoice::Type::Array0_3, 'String0_35', false
end
