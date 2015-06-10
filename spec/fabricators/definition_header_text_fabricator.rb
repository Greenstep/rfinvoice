Fabricator(:definition_header_text, from: ::RFinvoice::DefinitionHeaderText) do
  initialize_with { @_klass.new to_hash }
  value { 'expense claim from software' }
  code { 'ICD Code' }
end
