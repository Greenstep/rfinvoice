module RFinvoice
  class DefinitionHeaderText < Model
    attribute :value, ::RFinvoice::Type::String0_70, required: false
    attribute :code, ::RFinvoice::Type::Token1_20, required: false
  end
end
