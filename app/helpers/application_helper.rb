require "json"
require 'digest'
require 'net/http'

module ApplicationHelper

  def get_marvel_info_of(character)
    # get a timestamp for our api hash
    time = Time.now.getutc

    # get the keys from the environment variables.
    pb_api_key = ENV["PB_API_KEY"]
    pv_api_key = ENV["PV_API_KEY"]

    # the following line is how you concatenate different data types in ruby. same result as above.
    hash_in = "#{time}#{pv_api_key}#{pb_api_key}"
    digest = Digest::MD5.hexdigest(hash_in)

    uri = nil
    if character == :all
      uri = "http://gateway.marvel.com:80/v1/public/characters?orderBy=name&limit=36&ts=#{time}&apikey=#{pb_api_key}&hash=#{digest}"
    else
      uri = "http://gateway.marvel.com:80/v1/public/characters?name=#{character}&ts=#{time}&apikey=#{pb_api_key}&hash=#{digest}"
    end

    response = Net::HTTP.get(URI(URI.escape(uri)))
    JSON.parse(response)["data"]["results"]
  end

  def get_marvel_characters
    get_marvel_info_of(:all)
  end

end
