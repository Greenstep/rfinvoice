Fabricator(:seller_account_details, from: ::RFinvoice::SellerAccountDetails) do
  initialize_with { @_klass.new to_hash }
  seller_account_id
  seller_bic
end
