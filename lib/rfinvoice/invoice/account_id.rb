module RFinvoice
  class AccountID < Model
    attribute :value, ::RFinvoice::Type::NMToken2_35, required: false
    attribute :identification_scheme_name, ::RFinvoice::Type::AccountNumberSchemeType, required: false
  end
end
