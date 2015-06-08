module RFinvoice
  class BuyerCommunicationDetails < Model
    add_string_simple_properties '0_35', %w(BuyerPhoneNumberIdentifier), required: false
    add_string_simple_properties '0_70', %w(BuyerEmailaddressIdentifier), required: false
  end
end