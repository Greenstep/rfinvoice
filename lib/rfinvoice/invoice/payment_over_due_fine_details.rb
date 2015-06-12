module RFinvoice
  class PaymentOverDueFineDetails < Model
    add_simple_collections %w(PaymentOverDueFineFreeText), ::RFinvoice::Type::Array0_3[::RFinvoice::Type::String0_70], required: false
    add_percentage_properties %w(PaymentOverDueFinePercent), required: false
    add_amount_properties %w(PaymentOverDueFixedAmount), required: false
  end
end
