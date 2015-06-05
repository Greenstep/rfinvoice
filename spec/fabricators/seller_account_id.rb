Fabricator(:seller_account_id, from: ::RFinvoice::SellerAccountID) do
  initialize_with { @_klass.new Fabricate.attributes_for(:account_id) }
end
