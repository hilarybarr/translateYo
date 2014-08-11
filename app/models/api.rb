class API
	# API_KEY = File.read('lib/assets/.api_key')
	# API_SECRET = File.read('lib/assets/.api_secret')
	 $translator = MicrosoftTranslator::Client.establish_connection!(
   	:API_KEY   => ENV['API_KEY'],
		:API_SECRET => ENV['API_SECRET']
	 )

	def self.call_api(text_to_translate, lang)
 		 #$translator = MicrosoftTranslator::Client.new('translate-yo', API_SECRET)
 		translation = $translator.translate(text_to_translate, "en", lang.code, "text/html")
 	end


end

