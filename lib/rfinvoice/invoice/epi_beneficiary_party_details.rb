module RFinvoice
  class EpiBeneficiaryPartyDetails < Model
    add_token_simple_properties '2_35', %w(EpiNameAddressDetails), required: false
    add_nmtoken_simple_properties '8_11', %w(EpiBei), required: false
    add_properties_with_type %w(EpiAccountID), ::RFinvoice::AccountID, required: true
  end
end
