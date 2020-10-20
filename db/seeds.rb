# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.destroy_all
Organization.destroy_all
List.destroy_all
User.destroy_all
DashListJoiner.destroy_all


Category.reset_pk_sequence
Organization.reset_pk_sequence
List.reset_pk_sequence
User.reset_pk_sequence
DashListJoiner.reset_pk_sequence



# Category
education = Category.create(name: "Education", image: "https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/k-67-chim-10570_1.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=07c3f30c8149803bba5e05c05fb86cb4")
environment = Category.create(name: "Environment", image: "https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/k-s48-name-21159-job5.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=09e142063ea67264ebee7a3c622678a7")
community = Category.create(name: "Community and Neighbors", image: "https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/392-felix-8349-ae.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=73f9b9642b56274b0d331a99636178d7")
animals = Category.create(name: "Animals", image: "https://img.rawpixel.com/s3fs-private/rawpixel_images/website_content/a015-helenal-82.jpg?w=800&dpr=1&fit=default&crop=default&q=65&vib=3&con=3&usm=15&bg=F4F4F3&ixlib=js-2.2.1&s=2be738e7e48fab035840a1aea0d28140")
# art = Category.create(name: "Art and Culture", image: "", description: "")
# seniors = Category.create(name: "Seniors", image: "", description: "")

# Education organizations
imentor = Organization.create(name: "i-mentor", image: "https://www.volunteermatch.org/images/clear.gif", description: "iMentor builds mentoring relationships that empower students in low-income communities to graduate high school, succeed in college, and achieve their ambitions.", category: education)
music = Organization.create(name: "MusicLink", image: "https://www.volunteermatch.org/images/gallery/C2032F81-C849-00CA-5D7C-F1DFF6940F1B_m?ts=1509652524000", description: "Any child who has musical potential deserves the opportunity to nurture this talent to its full extent.", category: education)
institute = Organization.create(name: "Institute for Immigrant Concerns", image: "https://res.cloudinary.com/dktp1ybbx/image/upload/c_limit,h_180,w_180/f_auto,fl_lossy,q_auto/v1599067651/organization/prod/597816/NnJQFFrdSW.png", category: education)
score = Organization.create(name: "Score NYC", image: "https://www.volunteermatch.org/images/gallery/02541513-BC08-CC2F-3065-2D83169EB787_m?ts=1420052021000", description: "SCORE provides professional guidance and information to entrepreneurs to maximize the success of America's existing and emerging small businesses.", category: education)
bronx = Organization.create(name: "South Bronx United", image: "https://www.volunteermatch.org/images/gallery/11133A93-FF0A-D408-D095-0B8657149AB4_m?ts=1456851858000", description: "South Bronx United is a youth development organization dedicated on serving the South Bronx through education, mentoring, and soccer programs. Our goal is use the sport and the strength of mentoring to help boys and girls, ages 4-19, develop as leaders and scholars.", category: education)

# Environment organizations
greenwood = Organization.create(name: "THE GREEN-WOOD HISTORIC FUND", image: "https://res.cloudinary.com/dktp1ybbx/image/upload/c_limit,h_180,w_180/f_auto,fl_lossy,q_auto/v1598452714/organization/prod/694004/TlIyK7SIce.jpg", description: "Established in 1999, The Green-Wood Historic Fund’s mission is to maintain Green-Wood Cemetery’s monuments and buildings of historical, cultural and architectural significance; advance public knowledge and appreciation of this significance; and preserve the natural habitat and parklands of one of New York City’s first green spaces. With funding from memberships and donations, The Historic Fund not only preserves the past to enrich our future, but keeps a vibrant presence in our current time by presenting open-to-the-public events which include themed walking and trolley tours, book talks and special seasonal events.", category: environment)
conservation = Organization.create(name: "New York League of Conservation Voters", image: "https://www.volunteermatch.org/images/clear.gif", description: "The New York League of Conservation Voters (NYLCV) is the non-partisan political arm of New York State's environmental community. With offices in New York City, Albany and Erie County, NYLCV seeks to make environmental protection a top priority with New York's elected officials, political candidates, environmental organizations and voters.", category: environment)
seeds = Organization.create(name: "Seeds in the Middle", image: "https://www.volunteermatch.org/images/gallery/EB4B53D4-F40C-A1E8-2B52-C2766EE4183B_m?ts=1372683858000", description: "Seeds in the Middle offers joyful, healthy interventions that nurture the whole child and address the multiple obstacles blocking low-income children and families from getting healthy. We teach how to grow edible gardens, run a student-led Hip2B Healthy Market, bring chefs into schools, started soccer, running and fitness programs at school and in the community and music and arts in the schools. We integrate professional development for teachers so that a healthy lifestyle and environmental stewardship becomes organic and sustainable in the school community. To build community, we created Soccer for Harmony tournaments and the Crown Heights Farmers Market.", category: environment)
stewardship = Organization.create(name: "NYC Parks Stewardship Program", image: "https://www.volunteermatch.org/images/gallery/5BBB11B3-1F32-11AA-DB69-C44EC81FAE1C_m?ts=1382457071000", description: "The Stewardship Program is a service program that recruits, trains, and supports volunteers for ecological projects across the city. You can help keep New York City’s forests, wetlands, and coastlines thriving. Join us to plant trees, shrubs, and grasses; remove harmful invasive exotic vegetation; care for street tree beds; and remove debris from our wetlands.", category: environment)

# Community organizations
nycares = Organization.create(name: "New York Cares", image: "https://www.volunteermatch.org/images/gallery/F9B05867-4E2C-2F72-2DD7-B094636B5EDE_m?ts=1336685424000", description: "New York Cares is New York City's leading volunteer organization. Founded in 1987, New York Cares enables more than 54,000 volunteers each year to serve on flexibly-scheduled, team-based projects serving schools, social service agencies, and other deserving organizations. New York Cares volunteers tutor children, feed the hungry, assist people living with HIV/AIDS, revitalize gardens, take homeless children on recreational outings, visit the elderly, and do so much more.", category: community)
village = Organization.create(name: "Village Temple Soup Kitchen", image: "https://www.volunteermatch.org/images/clear.gif", description: "Prepare and serve food to homeless and needy people every Saturday.", category: community)

# Animal's organization
for_animals = Organization.create(name: "For Animal Inc.", image: "https://www.volunteermatch.org/images/gallery/84154B65-BAC6-9844-3E0F-6942BCBD04DC_m?ts=1398434965000", description: "For Animals is dedicated to eliminating companion animal homelessness, engaging our larger community as vital and active participants in this shared social and ethical responsibility, and providing that community with the resources and education necessary to achieve these goals together.", category: animals)
louie = Organization.create(name: "Louie's Legacy Animal Rescue", image: "https://www.volunteermatch.org/images/clear.gif", description: "We are a no-kill animal rescue based in Cincinnati and Staten Island, New York. We are proudly foster based, meaning our animals live in homes, not shelters. This allows us to more thoroughly get to know our animals, ensuring they are matched with suitable, screened adoptive homes that meet our high standards.", category: animals)
 
  


# Opportunities list
    # EDUCATION:
# imentor
mentor = List.create(name: "Calling All Mentors: Mentor a Student in NYC!", description: "iMentor matches high school students (mentees) one-on-one with volunteer adult mentors based on shared career and personal interests. Matched in relationships ranging from three to four years in length, mentor-mentee pairs cultivate their relationship using a potent combination of weekly emails and monthly in-person meetings.", location: "199 Water Street, 8th Floor, New York, NY 10038, US", organization: imentor)
inspire = List.create(name: "Inspire NY Girls to Explore Technology", description: "Inspire girls to explore the possibilities of technology! I-mentor helps inspire middle school girls to explore STEM careers by through free hands-on workshops in over 50 different topics.", location: "199 Water Street, 8th Floor, New York, NY 10038, US", organization: imentor)
# music
music_teacher = List.create(name: "Music Teachers for Underprivileged Children", description: "MusicLink is in need of experienced music teachers in Arkansas. With MusicLink, students (children under 18 years old) who show an interest in taking music lessons, but cannot afford full fee lessons, are linked with qualified music teachers willing to reduce their fee by at least half to make the lessons more affordable. MusicLink teachers are able to take advantage of a variety of offers and discounts from our growing list of Business Partners as well as additional benefits directly from our foundation.", location: "401 Seventh Avenue, Level B, New York, NY, 10001", organization: music)
# institute
esl = List.create(name: "ONLINE ESL Teachers for Adult Immigrants", description: "Institute for Immigrant Concerns, a not-for-profit providing ESOL classes for adult immigrants and refugees, started in 1997, is looking for ESL instructors. Must have Bachelor's or MA Degree and at least 2 years of English teaching experience (whether domestic or abroad). Our students are all motivated and studious adults. We put great emphasis on survival English, employment and cross-cultural awareness.", location: "122 W 27th St, 10th Floor New York, NY 10001", organization: institute)
mentor = List.create(name: "Tutor/Mentor Elementary Youth Afterschool", description: "We are looking for individuals who are looking to make a positive impact in the community. Volunteers will be asked to assist with tutoring in multiple subjects, reading, and activities, all while practicing safe social distancing guidelines.", location: "122 W 27th St, 10th Floor New York, NY 10001", organization: institute)
# score
workshop = List.create(name: "Workshop Presenter: Use your knowledge to help small business owners learn critical skills", description: "SCORE workshop presenters share their business acumen with their local community by leading educational workshops and seminars.", location: "26 Federal Plaza Room 3100 New York, NY 10278", organization: score)
assist = List.create(name: "Volunteer Administrative Assistant and Reception", description: "We have an immediate opening for an administrative assistant to support our non-profit organization that mentors small businesses and start-ups. This is a key role because it is often the first point of contact for clients and volunteers visiting or calling our main offices. It also provides important support for the Membership and Workshop Committees.", location: "26 Federal Plaza 31st floor, Rm. 3100 New York, NY 10278", organization: score)
planner = List.create(name: "Certified Financial Planner", description: "Volunteer your certified financial planning skills to teach budgeting, savings, and credit counseling to help people understand debt, credit and money management.", location: "601 W 26 street, 325 New York, NY 10001", organization: score)
# bronx
soccer = List.create(name: "Soccer Coach-Mentor: SBU Global Youth League", description: "South Bronx United's (SBU) Global Youth League aims to partner with immigrant youth in the Bronx as they transition to life in the United States. By providing a meeting place for youth to acclimate to life in New York through the familiar vehicle of soccer, we aim to add value to their experience through the provision of additional legal and social services support and referrals. We are able to provide this support through partnering with committed volunteers and our network of community based organizations in the Bronx.", location: "Boys Prep 192 E 151st Street, 3rd Floor, The Bronx, NY 10451", organization: bronx)
after_school = List.create(name: "After-School Tutor", description: "After-School Tutors work with small groups (3-4 students) of boys and girls in the South Bronx United Youth Development Program to provide homework help and support the youth in reaching their grade levels in math and the English Language Arts. Academic Coaches meet with the boys and girls, ages 11-14, for 2 hours on a set day every week. Tutors work with the same groups week to week, having the opportunity to build relationships with the kids and serve as a positive adult role model in their lives.", location: "Boys Prep 192 E 151st Street, 3rd Floor, The Bronx, NY 10451", organization: bronx)
internship = List.create(name: "Non-Profit Development Internship", description: "Non-profit development interns work closely with South Bronx United's Executive Director in building organizational capacity in support of SBU's youth development programs, which use soccer as a tool to help youth advance academically, graduate high school, and go on to college. Intern's work is focused in 3 key areas: 1) grant research & writing, 2) press relations and social media, and 3) fundraising through special events and sponsorships. Within these areas, the position can be molded to fit the individual's strengths and interests.", location: "Boys Prep 192 E 151st Street, 3rd Floor, The Bronx, NY 10451", organization: bronx)

    # ENVIRONMENT
# greenwood
outdoorv= List.create(name: "Green-Wood Programs/Performances Ambassador", description: "This fall, Green-Wood Cemetery is facilitating socially distant outdoor programming. We need volunteers to help things run smoothly and enjoy the programs in the process!", location: "500 25th Street Brooklyn, NY 11232", organization: greenwood)
# conservation
env_volunteer = List.create(name: "Environmental Volunteer or Intern", description: "We're always looking for interns and volunteers for the following areas: 1. Communications - writing and research, web content management, media and community outreach, assistance with press events. 2. Development - donor research (individuals, corporations and foundations), event outreach and staffing. 3. Policy and Advocacy - issue research, grassroots lobbying. 4.Political and Civic Engagement - candidate research, voter outreach", location: "30 Broad Street - 30th Floor New York, NY 10004", organization: conservation)
# seeds
gardeners = List.create(name: "Gardeners - help central Bk - Brownsville schools- fight food insecurity", description: "Communities of color are suffering disproportionately from COVID-19. Their death rates from this devastating virus are twice or 3 times the rate of wealthier communities. Nutrition is key to building your immune system and fighting off deadly viruses. Unfortunately, many communities of color live in 'food deserts' - places where nutritious fresh fruits and vegetables are far away or too expensive. This is why Seeds in the Middle is focusing on schools and places in these food deserts, or food-insecure neighborhoods. We are seeking to build 10 farm stands with gardens in schools in central Brooklyn's poorest neighborhoods.", location: "2163 dean Street Brooklyn, NY 11233", organization: seeds)
foodie = List.create(name: "Foodie alert!-Tastes of Brooklyn:October!", description: "Help us build more Tastes of Brooklyn food and drink crawls since the pandemic hit. Our first one on August 1st - Tastes of Gowanus to Carroll Gardens was warmly welcomed and people loved it. Everyone wore masks, kept social distance and supported their local restaurants, bars, bakeries while helping us create healthier choices for food--insecure neighborhoods so they can fight COVID-19. Let's boost up the businesses while fighting health disparities and inequity spotlighted by the pandemic. You can start helping now by just helping us publicize and put up posters and post on social media.", location: "Cent'anni 742 Franklin Avenue Brooklyn, NY 11238", organization: seeds)
# stewardship
pelham = List.create(name: "Pelham Bay Park Tree Planting", description: "Volunteer with the Stewardship Team to plant trees in the forest of Pelham Bay Park! Trees provide so many benefits to New Yorkers such as improved air and water quality, reduced pollution, and lower energy costs. Volunteers will be trained in proper planting techniques.", location: "Orchard Beach Nature Center Bronx, NY 10464", organization: stewardship)
marine = List.create(name: "Marine Park Tree Planting", description: "Volunteer with the Stewardship Team to plant trees in the forest of Marine Park! Trees provide so many benefits to New Yorkers such as improved air and water quality, reduced pollution, and lower energy costs. Volunteers will be trained in proper planting techniques.", location: "Marine Park Salt Marsh Nature Center Brooklyn, NY 11229", organization: stewardship)

# COMMUNITY
# nycares
hunger = List.create(name: "Hunger Projects with New York Cares", description: "Volunteers on New York Cares' Hunger projects do more than simply serve a meal - they provide a warm smile, friendly conversation, and the reassurance that someone cares. These projects serve hundreds of adults and children at homeless shelters, churches, and senior centers each day.", location: "214 W. 29th Street 5th Floor New York, NY 10001", organization: nycares)
childrens_educ = List.create(name: "Children's Education Projects with New York Cares in Brooklyn", description: "Help build a strong foundation for the academic achievement of young New Yorkers. New York Cares' Children's Education projects help New York City's underserved children develop their academic skills at an early age, improving their chances of getting into college and preparing them for future success.", location: "Brooklyn Area Brooklyn, NY 11201", organization: nycares)
# village
pickup = List.create(name: "To pick up food with a car on Sat. mornings", description: "We need a person(s) with a car to spend 1 hour (between 9:30 and 10:30am) on Saturdays to pick up donated food in the neighborhood from in-kind donors. We pick up from Au Bon Pain, Blimpies, Jon Vie Pasteries, Balducci's, D'Agostino's, etc. all in Soho and the Village.", location: "33 East 12th Street New York, NY 10003", organization: village)
feed = List.create(name: "To help feed the needy", description: "We feed 150 homeless and needy people every Saturday. Volunteers are invited to arrive about 9:00am until about 12:00pm to help in the preparation of food and soup by chopping vegatables, slicing bread, making sandwiches, arranging desserts, etc. No need to make a reservation - just show up and we'll put you to work although groups must be limited to 5 people please.", location: "33 East 12th Street (between University & Broadway New York, NY 10003", organization: village)

   
# ANIMALS
# for_animals
adopt_cat = List.create(name: "Love cats? Can't adopt? Why not foster?", description: "For Animals, Inc. is looking for reliable volunteers to foster cats and kittens in their homes in NYC. We need people who can foster and socialize kittens or give a temporary home to an adult cat who doesn't do well in a shelter environment. We can provide basic supplies (litter box, etc.) It is very helpful if you can provide food and litter.", location: "Brooklyn, NY 11217", organization: for_animals)
love_cats = List.create(name: "Love cats and live in Park Slope?", description: "For Animals Inc. is looking for reliable volunteers who love cats and have about 1 hour of free time in the morning and/or evening to take care of the kitties at our Adoption Center inside NYC Pet. All you need to do is give food, water, clean cages and spend some time with the cats.", location: "218 5th Ave Brooklyn, NY 11217", organization: for_animals)

# louie
foster_a_pet = List.create(name: "Foster a Pet in your Home", description: "Foster homes are the backbone of Louie’s Legacy Animal Rescue (LLAR), allowing us to save thousands of lives each year and place them into loving adoptive homes. Fosters provide a safe, secure environment for our animals, and allow the animals to live a normal life in a home, preparing them to be adopted by a forever family. Fostering is a rewarding experience as you will help a pet blossom into the best dog or cat it can be.", location: "3204 Amboy Road, New York, NY, 10302", organization: louie)
adopption_team = List.create(name: "Adoption Team Volunteer", description: "This position does the rewarding work of connecting animals to their forever homes.", location: "165 Bricktown Way New York, NY 10309", organization: louie)
