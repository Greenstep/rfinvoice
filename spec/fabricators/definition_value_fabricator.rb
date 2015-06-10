Fabricator(:definition_value, class_name: ::RFinvoice::DefinitionValue) do
  initialize_with { @_klass.new Fabricate.attributes_for(:quantity70) }
  quantity_unit_code { %w(kg m kwh/h).sample }
end
