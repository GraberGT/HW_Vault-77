# frozen_string_literal: true

require 'net/http'

class Request
  attr_reader :url

  def add_header(header_type, header_value)
    @res[header_type] = header_value
  end

  def initialize
    @responses = {}
  end

  def find_response(url)
    @responses[url]
  end

  def create_request(url)
    @url = url
    uri = URI(url)
    req = Net::HTTP::Get.new(uri)
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true if uri.instance_of?(URI::HTTPS)
    @res = http.request(req)
    @responses[@url] = @res.response
  end

  def code
    @res.code
  end

  def last_response
    @res.response
  end

  def body
    @res.body
  end

  def header
    @res.header
  end
end
