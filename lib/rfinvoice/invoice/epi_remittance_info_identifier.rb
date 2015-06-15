module RFinvoice
  class EpiRemittanceInfoIdentifier < Model
    attribute :value, ::RFinvoice::Type::EpiRemittanceInfoIdentifierPatternType, required: true
    attribute :scheme, ::RFinvoice::Type::EpiRemittanceInfoIdentifierSchemeType, required: true
  end
end
