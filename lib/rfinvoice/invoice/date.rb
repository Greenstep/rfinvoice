module RFinvoice
  class Date < Model
    attribute :value, ::Date, required: true
    attribute :format, ::String, required: true, default: 'CCYYMMDD'
  end
  class SellerVatRegistrationDate < Date; end
end


