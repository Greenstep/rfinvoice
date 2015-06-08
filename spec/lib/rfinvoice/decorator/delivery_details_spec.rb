require 'spec_helper'

RSpec.describe ::RFinvoice::Decorator::DeliveryDetails do
  let(:document) { Fabricate.build(:delivery_details) }
  subject { described_class.new(document) }
  it_should_behave_like 'a decorated properties', %w(ShipmentPartyDetails DeliveryPeriodDetails DeliveryDate TransportInformationDate PackageDetails)
  it_should_behave_like 'a simple properties', %w(WaybillIdentifier WaybillTypeCode ClearanceIdentifier DeliveryNoteIdentifier)
  it_should_behave_like 'a simple properties', %w(DelivererIdentifier DelivererCountryName ModeOfTransportIdentifier)
  it_should_behave_like 'a simple properties', %w(CarrierName VesselName LocationIdentifier CountryOfOrigin)
  it_should_behave_like 'a simple properties', %w(CountryOfDestinationName ManufacturerCountryName ManufacturerOrderIdentifier)
  it_should_behave_like 'a simple properties', %w(TerminalAddressText DeliveryMethodText DeliveryTermsText)
  it_should_behave_like 'a simple properties', %w(DeliveryTermsCode ManufacturerIdentifier)
  it_should_behave_like 'a simple properties', %w(DelivererCountryCode DestinationCountryCode ManufacturerCountryCode)
  it_should_behave_like 'a simple collections', %w(PlaceOfDischarge FinalDestinationName ManufacturerName DelivererName)
end
