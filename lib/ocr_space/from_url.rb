require 'httparty'

module OcrSpace
  class FromUrl
  attr_reader :data
    def initialize(apikey: ENV['ocr_api_key'], language: 'eng', isOverlayRequired: false, url: nil, ocr_space: "https://api.ocr.space/parse/image")
       @data = HTTParty.post("https://api.ocr.space/parse/image",
                               body: { apikey: apikey,
                                       language: language,
                                       isOverlayRequired: isOverlayRequired,
                                       url: url})
    end

    def text_data
      self.data.parsed_response["ParsedResults"][0]["ParsedText"]
    end
  end
end