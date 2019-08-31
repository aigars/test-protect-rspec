class Cameras
  def initialize
    @cameras_screen = CamerasScreen.new
  end

  def open_camera(name)
    @cameras_screen.get_camera(name)
  end
end
