module RFinvoice
  class DeliveryPeriodDetails < Model
    add_date_properties %w(StartDate EndDate), required: false
  end
end
