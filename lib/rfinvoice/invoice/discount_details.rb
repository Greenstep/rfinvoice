module RFinvoice
  class DiscountDetails < Model
    add_string_simple_properties '1_70', %w(FreeText), required: false
    add_simple_properties ::RFinvoice::Type::Percentage, %w(Percent), required: false
    add_modelized_properties %w(Amount), required: false
  end
end
