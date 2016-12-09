class ThermostatAPI < Sinatra::Base

	get '/' do
		"Hello ThermostatAPI"
	end

	get '/values' do
		headers 'Access-Control-Allow-Origin' => '*'
		content_type :json
		
		{ :temperature => 22,
			:psm => false,
			:current_city => "London"
			 }.to_json
	end

end