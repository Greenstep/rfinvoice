module RFinvoice
  class SubRowDefinitionDetails < Model
    add_properties_with_type %w(SubRowDefinitionHeaderText), ::RFinvoice::DefinitionHeaderText, required: false
    add_quantity_properties '70', %w(SubRowDefinitionValue), required: false
  end
end
