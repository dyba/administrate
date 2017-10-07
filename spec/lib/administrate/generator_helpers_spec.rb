require "rails_helper"
include Administrate::GeneratorHelpers

RSpec.describe Administrate::GeneratorHelpers do
  describe "#find_routes_file" do
  	before (:all) do
  		@typical_routes_path = "config/routes.rb"
  	end

    it "returns the typical path for a Rails routes file if found" do
      returned_path = find_routes_file

      expect(returned_path.to_s).to include(@typical_routes_path)
    end
  end
end
