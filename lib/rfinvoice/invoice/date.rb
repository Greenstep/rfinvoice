module RFinvoice
  class Date < Model
    attribute :value, ::Date, required: false
    attribute :format, ::String, required: true, default: 'CCYYMMDD'
  end
end
