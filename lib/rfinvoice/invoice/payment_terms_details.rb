module RFinvoice
  class PaymentTermsDetails < Model
    add_simple_collections %w(PaymentTermsFreeText), ::RFinvoice::Type::Array0_2[::RFinvoice::Type::String0_70], required: false
    add_date_properties %w(InvoiceDueDate), required: false
  end
end
