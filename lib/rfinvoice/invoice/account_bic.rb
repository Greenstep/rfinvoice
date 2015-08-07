module RFinvoice
  class AccountBic < Model
    attribute :value, ::RFinvoice::Type::NMToken8_11, required: false
    attribute :identification_scheme_name, ::RFinvoice::Type::BicSchemeType, required: false
  end
end
