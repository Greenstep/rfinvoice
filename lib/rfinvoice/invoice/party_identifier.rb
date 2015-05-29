module RFinvoice
  class PartyIdentifier < Model
    attribute :value, ::RFinvoice::Type::String0_35, required: false
    attribute :identifier_type, ::RFinvoice::Type::Identifier, required: false
  end
end