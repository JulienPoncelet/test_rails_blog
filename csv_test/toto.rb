require 'csv'

CSV.open('tata.csv', 'wb') do |csv|
	csv << ['alpha', 'beta', 'gamma']
	csv << ['alpha', 'beta', 'gamma']
	csv << ['alpha', 'beta', 'gamma']
	csv << ['alpha', 'beta', 'gamma']
end