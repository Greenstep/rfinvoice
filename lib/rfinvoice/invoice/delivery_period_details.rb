module RFinvoice
  class DeliveryPeriodDetails < Model
    add_complex_properties %w(StartDate EndDate), required: true
  end
end
