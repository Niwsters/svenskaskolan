Givet /^att det finns kurser i databasen$/ do
	10.times {FactoryGirl.create(:course)}
end

Givet /^att det inte finns kurser i databasen$/ do
  Course.delete_all
end

Givet /^att jag är på sidan för att hitta kurser$/ do
	visit send("courses_path")
end

Så /^ska jag se kurserna i listan$/ do
	rows = find_course_rows
	courses = Course.all
	
	rows.should_not be_empty
	rows.length.should == courses.length
	
	Course.all.each_with_index do |course, i|
			rows[i].find('td.course_name').text.should == course.name
	end
end

Så /^ska kurslistan vara tom$/ do
  page.find('.courses_not_found').text.should == "Inga kurser funna"
end

def find_course_rows
	page.find(:xpath, '//table[@class="courses"]').all(:xpath, '//tr')
end
