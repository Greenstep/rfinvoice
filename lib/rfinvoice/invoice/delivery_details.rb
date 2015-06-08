require 'rfinvoice/invoice/shipment_party_details'
require 'rfinvoice/invoice/delivery_period_details'
require 'rfinvoice/invoice/delivery_date'
require 'rfinvoice/invoice/transport_information_date'
require 'rfinvoice/invoice/package_details'

module RFinvoice
  class DeliveryDetails < Model
    add_string_simple_properties '0_35', %w(WaybillIdentifier WaybillTypeCode ClearanceIdentifier DeliveryNoteIdentifier), required: false
    add_string_simple_properties '0_35', %w(DelivererIdentifier DelivererCountryName ModeOfTransportIdentifier), required: false
    add_string_simple_properties '0_35', %w(CarrierName VesselName LocationIdentifier CountryOfOrigin), required: false
    add_string_simple_properties '0_35', %w(CountryOfDestinationName ManufacturerCountryName ManufacturerOrderIdentifier), required: false
    add_string_simple_properties '0_35', %w(DeliveryCommunicationDetails ManufacturerIdentifier), required: false
    add_string_simple_properties '0_512', %w(TerminalAddressText DeliveryMethodText DeliveryTermsText), required: false
    add_string_simple_properties '1_4', %w(DeliveryTermsCode), required: false
    add_nmtoken_simple_properties '2', %w(DelivererCountryCode DestinationCountryCode ManufacturerCountryCode), required: false
    add_complex_properties %w(ShipmentPartyDetails DeliveryPeriodDetails DeliveryDate TransportInformationDate), required: false
    add_complex_properties %w(PackageDetails), required: false
    add_simple_collections %w(PlaceOfDischarge FinalDestinationName ManufacturerName DelivererName), ::RFinvoice::Type::Array0_3[::RFinvoice::Type::String0_35], required: false
  end
end
