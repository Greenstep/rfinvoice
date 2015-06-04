module RFinvoice
  class SellerCommunicationDetails < Model
    add_string_simple_properties '0_35', %w(SellerPhoneNumberIdentifier), required: false
    add_string_simple_properties '0_70', %w(SellerEmailaddressIdentifier), required: false
  end
end
