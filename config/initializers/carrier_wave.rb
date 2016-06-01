CarrierWave.configure do |config|
	if Rails.env.production?
		config.storage :fog
		config.fog_credentials = {
			provider:              'AWS',
			aws_access_key_id:     'AKIAJB35SBEH4QCCC6FA'
			aws_secret_access_key: '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'
			region:                'Tokyo'
		}
		config.fog_directory  = 'maria-artstore'
	else
		config.storage :file
	end
end
