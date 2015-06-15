module RFinvoice
  class RowDefinitionDetails < Model
    add_properties_with_type %w(RowDefinitionHeaderText), ::RFinvoice::DefinitionHeaderText, required: false
    add_quantity_properties '70', %w(RowDefinitionValue), required: false
  end
end
