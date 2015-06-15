module RFinvoice
  class SellerAccountDetails < Model
    add_properties_with_type %w(SellerAccountID), ::RFinvoice::AccountID, required: false
    add_properties_with_type %w(SellerBic), ::RFinvoice::AccountBic, required: false
  end
end
