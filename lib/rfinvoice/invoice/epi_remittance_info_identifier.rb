module RFinvoice
  class EpiRemittanceInfoIdentifier < Model
    attribute :value, ::RFinvoice::Type::EpiRemittanceInfoIdentifierPatternType, required: false
    attribute :scheme, ::RFinvoice::Type::EpiRemittanceInfoIdentifierSchemeType, required: false
  end
end
