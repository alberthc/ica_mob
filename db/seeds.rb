# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Create Campuses

usc = Campus.create(school_name: "USC", org_name: "USC ICA", keywords: "USC, student organization, campus fellowship, fellowship, discipleship, evangelism, witnessing, navigators, missions, navs, ministry", description: "USC In Christ Alone (ICA) is a recognized student organization at USC that welcomes both believers and non-believers. We have a strong emphasis on discipleship and seeking and saving the lost. Our desire is to know Christ and make Christ known on our campus and around the world. We hold weekly small group Bible studies and large group meetings along with other fun activities.", rally_name: "Large Group Rally", rally_datetime: "Thursday, 6:30pm", rally_location: "GFS 101", church_name: "Church", church_datetime: "Sunday Service begins at 9:45am", church_location: "SGM 101", announcements_bg_color1_class: "bg-gold", announcements_bg_color2_class: "bg-red", fb_campus_link: "https://www.facebook.com/groups/5748715849/?ref=br_tf", fb_link_class: "usc-link", gcal_path: "https://www.google.com/calendar/embed?src=uscinchristalone%40gmail.com&ctz=America/Los_Angeles", url_key: "usc", email: USC_EMAIL)

ucla = Campus.create(school_name: "UCLA", org_name: "Bruin ICA", keywords: "UCLA, student organization, campus fellowship, fellowship, discipleship, evangelism, witnessing, navigators, missions, navs, ministry", description: "Brothers and sisters committed to worshipping Christ and making Him known.", rally_name: "Large Group Rally", rally_datetime: "Wednesday, 6:30pm", rally_location: "Bunche 3211", church_name: "Church", church_datetime: "Pickup time: 9:00am", church_location: "Pickup location: De Neve Turnaround", announcements_bg_color1_class: "bg-gold", announcements_bg_color2_class: "bg-ucla-blue", fb_campus_link: "https://www.facebook.com/groups/5175699521/", fb_link_class: "usc-link", gcal_path: "https://www.google.com/calendar/embed?src=icabruins%40gmail.com&ctz=America/Los_Angeles", url_key: "ucla", email: UCLA_EMAIL)

uci = Campus.create(school_name: "UCI", org_name: "Irvine ICA", keywords: "UCI, student organization, campus fellowship, fellowship, discipleship, evangelism, witnessing, navigators, missions, navs, ministry", description: "Brothers and sisters committed to worshipping Christ and making Him known.", rally_name: "Large Group Rally", rally_datetime: "Thursday, 6:30pm", rally_location: "SSL 145", church_name: "Church", church_datetime: "Pickup time: 8:45am", church_location: "Pickup location: Please contact driver", announcements_bg_color1_class: "bg-gold", announcements_bg_color2_class: "bg-ucla-blue", fb_campus_link: "https://www.facebook.com/groups/28628738058/", fb_link_class: "usc-link", gcal_path: "https://www.google.com/calendar/embed?src=irvineica%40gmail.com&ctz=America/Los_Angeles", url_key: "uci", email: UCI_EMAIL)

cal = Campus.create(school_name: "Cal", org_name: "Berkeley ICA", keywords: "Cal, berkeley, student organization, campus fellowship, fellowship, discipleship, evangelism, witnessing, navigators, missions, navs, ministry", description: "Brothers and sisters committed to worshipping Christ and making Him known.", rally_name: "Large Group Rally", rally_datetime: "Wednesdays, 7-9pm", rally_location: "TBD", church_name: "Solano Community Church", church_datetime: "9:00am", church_location: "Rides provided: Contact Tim Liu (214-707-2818)", announcements_bg_color1_class: "bg-gold", announcements_bg_color2_class: "bg-cal-blue", fb_campus_link: "https://www.facebook.com/groups/312238458832031/", fb_link_class: "usc-link", gcal_path: "https://www.google.com/calendar/embed?src=k674ed9em6orvp5lgcnk61g08k%40group.calendar.google.com&ctz=America/Los_Angeles&mode=WEEK", url_key: "cal", email: CAL_EMAIL)

rutgers = Campus.create(school_name: "Rutgers", org_name: "Rutgers ICA", keywords: "Rutgers, student organization, campus fellowship, fellowship, discipleship, evangelism, witnessing, navigators, missions, navs, ministry", description: "We have a strong emphasis on discipleship and seeking and saving the lost. Our desire is to know Christ and make Christ known on our campus and around the world. We hold weekly small group Bible studies and large group meetings along with other fun activities.", rally_name: "Large Group Rally", rally_datetime: "Wednesday, 9:30-11:30pm", rally_location: "Scott Hall 207 @ College Ave", church_name: "Graceway Presbyterian Church", church_datetime: "Sunday Service begins at 11:00am", church_location: "New Brunswick Theological Seminary, 35 Seminary Place, New Brunswick, NJ 08901", announcements_bg_color1_class: "bg-grey-rutgers", announcements_bg_color2_class: "bg-red-rutgers", fb_campus_link: "https://www.facebook.com/groups/893558397405911/", fb_link_class: "rutgers-link", gcal_path: "https://www.google.com/calendar/embed?src=90v078d5jo8ai8k0cfv5jjjhq8%40group.calendar.google.com&ctz=America/New_York", url_key: "rutgers", email: RUTGERS_EMAIL)

# Create Campus Leaders

usc_leaders = CampusLeader.create([
{name: "Albert Cho", title: "USC Ministry Leader", image_path: "leaders-albert", position: 1, bio: "Upon graduation of high school, God sovereignly led Albert to Los Angeles, California to attend USC from his hometown of Houston, Texas. At USC, where he began to develop a deeper relationship with God. Blessed by discipleship and training, Albert decided to become a campus leader at USC to pass on the blessings he received as an undergrad while simultaneously beginning to work full-time as a software engineer at DIRECTV. Albert's childhood dream was to become a professional basketball player, but he decided to settle as an engineer when he stopped growing at 5'8\". To anyone gullible enough, Albert likes to tell tales about his pet horse and the dirt roads of Texas.", is_active: true},
{name: "Ethan Chan", title: "USC Men's Team Leader", image_path: "leaders-ethan", position: 2, bio: "An enthusiastic evangelist and loyal brother, Ethan's life was changed when he grew a love for quiet time and seeing God's love through His Word. He now leads the sophomore and junior small group, disciples younger men, and is working toward a progressive Master's degree in Electrical Engineering. Ethan hails from the beautiful state of Hawaii and enjoys playing the ukulele, playing tennis, experimenting in the kitchen, and watching his unsuspecting friends try his kitchen experiments.", is_active: true},
{name: "Jennifer Hang", title: "USC Women's Leader", image_path: "leaders-jen", position: 3, bio: "God's faithful pursuit of Jen's heart led her to her freshmen year at USC where she saw, for the first time, the magnitude of God's love for her and His unique ability to fill and satisfy her in every way. Armed with these transforming truths and a persevering spirit, Jen spent the remainder of her undergrad years growing in her relationship with God and seeking His will for her life. Now, having graduated, she works full-time while also serving in the ministry at USC. When asked about favorite activities, Jen has no particular preferences - she simply enjoys being around those whom she loves, regardless of what they're doing. She is, however, especially fond of breakfast food, graphic design and heart-to-heart conversations.", is_active: true},
{name: "Yvonne Li", title: "Part-Time Staff", image_path: "leaders-yvonne", position: 4, bio: "Yvonne may be from a small town near San Francisco (Pacifica), but she has a huge heart for people everywhere, especially those who don't know Jesus. She's a true Bruin at heart, where she graduated with a biochemistry degree, but has since also started a masters in public health at USC (love your enemies)! Yvonne experienced the love and healing of Christ in her freshmen year at UCLA, and now spends most of her time on both campuses and overseas sharing the good news to those who haven't heard. She is a fierce, faithful, and fun discipler who is looking forward to raising up the next generation!", is_active: true}
])

ucla_leaders = CampusLeader.create([
{name: "Jack Cao", title: "UCLA Ministry Leader", image_path: "leaders-jack", position: 1, bio: "Jack Cao was born in China and came to the US when he was 10. He grew up not knowing God, but became a Christian in high-school when God lead him to read the Bible on his own through a time of struggle. He became a part of our sister ministry in UC Berkeley, where he received his Bachelor's in Electrical Engineering. During that time he came to a greater understanding of God's love and also God's call to discipleship. After graduating, he came to UCLA to get his Master's in EE and support our Bruin ICA ministry. Always willing to lend a helping hand, Jack's spiritual upbringing at Cal makes him an excellent shepherd and brings a fresh perspective among his brothers and sisters. In his spare time, he likes to cook, hang out with people, run, and skip rocks by the river.", is_active: true},
{name: "Amy Chen", title: "UCLA Women's Ministry Leader", image_path: "leaders-amy", position: 2, bio: "Amy was introduced to the gospel by a staff member at Bruin ICA in 2006 during her freshman year, when she received Jesus Christ as her Lord and Savior. The next year, she went on missions and was amazed at the saving grace and power of God for other people. She has labored as a ministry servant and disciple-maker ever since. In addition, she currently works full-time in the UCLA School of Medicine. Amy loves talking to people, exploring new music and food, going on spontaneous adventures, visiting coffee and tea shops, giving hugs, and has a quirky curiosity for many random interests.", is_active: true},
{name: "Jessie Cao", title: "UCLA Women's Ministry Leader", image_path: "leaders-jessie", position: 3, bio: "Jessie recommitted her life to Christ in her freshman year at UCLA, and even after graduating in 2012, she continues to be amazed at His faithfulness, patience, and love for her. Always watching out for her brothers and sisters, her laughter and timely encouragements are guaranteed to brighten anyone's day. Currently, she works full-time in Westwood, while continuing to serve with ICA in hopes of helping others know Christ and experience joy in following Him. In her spare time, Jessie enjoys delighting in the simple things including but not limited to the smell of fresh bread, listening to people's laughs, lattes, terrible puns, and noodle soup.", is_active: true},
{name: "Paul Lee", title: "UCLA Men's Ministry Leader", image_path: "leaders-paul", position: 4, bio: "A loving and supportive brother to many, Paul is known for his vocal techniques and audacious comments. He first transferred to UCLA and joined ICA in his junior year, and has continued to serve on campus after graduation. Paul is a humble servant and a man of prayer, who loves the Word. He is a great listener and genuinely enjoys having deep conversations, along with watching Pokemon, taking selfies, playing ball, and shooting candid videos of his friends.", is_active: true},
{name: "Sarah Chacon", title: "UCLA Women's Ministry Leader", image_path: "leaders-sarah", position: 5, bio: "Though she hails from Sylmar, California, Sarah is not your typical \"valley girl.\" She is an avid learner of different languages and cultures, and loves engaging with people from all different walks of life to help them know Christ. After graduating from UCLA in 2013, Sarah began volunteering as a part-time staff with ICA, and can now be spotted regularly on campus sharing the love of Jesus with students, leading bible studies, and engaging in one-to-one discipleship. Sarah has a passion for music, languages, social justice, plants, Adventure Time, and Korean pop music.", is_active: true},
{name: "Josh Molitoris", title: "Part-Time Staff", image_path: "leaders-josh", position: 6, bio: "Josh spent the first year of his college experience at UCLA as a nominal Christian, but soon realized that there is much more to life than what society so often emphasizes. After experiencing God's love and mercy at ICA's Winter Conference in 2012, it became clear to Josh that he ought to make his relationship with God a priority in his life. Since then he has become a part of the  UCLA servants team, leads Bible studies, and meets up with those who are interested in learning more about Christianity. Apart from spending time serving the ministry, Josh enjoys playing sports as well as playing and listening to music.", is_active: true},
{name: "Yvonne Li", title: "Part-Time Staff", image_path: "leaders-yvonne", position: 7, bio: "Yvonne may be from a small town near San Francisco (Pacifica), but she has a huge heart for people everywhere, especially those who don't know Jesus. She's a true Bruin at heart, where she graduated with a biochemistry degree, but has since also started a masters in public health at USC (love your enemies)! Yvonne experienced the love and healing of Christ in her freshmen year at UCLA, and now spends most of her time on both campuses and overseas sharing the good news to those who haven't heard. She is a fierce, faithful, and fun discipler who is looking forward to raising up the next generation!", is_active: true}
]);

uci_leaders = CampusLeader.create([
{name: "Michael Wong", title: "UCI Ministry Director", image_path: "leaders-mike", position: 1, bio: "The Lord gave Michael a vision for disciple-making and evangelism late in high school, and he went on to receive more training with the Navigators during his undergraduate years at UCLA. He continued on the staff of the Navigators and ICA at UCLA for another four years before being called to pioneer a new campus ministry at UC Irvine. He continues to share the gospel on campus, lead Bible studies and fellowship meetings, and disciple students on a full-time basis. He recently married his long-time friend and colaborer, Elaine, and is attending Talbot Theological Seminary.", is_active: true},
{name: "Caleb Molitoris", title: "UCI Ministry Leader", image_path: "leaders-caleb", position: 2, bio: "As a missionary's kid, Caleb was exposed to Christianity at a young age. Having been raised in Lutheran churches and schools, Caleb had a solid understanding of who Jesus is and what He taught. However, he did not experience the blessings of having a personal relationship with Christ until his college years at UCLA. Because he was blessed by those who poured into him while he was a student, Caleb was moved to personally invest in the lives of people. Caleb graduated from UCLA with a BS in electrical engineering in 2012, and is now working at Intel while serving as associate assistant director at UCI ICA.", is_active: true},
{name: "Elaine Wong", title: "UCI Women's Ministry Leader", image_path: "leaders-elaine", position: 3, bio: "Elaine didn't grow up having a Christian background. Her mom used to be a strong Buddhist, while her dad had no religion. She herself didn't have any religion, but believed in a higher being. In junior high, in a dark time of her and her family's life, she called out to God from the bottom of her heart, and God saved her and her family, showing her that He was there and true and did a 180 change in her family's life. Elaine, her mom, and her sister all came to know Christ. Ever since that time, Elaine knew she wanted to live for God and His will. She is now a PhD student at UCLA, Environmental Engineering major with an emphasis in water treatment, and a teaching assistant at UCLA. She loves to dance, disciple, pray, eat good food, and have quality time with her friends and husband.", is_active: true},
{name: "Ephrath Chow", title: "UCI Women's Ministry Leader", image_path: "leaders-ephrath", position: 4, bio: "Born and raised in a typical Californian Chinese Christian family, Effie went through her pre-college life going with the flow and satisfying her duties as an average “Christian” girl. At the end of high school, God led her to question if she was really a true follower of Christ. Was going to church every Sunday and doing other “Christian” duties what makes one a true follower? It led her to re-evaluate her relationship with Christ. During college, God showed Effie the true meaning of having a personal relationship with him. It wasn’t about what she could do but rather what he had already done for her. One of her favorite passages is Romans 8:38-39 where God showed her how nothing could stop him from loving her. Currently, she works as a marketing specialist in Irvine and enjoys the simple things in life, such as hiking, talking, shopping, baking and watching Christopher Nolan movies.", is_active: true}
]);

cal_leaders = CampusLeader.create([
{name: "Timothy Liu", title: "Cal Ministry Leader", image_path: "leaders-tim", position: 1, bio: "Timothy grew up in Plano, Texas and became a follower of Jesus at a summer camp in middle school. However, it wasn't until his senior year of high school when he became baptized and began discipleship that his faith really solidified. He went to Cal and joined The Navigators (now In Christ Alone) since his freshman year. Timothy has a variety of interests: cooking, music (especially jazz), soccer, movies, and more. He works full-time at a startup in Berkeley and serves at Berkeley ICA with his passion for discipleship and evangelism. He currently considers Luke 17:10 his life verse.", is_active: true}
]);

rutgers_leaders = CampusLeader.create([
{name: "Danny Furuyama", title: "Rutgers Ministry Leader", image_path: "leaders-danny", position: 1, bio: "Danny Furuyama attended University of California, Los Angeles and studied electrical engineering. He joined a Christian fellowship group called the Navigators and served on staff for three years. In 2003, Danny and two others pioneered a chapter at UC Berkeley and he continued to serve there for twelve years. Danny has also led several teams on overseas mission trips. In 2015, Danny started a new chapter at Rutgers University and serves as the youth pastor at Graceway Presbyterian Church. He is married to Akemi and has two sons named Isaiah and Micah. Danny also enjoys sports, board games, cooking, photography, and movies.", is_active: true},
{name: "Akemi Furuyama", title: "Rutgers Women's Ministry Leader", image_path: "leaders-akemi", position: 2, bio: "Akemi lived in Northern California her entire life prior to moving to the East Coast. She graduated from the University of California, Davis with a Human Development major and Education minor. Akemi taught elementary school for 8 years. Her current job is investing in and developing the life of her two young boys, Isaiah and Micah. Through these various life changes, the one constant has been God who has strengthened Akemi's true identity as His precious daughter, which is of greater value than serving Him or any of her roles. Akemi likes to support her husband in ministry, meet up with sisters in Christ, and host dinner parties. She enjoys spending time with her family, taking pictures, and baking.", is_active: true},
{name: "Daniel Huang", title: "Rutgers Men's Team Leader", image_path: "leaders-bigd", position: 3, bio: "Efficient, logistically oriented, athletic, traveler, adventurer, resourceful, effective, meticulous, chill, and sensitive are all various ways to describe Daniel. Some of his favorite things are ice cream, OJ, and boba. If he could, he would want to travel the world or flip houses as a hobby. He's a graduate of USC in structural engineering, and in this current stage of life, he has committed himself to serve God on the Rutgers campus. His journey with God started during childhood, but he really began to blossom in the summer before his freshman year of university. As a result, his heart grew for God's worship, kingdom, and will to be here on earth and for the nations to respond in worship. One of the biggest ways he was touched was when God promised him through Jeremiah 29:11 that He had a hope and future and that God would help him get through college, which he saw fulfilled during his college years.", is_active: true},
{name: "Joe Lee", title: "Rutgers Men's Team Leader", image_path: "leaders-joe", position: 4, bio: "Joe Lee is a born and raised Jersey boy. He attended Rutgers for his Bachelor's in Psychology, The College of New Jersey for his Master's in Counseling, and is currently working as a school counselor. He was introduced to ICA his freshman year by his discipler Chan Sohn during STP. He came to staff at the east coast STP twice in the following years and grew to love the ministry. When ICA decided to come to Rutgers, Joe Lee was ecstatic and was ready to serve right away. Joe loves to dabble in music, sports, and various forms of gaming.", is_active: true},
{name: "David Lee", title: "Rutgers Men's Team Leader", image_path: "leaders-david", position: 5, bio: "David is dedicated to pursuing his life promise in Matthew 9:35-36: to follow in the footsteps of Jesus Christ by preaching, teaching, and healing. This promise has led him from USC to Mongolia to Taiwan, with plenty of opportunities to teach, preach, and heal along the way. A recent graduate from USC who studied biology and Chinese, he is generally considered by his brothers and sisters to be a \"character,\" but he's still unsure whether his scooter, his penchant for quips and one-liners, or his obsession with trivia is responsible for such a reputation.", is_active: true}
]);

# Create relation between Campus and CampusLeader

usc_leaders.each do |leader|  
  CampusCampusLeader.create(campus: usc, campus_leader: leader)
end

ucla_leaders.each do |leader|
  CampusCampusLeader.create(campus: ucla, campus_leader: leader)
end

uci_leaders.each do |leader|
  CampusCampusLeader.create(campus: uci, campus_leader: leader)
end

cal_leaders.each do |leader|
  CampusCampusLeader.create(campus: cal, campus_leader: leader)
end

rutgers_leaders.each do |leader|
  CampusCampusLeader.create(campus: rutgers, campus_leader: leader)
end

# Create Student Leaders

rutgers_student_leaders = StudentLeader.create([
{name: "Fangzhou Li", title: "President", image_path: "campus/leaders/student/jojo", position: 1, is_active: true, campus: rutgers},
{name: "Andrew Lowe", title: "Vice President", image_path: "campus/leaders/student/andrewl", position: 2, is_active: true, campus: rutgers},
{name: "Yaxin Chen", title: "Treasurer", image_path: "campus/leaders/student/yaxin", position: 3, is_active: true, campus: rutgers}
]);

# Create Small Groups

usc_small_groups = CampusSmallGroup.create([
{name: "Freshman Guys", current_study: "7 Miracles", location_and_time: "TBD", leaders: "TBD", position: 1},
{name: "Freshman Girls", current_study: "7 Miracles", location_and_time: "TBD", leaders: "TBD", position: 2},
{name: "Sophomore Guys", current_study: "TBD", location_and_time: "TBD", leaders: "TBD", position: 3},
{name: "Sophomore Girls", current_study: "TBD", location_and_time: "TBD", leaders: "TBD", position: 4},
{name: "Junior/Senior Guys", current_study: "TBD", location_and_time: "TBD", leaders: "TBD", position: 5},
{name: "Junior/Senior Girls", current_study: "TBD", location_and_time: "TBD", leaders: "TBD", position: 6},
{name: "Grad Guys", current_study: "TBD", location_and_time: "TBD", leaders: "TBD", position: 7},
{name: "Grad Girls", current_study: "TBD", location_and_time: "TBD", leaders: "TBD", position: 8}
]);

ucla_small_groups = CampusSmallGroup.create([
{name: "Freshman Guys", current_study: "Who is Jesus?", location_and_time: "TBD", leaders: "Jack Cao", contact_info: "(408) 219-4950", position: 1},
{name: "Freshman Girls", current_study: "Who is Jesus?", location_and_time: "TBD", leaders: "Jessie Cao", contact_info: "(408) 396-5321", position: 2},
{name: "Sophomore Guys", current_study: "Design for Discipleship Series", location_and_time: "TBD", leaders: "Paul Lee, Josh Molitoris", contact_info: "(562) 229-2614, (714) 833-1401", position: 3},
{name: "Sophomore Girls", current_study: "Design for Discipleship Series", location_and_time: "TBD", leaders: "Amy Chen, Yvonne Li", contact_info: "(650) 892-8323, (650) 255-2266", position: 4},
{name: "Junior Guys", current_study: "Design for Discipleship Series", location_and_time: "TBD", leaders: "Paul Lee, Josh Molitoris", contact_info: "(562) 229-2614, (714) 833-1401", position: 5},
{name: "Junior Girls", current_study: "Design for Discipleship Series", location_and_time: "TBD", leaders: "Jessie Cao", contact_info: "(408) 396-5321", position: 6},
{name: "Senior Guys", current_study: "Design for Discipleship Series", location_and_time: "TBD", leaders: "Paul Lee, Josh Molitoris", contact_info: "(562) 229-2614, (714) 833-1401", position: 7},
{name: "Senior Girls", current_study: "Design for Discipleship Series", location_and_time: "TBD", leaders: "Yvonne Li", contact_info: "(650) 255-2266", position: 8}
]);

uci_small_groups = CampusSmallGroup.create([
{name: "Freshman Guys", current_study: "Who is Jesus?", location_and_time: "TBD", leaders: "TBD", position: 1},
{name: "Freshman Girls", current_study: "Who is Jesus?", location_and_time: "TBD", leaders: "TBD", position: 2},
{name: "Sophomore/Junior Guys", current_study: "TBD", location_and_time: "TBD", leaders: "TBD", position: 3},
{name: "Junior/Senior Guys", current_study: "TBD", location_and_time: "TBD", leaders: "TBD", position: 4}
]);

cal_small_groups = CampusSmallGroup.create([
{name: "Inductive Bible Study", current_study: "TBD", location_and_time: "Weekly (TBD)", leaders: "Timothy Liu", contact_info: "(214) 707-2818", position: 1},
{name: "Reading from the New Testament", current_study: "New Testament", location_and_time: "Saturday nights", leaders: "Timothy Liu", contact_info: "(214) 707-2818", position: 2}
]);

rutgers_small_groups = CampusSmallGroup.create([
{name: "Bible Study", current_study: "TBD", location_and_time: "TBD", leaders: "TBD", position: 1}
]);

usc_small_groups.each do |small_group|
  small_group.campus = usc
  small_group.save
end

ucla_small_groups.each do |small_group|
  small_group.campus = ucla
  small_group.save
end

uci_small_groups.each do |small_group|
  small_group.campus = uci
  small_group.save
end

cal_small_groups.each do |small_group|
  small_group.campus = cal
  small_group.save
end

rutgers_small_groups.each do |small_group|
  small_group.campus = rutgers
  small_group.save
end
