module RFinvoice
  class DefinitionDetails < Model
    add_properties_with_type %w(DefinitionHeaderText), ::RFinvoice::DefinitionHeaderText, required: false
    add_quantity_properties '70', %w(DefinitionValue), required: false
  end
end
