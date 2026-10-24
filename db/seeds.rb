[
  ['Kyle Geske', '204-644-4444', 'kgeske@rrc.ca', 'Manitoba'],
  ['Daisy Glutton', '204-555-1234', 'daisy.glutton@mailinator.com', 'Quebec'],
  ['Wally Glutton', '204-555-9887', 'wally.glutton@mailinator.com', 'Manitoba'],
  ['Missy Mismatch', '204-555-2342', nil, nil],
  ['Alex Morgan', '204-555-1111', nil, 'Ontario'],
  ['Jordan Lee', '204-555-2222', 'jordan@example.com', 'Alberta']
].each do |name, phone, email, province|
  customer = Customer.find_or_initialize_by(full_name: name)
  customer.update!(phone_number: phone, email_address: email, province: province, notes: 'Sample customer')
end
if Rails.env.development? && ENV['ADMIN_EMAIL'].present? && ENV['ADMIN_PASSWORD'].present?
  admin = AdminUser.find_or_initialize_by(email: ENV.fetch('ADMIN_EMAIL'))
  admin.password = ENV.fetch('ADMIN_PASSWORD')
  admin.save!
end
