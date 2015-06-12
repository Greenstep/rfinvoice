module RFinvoice
  class VatSpecificationDetails < Model
    add_amount_properties %w(VatBaseAmount), required: false
    add_simple_properties ::RFinvoice::Type::PercentageType, %w(VatRatePercent), required: false
    add_string_simple_properties '0_10', %w(VatCode), required: false
    add_amount_properties %w(VatRateAmount), required: false
    add_simple_collections %w(VatFreeText), ::RFinvoice::Type::Array0_3[::RFinvoice::Type::String0_70], required: false
  end
end
