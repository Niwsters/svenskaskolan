require 'spec_helper'

describe CoursesController do
	it "populates an array of contacts" do
		courses = 5.times.map { FactoryGirl.create(:course) }
		get :index
		assigns(:courses).should eq(courses)
	end
	
	it "renders the :index view" do
		get :index
		response.should render_template :index
	end
end
