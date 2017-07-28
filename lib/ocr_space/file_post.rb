require 'httmultiparty'

module OcrSpace
    class FilePost
        include HTTMultiParty
        base_uri 'https://apipro2.ocr.space'
    end
end
