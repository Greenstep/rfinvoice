module RFinvoice
  class EpiIdentificationDetails < Model
    add_date_properties %w(EpiDate), required: true
    add_nmtoken_simple_properties '0_35', %w(EpiReference), required: true
    add_nmtoken_simple_properties '0_512', %w(EpiUrl), required: false
    add_string_simple_properties '0_70', %w(EpiEmail), required: false
    add_simple_collections %w(EpiOrderInfo), ::RFinvoice::Type::Array0_7[::RFinvoice::Type::Token0_70], required: false
  end
end
