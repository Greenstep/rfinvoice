module RFinvoice
  class DeliveryCommunicationDetails < Model
    add_string_simple_properties '0_35', %w(DeliveryPhoneNumberIdentifier), required: false
    add_string_simple_properties '0_70', %w(DeliveryEmailaddressIdentifier), required: false
  end
end