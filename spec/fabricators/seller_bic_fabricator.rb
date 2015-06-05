Fabricator(:seller_bic, from: ::RFinvoice::SellerBic) do
  initialize_with { @_klass.new Fabricate.attributes_for(:account_bic) }
end
