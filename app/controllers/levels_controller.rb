class LevelsController < ApplicationController
  def index
    @levels = policy_scope(Level).all
  end
end
