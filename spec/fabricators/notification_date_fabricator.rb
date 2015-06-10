Fabricator(:notification_date, from: ::RFinvoice::NotificationDate) do
  initialize_with { @_klass.new to_hash }
  value { ::Date.today }
end
