Fabricator(:sub_row_definition_details, from: ::RFinvoice::SubRowDefinitionDetails) do
  initialize_with { @_klass.new to_hash }
  sub_row_definition_header_text { Fabricate(:definition_header_text) }
  sub_row_definition_value { Fabricate(:quantity70) }
end
