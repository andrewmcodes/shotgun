module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :ids

    attr_reader :current_user, :current_user_id, :session_id

    def connect
      @current_user_id = cookies.encrypted[:cuid]
      @session_id = cookies.encrypted[:sid]
      @current_user = User.find_by(id: current_user_id) if current_user_id

      self.ids = {
        current_user_id: current_user_id,
        session_id: session_id
      }

      Rails.logger.debug "CONNECT: #{ids.inspect}"
    end
  end
end
