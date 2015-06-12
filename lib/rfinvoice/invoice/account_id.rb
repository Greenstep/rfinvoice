module RFinvoice
  class AccountID < Model
    attribute :value, ::RFinvoice::Type::NMToken2_35, required: true
    attribute :identification_scheme_name, ::RFinvoice::Type::AccountNumberSchemeType, required: true
  end
end
