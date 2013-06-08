module Api
  class GradesController < ApplicationController
    def index
      grades = Grade.select([:id, :name])
      render_api_response grades
    end
  end
end
