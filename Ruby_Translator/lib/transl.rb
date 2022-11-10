require "rest-client"
require_relative "resp"

class Translator
    attr_reader :url
    attr_reader :token

    def initialize
        @url = 'https://translate.yandex.net/api/v1.5/tr.json/translate'
        @token = ''
    end

    def translate(from, to, text)
        body = {text: text, lang: "#{from}-#{to}"}
        return Response.new(send_post(body))
    end

    private
    def send_post(body)
        return RestClient.post("#{@url}?key=#{@token}", body)
    end
end