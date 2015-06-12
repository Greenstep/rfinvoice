require 'rfinvoice/invoice/shipment_party_details'
require 'rfinvoice/invoice/delivery_period_details'
require 'rfinvoice/invoice/package_details'

module RFinvoice
  class DeliveryDetails < Model
    add_date_properties %w(DeliveryDate), required: false
    add_modelized_properties %w(DeliveryPeriodDetails ShipmentPartyDetails), required: false
    add_string_simple_properties '0_512', %w(DeliveryMethodText DeliveryTermsText), required: false
    add_string_simple_properties '1_4', %w(DeliveryTermsCode), required: false
    add_string_simple_properties '0_512', %w(TerminalAddressText), required: false
    add_string_simple_properties '0_35', %w(WaybillIdentifier WaybillTypeCode ClearanceIdentifier), required: false
    add_string_simple_properties '0_35', %w(DeliveryNoteIdentifier DelivererIdentifier), required: false
    add_simple_collections %w(DelivererName), ::RFinvoice::Type::Array0_3[::RFinvoice::Type::String0_35], required: false
    add_nmtoken_simple_properties '2', %w(DelivererCountryCode), required: false
    add_string_simple_properties '0_35', %w(DelivererCountryName ModeOfTransportIdentifier), required: false
    add_string_simple_properties '0_35', %w(CarrierName VesselName LocationIdentifier), required: false
    add_date_properties %w(TransportInformationDate), required: false
    add_string_simple_properties '0_35', %w(CountryOfOrigin CountryOfDestinationName), required: false
    add_nmtoken_simple_properties '2', %w(DestinationCountryCode), required: false
    add_simple_collections %w(PlaceOfDischarge FinalDestinationName), ::RFinvoice::Type::Array0_3[::RFinvoice::Type::String0_35], required: false
    add_string_simple_properties '0_35', %w(ManufacturerIdentifier), required: false
    add_simple_collections %w(ManufacturerName), ::RFinvoice::Type::Array0_3[::RFinvoice::Type::String0_35], required: false
    add_nmtoken_simple_properties '2', %w(ManufacturerCountryCode), required: false
    add_string_simple_properties '0_35', %w(ManufacturerCountryName ManufacturerOrderIdentifier), required: false
    add_modelized_properties %w(PackageDetails), required: false
  end
end
