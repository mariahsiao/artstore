CarrierWave.configure do |config|
	if Rails.env.production?
		config.storage :fog
		config.fog_credentials = {
			provider:              'AWS',
			aws_access_key_id:     'AKIAJ65RFVJLBIDMI7CQ'
			aws_secret_access_key: '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'
			region:                'eu-west-1'
		}
		config.fog_directory  = 'maria-artstore'
	else
		config.storage :file
	end
end
