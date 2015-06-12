module RFinvoice
  class PartyIdentifier < Model
    attribute :value, ::RFinvoice::Type::String0_35, required: true
    attribute :identifier_type, ::RFinvoice::Type::IdentifierType, required: true
  end
end
