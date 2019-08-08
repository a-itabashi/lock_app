require 'net/http'
require 'json'
require 'clockwork'
require 'active_support/all'
require 'dotenv'
include Clockwork

Dotenv.load

module Sesamis
  class Lock
    def run
      api_url = 'https://api.candyhouse.co/public/sesame/'
      sesame_id = ENV["SESAMI_ID"]
      api_key = ENV["API_KEY"]

      uri = URI.parse(api_url + sesame_id)

      http = Net::HTTP.new(uri.host, uri.port).tap do |this|
        this.use_ssl = true
        this.verify_mode = OpenSSL::SSL::VERIFY_NONE
      end
      req = Net::HTTP::Post.new(uri.request_uri)

      form_data = { command: :lock }
      req['Authorization'] = api_key
      req['Content-Type'] = 'application/json'

      req.body = form_data.to_json
      http.request(req)
    end
  end
end

module Clockwork
  every(1.day, "19:00", :at => '19:00') {Sesamis::Lock.new.run}
  every(1.day, "19:30", :at => '19:30') {Sesamis::Lock.new.run}
  every(1.day, "20:00", :at => '20:00') {Sesamis::Lock.new.run}
  every(1.day, "20:30", :at => '20:30') {Sesamis::Lock.new.run}
  every(1.day, "21:00", :at => '21:00') {Sesamis::Lock.new.run}
  every(1.day, "21:30", :at => '21:30') {Sesamis::Lock.new.run}
  every(1.day, "22:00", :at => '22:00') {Sesamis::Lock.new.run}
  every(1.day, "22:30", :at => '22:30') {Sesamis::Lock.new.run}
  every(1.day, "23:00", :at => '23:00') {Sesamis::Lock.new.run}
  every(1.day, "23:30", :at => '23:30') {Sesamis::Lock.new.run}
  every(1.day, "00:00", :at => '00:00') {Sesamis::Lock.new.run}
  every(1.day, "01:30", :at => '01:30') {Sesamis::Lock.new.run}
  every(1.day, "02:00", :at => '02:00') {Sesamis::Lock.new.run}
  every(1.day, "02:30", :at => '02:30') {Sesamis::Lock.new.run}
  every(1.day, "03:00", :at => '03:00') {Sesamis::Lock.new.run}
  every(1.day, "03:30", :at => '03:30') {Sesamis::Lock.new.run}
  every(1.day, "04:00", :at => '04:00') {Sesamis::Lock.new.run}
  every(1.day, "04:30", :at => '04:30') {Sesamis::Lock.new.run}
  every(1.day, "05:00", :at => '05:00') {Sesamis::Lock.new.run}
  every(1.day, "05:30", :at => '05:30') {Sesamis::Lock.new.run}
  every(1.day, "06:00", :at => '06:00') {Sesamis::Lock.new.run}
  every(1.day, "06:30", :at => '06:30') {Sesamis::Lock.new.run}
  every(1.day, "07:00", :at => '07:00') {Sesamis::Lock.new.run}
  every(1.day, "07:30", :at => '07:30') {Sesamis::Lock.new.run}
  every(1.day, "08:00", :at => '08:00') {Sesamis::Lock.new.run}
  every(1.day, "08:30", :at => '08:30') {Sesamis::Lock.new.run}
  every(1.day, "09:00", :at => '09:00') {Sesamis::Lock.new.run}
  every(1.day, "09:30", :at => '09:30') {Sesamis::Lock.new.run}
end