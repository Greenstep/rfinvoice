module RFinvoice
  class DeliveryPeriodDetails < Model
    add_date_properties %w(StartDate EndDate), required: true
  end
end
