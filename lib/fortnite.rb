require 'rest-client'
require 'json'

class Fortnite
  BaseUrl = 'https://fortnite-public-api.theapinetwork.com'

  def daily_store
    begin
      request = RestClient.get BaseUrl + '/prod09/store/get'
      JSON.parse(request.body)
    rescue Exception => e
      puts "Error: #{e}"
      {}
    end
  end

  def upcoming_items
    begin
      request = RestClient.get BaseUrl + '/prod09/upcoming/get'
      JSON.parse(request.body)
    rescue StandardError => e
      puts "Error: #{e}"
      {}
    end
  end

  def items
    begin
      request = RestClient.get BaseUrl + '/prod09/items/list'
      JSON.parse(request.body)
    rescue StandardError => e
      puts "Error: #{e}"
      {}
    end
  end

  def user_id nickname
    begin
      request = RestClient.get BaseUrl + "/prod09/users/id?username=#{nickname}"
      JSON.parse(request.body)
    rescue StandardError => e
      puts "Error: #{e}"
      {}
    end
  end

  def user_stats id 
    begin
      request = RestClient.get BaseUrl + "/prod09/users/public/br_stats_v2?user_id=#{id}"
      JSON.parse(request.body)
    rescue StandardError => e
      "Error #{e}"
      {}
    end
  end

  def user_matches id
    begin
      request = RestClient.get BaseUrl + "/prod09/users/public/matches_v2?user_id=#{id}"
      JSON.parse(request.body)      
    rescue Exception => e
      puts "Error: #{e}"
      {}
    end
  end

  def challenges season
    begin    
      request = RestClient.get BaseUrl + "/prod09/challenges/get?season=#{season}"
      JSON.parse(request.body)
    rescue Exception => e
      puts "Error: #{e}"
      {}
    end
  end

  def weapons
    begin
      request = RestClient.get BaseUrl + '/prod09/weapons/get'
      JSON.parse(request.body)
    rescue Exception => e
      puts "Error: #{e}"
      {}
    end
  end

  def server_status
    begin
      request = RestClient.get BaseUrl + '/prod09/status/fortnite_server_status'
      JSON.parse(request.body)
    rescue Exception => e
      puts "Error: #{e}"
      {}
    end
  end
end
