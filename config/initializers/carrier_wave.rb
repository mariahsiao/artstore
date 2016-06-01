CarrierWave.configure do |config|
	if Rails.env.production?
		config.storage :fog
		config.fog_credentials = {
			provider:              'AWS',
			aws_access_key_id     = ENV['aws_access_key_id']
			aws_secret_access_key = ENV['aws_secret_access_key']
			region                = ENV['aws_region']
		}
		config.fod_directory = 'maria-artstore'
	else
		config.storage :file
	end
end
