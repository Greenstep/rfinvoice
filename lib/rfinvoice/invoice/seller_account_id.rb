module RFinvoice
  class SellerAccountID < Model
    attribute :value, ::RFinvoice::Type::NMToken2_25, required: true
    attribute :identification_scheme_name, ::RFinvoice::Type::AccountNumberScheme, required: true
  end
end
