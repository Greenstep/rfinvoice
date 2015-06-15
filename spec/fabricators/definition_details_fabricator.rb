Fabricator(:definition_details, from: ::RFinvoice::DefinitionDetails) do
  initialize_with { @_klass.new to_hash }
  definition_header_text
  definition_value { Fabricate(:quantity70) }
end
