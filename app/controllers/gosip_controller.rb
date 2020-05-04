class GosipController < ApplicationController
  def id
    @gosip = Gosip.find_by(id: params[:id])
    puts " le gosip est #{@gosip.id}"
  end
end
