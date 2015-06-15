Fabricator(:epi_charge, from: ::RFinvoice::EpiCharge) do
  initialize_with { @_klass.new to_hash }
  charge_option { %w(SHA OUR BEN SLEV).sample }
end
