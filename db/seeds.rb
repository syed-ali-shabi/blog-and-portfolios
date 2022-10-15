10.times do |blog|
	Blog.create!(title: "My Blog Post #{blog + 1}",
				 body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
				 )
end

puts "10 blogs Printed"
10.times do |blog|
	Blog.create!(title: "My Blog Post #{blog + 11}",
				 body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
				 )
end

puts "10 Blogs Printed"


10.times do |portfolio|
	Portfolio.create!(title: "Portfolio title #{portfolio + 1}",
					  subtitle: "Ruby on rails" ,
				 	  body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
				 	  main_image: "http://placehold.it/600x400",
				 	  thumb_image: "http://placehold.it/350x200")
end

puts "10 Ruby on Rails Printed"

10.times do |portfolio|
	Portfolio.create!(title: "Portfolio title #{portfolio + 11}",
					  subtitle: "Angular" ,
				 	  body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
				 	  main_image: "http://placehold.it/600x400",
				 	  thumb_image: "http://placehold.it/350x200")
end
puts "10 Angular Printed"