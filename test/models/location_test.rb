require 'test_helper'

class LocationTest < ActiveSupport::TestCase

   def setup
   	@location = Location.new(name: "Example Location", description: "An example description", address: "123 Fake Street", latitude: "-45.0", longitude: "-123.123")
  end

  test "should be valid" do
   assert @location.valid?
  end

  # Name Tests:

  test "name should be present" do
  	@location.name = "    "
  	assert_not @location.valid?
  end

  test "name should not be too short" do
  	@location.name = "a"
  	assert_not @location.valid?
  end

  test "name should not be too long" do
  	@location.name = "a" * 31
  	assert_not @location.valid?
  end

  # Description Tests:

  test "description should be present" do
  	@location.description = "    "
  	assert_not @location.valid?
  end

  test "description should not be too short" do
  	@location.description = "a"
  	assert_not @location.valid?
  end

  test "description should not be too long" do
  	@location.description = "a" * 31
  	assert_not @location.valid?
  end

  # Address Test:

    test "address should be present" do
    	@location.address = "    "
    	assert_not @location.valid?
    end

    test "address should not be too short" do
    	@location.address = "a"
    	assert_not @location.valid?
    end

    test "address should not be too long" do
    	@location.address = "a" * 101
    	assert_not @location.valid?
    end

    # Latitude Test:

    test "latitude should be present" do
    	@location.latitude = "   "
    	assert_not @location.valid?
    end

    test "latitude is numerical" do
    @location.latitude = "ABC123"
    assert_not @location.valid?
  end

  test "latitude is within the minimum" do
    @location.latitude = "-100"
    assert_not @location.valid?
  end

  test "latitude is within the maximum" do
    @location.latitude = "100"
    assert_not @location.valid?
  end

  #Longitude Test:

    test "longitude should be present" do
    	@location.longitude = ""
    	assert_not @location.valid?
    end

    test "longitude is numerical" do
    @location.longitude = "ABC123"
    assert_not @location.valid?
  end

  test "longitude is within the minimum" do
    @location.longitude = "-200"
    assert_not @location.valid?
  end

  test "longitude is within the maximum" do
    @location.longitude = "200"
    assert_not @location.valid?
  end
end
