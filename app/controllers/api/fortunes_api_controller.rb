$last_random_id = 0

module Api
  class FortunesApiController < ActionController::API
    include ActionController::MimeResponds

    def random
      random_id = Fortune.ids.sample

      while random_id == $last_random_id do
        random_id = Fortune.ids.sample
      end

      $last_random_id = random_id;

      fortune = Fortune.find(random_id)
      render json: fortune
    end
  end
end
