Fabricator(:row_definition_details, from: ::RFinvoice::RowDefinitionDetails) do
  initialize_with { @_klass.new to_hash }
  row_definition_header_text { Fabricate(:definition_header_text) }
  row_definition_value { Fabricate(:quantity70) }
end
