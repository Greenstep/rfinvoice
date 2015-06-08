module RFinvoice
  class Date < Model
    attribute :value, ::Date, required: true
    attribute :format, ::String, required: true, default: 'CCYYMMDD'
  end
end
