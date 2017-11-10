require 'pp'
toronto_wards_response = HTTParty.get('https://represent.opennorth.ca/boundaries/toronto-wards/')
toronto_wards_json = JSON.parse(toronto_wards_response.body)
toronto_wards      = toronto_wards_json['objects'].map { |ward| ward['name'] }
pp toronto_wards

candidates_response = HTTParty.get('https://represent.opennorth.ca/candidates/')
candidates_json = JSON.parse(candidates_response.body)
candidates_names = candidates_json['objects'].map { |candidate| candidate['name']}
pp candidates_names
