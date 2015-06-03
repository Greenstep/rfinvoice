module RFinvoice
  class SellerPostalAddressDetails < Model
    STRING_2_35 = %w(SellerTownName SellerPostCodeIdentifier)
    attribute :seller_street_name, ::RFinvoice::Type::Array1_3[::RFinvoice::Type::String2_35], required: true

  end
end