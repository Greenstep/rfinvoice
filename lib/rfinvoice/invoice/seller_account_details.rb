module RFinvoice
  class SellerAccountDetails < Model
    attribute :seller_account_id, ::RFinvoice::SellerAccountID, required: true
  end
end
