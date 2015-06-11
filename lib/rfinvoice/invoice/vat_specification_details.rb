require 'rfinvoice/invoice/vat_base_amount'
require 'rfinvoice/invoice/vat_rate_amount'

module RFinvoice
  class VatSpecificationDetails < Model
    add_complex_properties %w(VatBaseAmount), required: false
    add_simple_properties ::RFinvoice::Type::Percentage, %w(VatRatePercent), required: false
    add_string_simple_properties '0_10', %w(VatCode), required: false
    add_complex_properties %w(VatRateAmount), required: false
    add_simple_collections %w(VatFreeText), ::RFinvoice::Type::Array0_3[::RFinvoice::Type::String0_70], required: false
  end
end
