RSpec.describe "Protect" do
  describe "Login" do
    let(:login) { Login.new }
    it "at the login screen" do
      expect(login.at_the_login_screen).not_to be nil
    end
    it "enter username and password" do
      login.enter_username_and_password($setup['username'], $setup['password'])
    end
    it "login should be successfull" do
      expect(login.login_should_be_successfull).not_to be nil
    end
  end
  describe "Add Camera/s" do
    let(:cameras) {Cameras.new}
    it "open camera" do
      cameras.open_camera("UVC G3 FLEX")
    end
  end
end
