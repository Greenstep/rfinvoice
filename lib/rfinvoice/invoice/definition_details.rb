require 'rfinvoice/invoice/definition_value'
require 'rfinvoice/invoice/definition_header_text'

module RFinvoice
  class DefinitionDetails < Model
    add_complex_properties %w(DefinitionHeaderText DefinitionValue), required: false
  end
end