Fabricator(:party_identifier, from: ::RFinvoice::PartyIdentifier) do
  initialize_with { @_klass.new to_hash }
  value { ::SecureRandom.hex(17) }
  identifier_type { %w(DUNS GLN HETU EDI).sample }
end
