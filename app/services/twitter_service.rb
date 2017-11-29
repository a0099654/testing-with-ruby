class TwitterService
    def initialize
        @client = Twitter::REST::Client.new do |config|
            config.consumer_key        = 'mt24nahF781Vjhj3jRQB4vX1m'
            config.consumer_secret     = 'CyRcwxGET42EgVc7m0xsasKuQkShP77a0myHrqsGCHZr2eQ7EU'
            config.access_token        = '849160225546305536-tHgUyG6HYJAi4iK6Ue5gDxyaNgSCeNK'
            config.access_token_secret = '3TrBLK4ji3GSB4YM1083eLPGVieyqTPQBF0Xshb1KmUtc'
        end
    end

    def tweet(message)
        @client.update(message)
    end
end