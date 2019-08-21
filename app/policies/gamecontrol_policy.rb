class GamecontrolPolicy < Struct.new(:user, :gamecontrol)

  def town?
    true
  end

  def wild?
    true
  end
end
