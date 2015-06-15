Fabricator(:epi_identification_details, from: ::RFinvoice::EpiIdentificationDetails) do
  initialize_with { @_klass.new to_hash }
  epi_date { Fabricate(:date) }
  epi_reference { ::SecureRandom.hex(16) }
  epi_url { ::FFaker::Internet.http_url.sub('http://', '') }
  epi_email { ::FFaker::Internet.email }
  epi_order_info { ::FFaker::Lorem.words }
end
