# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Create Campuses

usc = Campus.create(school_name: "USC", org_name: "USC ICA", keywords: "USC, student organization, campus fellowship, fellowship, discipleship, evangelism, witnessing, navigators, missions, navs, ministry", description: "USC In Christ Alone (ICA) is a recognized student organization at USC that welcomes both believers and non-believers. We have a strong emphasis on discipleship and seeking and saving the lost. Our desire is to know Christ and make Christ known on our campus and around the world. We hold weekly small group Bible studies and large group meetings along with other fun activities.", rally_name: "Large Group Rally", rally_datetime: "Thursday, 6:30pm", rally_location: "VKC 156", church_name: "Church", church_datetime: "Sunday Service begins at 9:45am", church_location: "SGM 101", announcements_bg_color1_class: "bg-gold", announcements_bg_color2_class: "bg-red", fb_campus_link: "https://www.facebook.com/groups/5748715849/?ref=br_tf", fb_link_class: "usc-link", gcal_path: "https://www.google.com/calendar/embed?src=uscinchristalone%40gmail.com&ctz=America/Los_Angeles", url_key: "usc")

ucla = Campus.create(school_name: "UCLA", org_name: "Bruing ICA", keywords: "UCLA, student organization, campus fellowship, fellowship, discipleship, evangelism, witnessing, navigators, missions, navs, ministry", description: "Brothers and sisters committed to worshipping Christ and making Him known.", rally_name: "Large Group Rally", rally_datetime: "Wednesday, 6:30pm", rally_location: "Haines A44", church_name: "Church", church_datetime: "Pickup time: 9:00am", church_location: "Pickup location: De Neve Turnaround", announcements_bg_color1_class: "bg-gold", announcements_bg_color2_class: "bg-ucla-blue", fb_campus_link: "https://www.facebook.com/groups/5175699521/", fb_link_class: "usc-link", gcal_path: "https://www.google.com/calendar/embed?src=icabruins%40gmail.com&ctz=America/Los_Angeles", url_key: "ucla")

uci = Campus.create(school_name: "UCI", org_name: "Irvine ICA", keywords: "UCI, student organization, campus fellowship, fellowship, discipleship, evangelism, witnessing, navigators, missions, navs, ministry", description: "Brothers and sisters committed to worshipping Christ and making Him known.", rally_name: "Large Group Rally", rally_datetime: "Thursday, 6:30pm", rally_location: "TBD", church_name: "Church", church_datetime: "Pickup time: 8:45am", church_location: "Pickup location: Please contact driver", announcements_bg_color1_class: "bg-gold", announcements_bg_color2_class: "bg-ucla-blue", fb_campus_link: "https://www.facebook.com/groups/28628738058/", fb_link_class: "usc-link", gcal_path: "https://www.google.com/calendar/embed?src=irvineica%40gmail.com&ctz=America/Los_Angeles", url_key: "uci")

rutgers = Campus.create(school_name: "Rutgers", org_name: "Rutgers ICA", keywords: "Rutgers, student organization, campus fellowship, fellowship, discipleship, evangelism, witnessing, navigators, missions, navs, ministry", description: "We have a strong emphasis on discipleship and seeking and saving the lost. Our desire is to know Christ and make Christ known on our campus and around the world. We hold weekly small group Bible studies and large group meetings along with other fun activities.", rally_name: "Large Group Rally", rally_datetime: "Wednesday, 6:30pm", rally_location: "TBD", church_name: "Graceway Presbyterian Church", church_datetime: "Sunday Service begins at 11:00am", church_location: "New Brunswick Theological Seminary, 35 Seminary Place, New Brunswick, NJ 08901", announcements_bg_color1_class: "bg-grey-rutgers", announcements_bg_color2_class: "bg-red-rutgers", fb_campus_link: "https://www.facebook.com/groups/893558397405911/", fb_link_class: "rutgers-link", gcal_path: "https://www.google.com/calendar/embed?src=90v078d5jo8ai8k0cfv5jjjhq8%40group.calendar.google.com&ctz=America/New_York", url_key: "rutgers")

# Create Campus Leaders

usc_leaders = CampusLeader.create([
{name: "Albert Cho", title: "USC Minsitry Leader", image_path: "leaders-albert", position: 1, bio: "Upon graduation of high school, God sovereignly led Albert to Los Angeles, California to attend USC from his hometown of Houston, Texas. At USC, where he began to develop a deeper relationship with God. Blessed by discipleship and training, Albert decided to become a campus leader at USC to pass on the blessings he received as an undergrad while simultaneously beginning to work full-time as a software engineer at DIRECTV. Albert's childhood dream was to become a professional basketball player, but he decided to settle as an engineer when he stopped growing at 5'8\". To anyone gullible enough, Albert likes to tell tales about his pet horse and the dirt roads of Texas."},
{name: "Ethan Chan", title: "USC Men's Team Leader", image_path: "leaders-ethan", position: 2, bio: "An enthusiastic evangelist and loyal brother, Ethan's life was changed when he grew a love for quiet time and seeing God's love through His Word. He now leads the sophomore and junior small group, disciples younger men, and is working toward a progressive Master's degree in Electrical Engineering. Ethan hails from the beautiful state of Hawaii and enjoys playing the ukulele, playing tennis, experimenting in the kitchen, and watching his unsuspecting friends try his kitchen experiments."},
{name: "Brenda Lee", title: "USC Women's Ministry Leader", image_path: "leaders-brenda", position: 3, bio: "Brenda came to USC ICA during her freshman year. Throughout her undergrad years, which was a pivotal time of being humbled by God and finding her identity in Christ, she continually experienced the depths of God's love for her, and began to see the importance of a life-long commitment to pursuing and following God above all else, as well as the importance of passing on this conviction to others through discipleship and evangelism. She is currently a 2nd year graduate dental student at USC and hopes to use dentistry in the future to care for and minister to patients, whether in a local or overseas setting. In her free time, she likes to go to the cinema, play badminton/piano, eat sweets, and spend time with friends and family."},
{name: "David Lee", title: "USC Men's Team Leader", image_path: "leaders-david", position: 4, bio: "David is dedicated to pursuing his life promise in Matthew 9:35-36: to follow in the footsteps of Jesus Christ by preaching, teaching, and healing. This promise has led him from USC to Mongolia to Taiwan, with plenty of opportunities to teach, preach, and heal along the way. A recent graduate from USC who studied biology and Chinese, he is generally considered by his brothers and sisters to be a \"character,\" but he's still unsure whether his scooter, his penchant for quips and one-liners, or his obsession with trivia is responsible for such a reputation."},
{name: "Jennifer Hang", title: "USC Women's Team Leader", image_path: "leaders-jen", position: 5, bio: "God's faithful pursuit of Jen's heart led her to her freshmen year at USC where she saw, for the first time, the magnitude of God's love for her and His unique ability to fill and satisfy her in every way. Armed with these transforming truths and a persevering spirit, Jen spent the remainder of her undergrad years growing in her relationship with God and seeking His will for her life. Now, having graduated, she works full-time while also serving in the ministry at USC. When asked about favorite activities, Jen has no particular preferences - she simply enjoys being around those whom she loves, regardless of what they're doing. She is, however, especially fond of breakfast food, graphic design and heart-to-heart conversations."},
{name: "Kezia Rusli", title: "USC Women's Team Leader", image_path: "leaders-kezia", position: 6, bio: "Kezia really discovered a love for God and His Word in her first years of college at USC, despite having grown up in the church. Now she loves reading the Word and inviting others to discover God's fingerprints throughout the Bible with her in serving and leading Bible studies. Kezia is currently a first-year graduate student studying occupational therapy at USC and looks forward to seeing God use OT to transform her and her ministry to the people she encounters. She enjoys playing any and all board games, organizing things, and going on trips to the playground."}
])

ucla_leaders = CampusLeader.create([
{name: "Jack Cao", title: "UCLA Ministry Leader", image_path: "leaders-jack", position: 1, bio: "Jack Cao was born in China and came to the US when he was 10. He grew up not knowing God, but became a Christian in high-school when God lead him to read the Bible on his own through a time of struggle. He became a part of our sister ministry in UC Berkeley, where he received his Bachelor's in Electrical Engineering. During that time he came to a greater understanding of God's love and also God's call to discipleship. After graduating, he came to UCLA to get his Master's in EE and support our Bruin ICA ministry. Always willing to lend a helping hand, Jack's spiritual upbringing at Cal makes him an excellent shepherd and brings a fresh perspective among his brothers and sisters. In his spare time, he likes to cook, hang out with people, run, and skip rocks by the river."},
{name: "Amy Chen", title: "UCLA Women's Ministry Leader", image_path: "leaders-amy", position: 2, bio: "Amy was introduced to the gospel by a staff member at Bruin ICA in 2006 during her freshman year, when she received Jesus Christ as her Lord and Savior. The next year, she went on VSET missions and was amazed at the saving grace and power of God for other people. She has labored as a ministry servant and disciple-maker ever since. In addition, she currently works full-time in the UCLA School of Medicine. Amy loves talking to people, exploring new music and food, going on spontaneous adventures, visiting coffee and tea shops, giving hugs, and has a quirky curiosity for many random interests."},
{name: "Elaine Wong", title: "UCLA Women's Ministry Leader", image_path: "leaders-elaine", position: 3, bio: "Elaine didn't grow up having a Christian background. Her mom used to be a strong Buddhist, while her dad had no religion. She herself didn't have any religion, but believed in a higher being. In junior high, in a dark time of her and her family's life, she called out to God from the bottom of her heart, and God saved her and her family, showing her that He was there and true and did a 180 change in her family's life. Elaine, her mom, and her sister all came to know Christ. Ever since that time, Elaine knew she wanted to live for God and His will. She is now a PhD student at UCLA, Environmental Engineering major with an emphasis in water treatment, and a teaching assistant at UCLA. She loves to dance, disciple, pray, eat good food, and have quality time with her friends and husband."},
{name: "Jessie Yeh", title: "UCLA Women's Ministry Leader", image_path: "leaders-jessie", position: 4, bio: "Jessie recommitted her life to Christ in her freshman year at UCLA, and even after graduating in 2012, she continues to be amazed at His faithfulness, patience, and love for her. Always watching out for her brothers and sisters, her laughter and timely encouragements are guaranteed to brighten anyone's day. Currently, she works full-time in Westwood, while continuing to serve with ICA in hopes of helping others know Christ and experience joy in following Him. In her spare time, Jessie enjoys delighting in the simple things including but not limited to the smell of fresh bread, listening to people's laughs, lattes, terrible puns, and noodle soup."},
{name: "Paul Lee", title: "Part-Time Staff", image_path: "leaders-paul", position: 5, bio: "A loving and supportive brother to many, Paul is known for his vocal techniques and audacious comments. He first transferred to UCLA and joined ICA in his junior year, and has continued to serve on campus after graduation. Paul is a humble servant and a man of prayer, who loves the Word. He is a great listener and genuinely enjoys having deep conversations, along with watching Pokemon, taking selfies, playing ball, and shooting candid videos of his friends."},
{name: "Sarah Chacon", title: "Part-Time Staff", image_path: "leaders-sarah", position: 6, bio: "Though she hails from Sylmar, California, Sarah is not your typical "valley girl." She is an avid learner of different languages and cultures, and loves engaging with people from all different walks of life to help them know Christ. After graduating from UCLA in 2013, Sarah began volunteering as a part-time staff with ICA, and can now be spotted regularly on campus sharing the love of Jesus with students, leading bible studies, and engaging in one-to-one discipleship. Sarah has a passion for music, languages, social justice, plants, Adventure Time, and Korean pop music."},
{name: "Josh Molitoris", title: "UCLA Men's Team Leader", image_path: "leaders-josh", position: 7, bio: "Josh spent the first year of his college experience at UCLA as a nominal Christian, but soon realized that there is much more to life than what society so often emphasizes. After experiencing God's love and mercy at ICA's Winter Conference in 2012, it became clear to Josh that he ought to make his relationship with God a priority in his life. Since then he has become a part of the  UCLA servants team, leads Bible studies, and meets up with those who are interested in learning more about Christianity. Apart from spending time serving the ministry, Josh enjoys playing sports as well as playing and listening to music."}
]);

uci_leaders = CampusLeader.create([
{name: "Michael Wong", title: "UCI Ministry Director", image_path: "leaders-mike", position: 1, bio: "The Lord gave Michael a vision for disciple-making and evangelism late in high school, and he went on to receive more training with the Navigators during his undergraduate years at UCLA. He continued on the staff of the Navigators and ICA at UCLA for another four years before being called to pioneer a new campus ministry at UC Irvine. He continues to share the gospel on campus, lead Bible studies and fellowship meetings, and disciple students on a full-time basis. He recently married his long-time friend and colaborer, Elaine, and is attending Talbot Theological Seminary."},
{name: "Caleb Molitoris", title: "UCI Ministry Leader", image_path: "leaders-caleb", position: 2, bio: "As a missionary's kid, Caleb was exposed to Christianity at a young age. Having been raised in Lutheran churches and schools, Caleb had a solid understanding of who Jesus is and what He taught. However, he did not experience the blessings of having a personal relationship with Christ until his college years at UCLA. Because he was blessed by those who poured into him while he was a student, Caleb was moved to personally invest in the lives of people. Caleb graduated from UCLA with a BS in electrical engineering in 2012, and is now working at Intel while serving as associate assistant director at UCI ICA."},
{name: "Elaine Wong", title: "UCI Women's Ministry Leader", image_path: "leaders-elaine", position: 3, bio: "Elaine didn't grow up having a Christian background. Her mom used to be a strong Buddhist, while her dad had no religion. She herself didn't have any religion, but believed in a higher being. In junior high, in a dark time of her and her family's life, she called out to God from the bottom of her heart, and God saved her and her family, showing her that He was there and true and did a 180 change in her family's life. Elaine, her mom, and her sister all came to know Christ. Ever since that time, Elaine knew she wanted to live for God and His will. She is now a PhD student at UCLA, Environmental Engineering major with an emphasis in water treatment, and a teaching assistant at UCLA. She loves to dance, disciple, pray, eat good food, and have quality time with her friends and husband."},
{name: "Bernadette Saldana", title: "Part-Time Staff", image_path: "leaders-bern", position: 4, bio: "Bernadette may be one of the friendliest people you will ever meet. Filipino on the outside, and Korean at heart, she is an avid learner of different languages and cultures, and loves relating with people from all different walks of life to help them know Jesus. Shortly after receiving her Master's degree at UCI in 2013, Bernadette began volunteering as a part-time staff with ICA while working as a private tutor. Bernadette has a passion for music, kids, international ministry, ESL, teaching, and Korean pop music. She can usually be spotted around ring road sharing Christ's love in its various forms, so if you see her, make sure to say hi!"},
{name: "Michelle Yi", title: "Part-Time Staff", image_path: "leaders-michelle", position: 5, bio: "Michelle spent her undergraduate years at Brandeis University, where her eyes were opened to the truth. In her church, Chinese Bible Church of Greater Boston, she served as a leader in its college fellowship and discipled girls in her campus. As she concluded her time in Massachusetts, she decided to join ICA as a part-time staff member in UC Irvine for training for the next two years. Michelle hopes to fall more deeply in love with Jesus as she serves and grows in fellowship with ICA. She lived in Seoul, South Korea for 9 years, and enjoys playing soccer and reading."}
]);

rutgers_leaders = CampusLeader.create([
{name: "Danny Furuyama", title: "Rutgers Ministry Leader", image_path: "leaders-danny", position: 1, bio: "Danny Furuyama attended University of California, Los Angeles. There he studied electrical engineering and participated in a Christian fellowship group called the Navigators where he served on staff for three years. In 2003, Danny and two others pioneered a new chapter at UC Berkeley. In 2009, together with Vieng Wong, they started Living Hope Evangelical Church. Danny has also led several teams on Volunteer Summer English Teachers (VSET) in East Asia, Mongolia, Kyrgyzstan, Kazakhstan, and Turkey. In 2015, Danny is starting a new chapter at Rutgers University and serving as the youth pastor at Graceway Presbyterian Church. He is married to Akemi and have two sons named Isaiah and Micah. Danny also enjoys sports, board games, cooking, photography, and movies."},
{name: "Akemi Furuyama", title: "Rutgers Women's Ministry Leader", image_path: "leaders-akemi", position: 2, bio: "Akemi lived in Northern California her entire life prior to moving to the East Coast.  She graduated from the University of California, Davis with a Human Development major and Education minor.  Akemi taught elementary school for 8 years.  Her current job is investing in and developing the life of her two young boys, Isaiah and Micah.  Through these various life changes, the one constant has been God who has strengthened Akemi's true identity as His precious daughter, which is of greater value than serving Him or any of her roles.  Akemi looks forward to supporting her husband in ministry and meeting up with sisters in Christ.  She enjoys spending time with her family, taking pictures, and baking."}
]);

# Create relation between Campus and CampusLeader

for leader in usc_leaders
  CampusCampusLeader.create(campus: usc, campus_leader: leader)
end

for leader in ucla_leaders
  CampusCampusLeader.create(campus: ucla, campus_leader: leader)
end

for leader in uci_leaders
  CampusCampusLeader.create(campus: uci, campus_leader: leader)
end

for leader in rutgers_leaders
  CampusCampusLeader.create(campus: rutgers, campus_leader: leader)
end

# Create Small Groups

usc_small_groups = CampusSmallGroup.create([
{name: "Freshman Guys", current_study: "Who is Jesus?", location_and_time: "Tuesdays 8pm @ THH 105", leaders: "Albert & Ethan", contact_info: "", position: 1},
{name: "Freshman Girls", current_study: "Who is Jesus?", location_and_time: "Tuesdays 8pm @ THH 107", leaders: "Brenda & Kezia", contact_info: "", position: 2},
{name: "Sophomore Guys", current_study: "The Spirit-Filled Follower of Jesus (DFD 2)", location_and_time: "Mondays 8pm @ Adams Apt", leaders: "Albert & Ethan", contact_info: "", position: 3},
{name: "Sophomore Girls", current_study: "The Spirit-Filled Follower of Jesus (DFD 2)", location_and_time: "Tuesdays 7pm @ SOS B50", leaders: "Jen & Nelly", contact_info: "", position: 4},
{name: "Junior/Senior Guys", current_study: "Growing in Discipleship (DFD 6)", location_and_time: "Fridays 4pm @ Adams Apt", leaders: "David & Ethan", contact_info: "", position: 5},
{name: "Junior/Senior Girls", current_study: "Walking with Christ (DFD 3)", location_and_time: "Wednesdays 8pm @ City Park", leaders: "Jen & Kezia", contact_info: "", position: 6},
{name: "Grads", current_study: "TBD", location_and_time: "TBD", leaders: "Pastor Min", contact_info: "", position: 7},
{name: "International Students", current_study: "Who is Jesus?", location_and_time: "Wednesdays 8pm @ THH 107", leaders: "David & Brenda", contact_info: "", position: 8}
]);

ucla_small_groups = CampusSmallGroup.create([
{name: "Freshman Guys", current_study: "Who is Jesus?", location_and_time: "Tuesdays 7pm", leaders: "Charles Paucar, Josh Molitoris", contact_info: "(562) 229-2614, (714) 833-1401", position: 1},
{name: "Freshman Girls", current_study: "Who is Jesus?", location_and_time: "Tuesdays 7pm", leaders: "Jessie Yeh, Amy Chen", contact_info: "(408) 396-5321, (650) 892-8323", position: 2},
{name: "Sophomore Guys", current_study: "", location_and_time: "Tuesdays 7pm", leaders: "Paul Lee", contact_info: "(562) 547-6792", position: 3},
{name: "Sophomore Girls", current_study: "", location_and_time: "Tuesdays 7pm", leaders: "Tina Sun, Yvonne Li", contact_info: "(310) 819-2936, (650) 255-2266", position: 4},
{name: "Junior Guys", current_study: "", location_and_time: "Tuesdays 7pm", leaders: "Paul Lee", contact_info: "(562) 547-6792", position: 5},
{name: "Junior Girls", current_study: "", location_and_time: "Tuesdays 7pm", leaders: "Sarah Chacon", contact_info: "(818) 606-2294", position: 6},
{name: "Senior Guys", current_study: "", location_and_time: "Mondays 7:30pm", leaders: "Jack Cao", contact_info: "(408) 219-4950", position: 7},
{name: "Senior Girls", current_study: "", location_and_time: "Saturdays 9am", leaders: "Amy Chen, Elaine Wong", contact_info: "(650) 892-8323, (562) 293-8887", position: 8}
]);

uci_small_groups = CampusSmallGroup.create([
{name: "Freshman Guys", current_study: "Who is Jesus?", location_and_time: "TBD", leaders: "TBD", contact_info: "", position: 1},
{name: "Freshman Girls", current_study: "Who is Jesus?", location_and_time: "TBD", leaders: "TBD", contact_info: "", position: 2},
{name: "Sophomore/Junior Guys", current_study: "TBD", location_and_time: "TBD", leaders: "TBD", contact_info: "", position: 3},
{name: "Junior/Senior Guys", current_study: "TBD", location_and_time: "TBD", leaders: "TBD", contact_info: "", position: 4}
]);

rutgers_small_groups = CampusSmallGroup.create([
{name: "Bible Study", current_study: "TBD", location_and_time: "TBD", leaders: "TBD", contact_info: "", position: 1}
]);

for small_group in usc_small_groups
  small_group.campus = usc
end

for small_group in ucla_small_groups
  small_group.campus = ucla
end

for small_group in uci_small_groups
  small_group.campus = uci
end

for small_group in rutgers_small_groups
  small_group.campus = rutgers
end
