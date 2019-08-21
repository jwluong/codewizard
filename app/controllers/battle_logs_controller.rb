class BattleLogsController < ApplicationController
  skip_after_action :verify_authorized

  def create
    # raise
    # add JS format
    @hp = 110
  end
end
