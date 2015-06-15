module RFinvoice
  class EpiBfiPartyDetails < Model
    add_properties_with_type %w(EpiBfiIdentifier), ::RFinvoice::AccountBic, required: false
    add_string_simple_properties '1_35', %w(EpiBfiName), required: false
  end
end
