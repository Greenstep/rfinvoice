module RFinvoice
  class RowDeliveryDetails < Model
    add_string_simple_properties '0_70', %w(RowTerminalAddressText), required: false
    add_string_simple_properties '0_35', %w(RowWaybillIdentifier RowWaybillTypeCode RowClearanceIdentifier RowDeliveryNoteIdentifier RowDelivererIdentifier), required: false
    add_simple_collections %w(RowDelivererName), ::RFinvoice::Type::Array0_3[::RFinvoice::Type::String0_35], required: false
    add_string_simple_properties '0_35', %w(RowDelivererCountryCode RowDelivererCountryName RowModeOfTransportIdentifier RowCarrierName), required: false
    add_string_simple_properties '0_35', %w(RowVesselName RowLocationIdentifier), required: false
    add_date_properties %w(RowTransportInformationDate), required: false
    add_string_simple_properties '0_35', %w(RowCountryOfOrigin RowCountryOfDestinationName RowDestinationCountryCode RowPlaceOfDischarge), required: false
    add_simple_collections %w(RowFinalDestinationName), ::RFinvoice::Type::Array0_3[::RFinvoice::Type::String0_35], required: false
    add_string_simple_properties '0_35', %w(RowCustomsInfo RowManufacturerArticleIdentifier RowManufacturerIdentifier), required: false
    add_simple_collections %w(RowManufacturerName), ::RFinvoice::Type::Array0_3[::RFinvoice::Type::String0_35], required: false
    add_string_simple_properties '0_35', %w(RowManufacturerCountryCode RowManufacturerCountryName RowManufacturerOrderIdentifier), required: false
  end
end
