Rake::Task["assets:precompile"].enhance do
  if not Rails.env.development?
    puts 'my assets:precompile hook is started!'
    ["#{Dir.pwd}/public/", "#{Dir.pwd}/app/assets/"].each do |dir_path|
      records = Dir.glob("#{dir_path}**/*")
      records.each do |f|
        if f =~ /.*.png$/ or
          f =~ /.*.jpg$/ or
          f =~ /.*.gif$/ or
         f =~ /.*.ico$/ or
          f =~ /.*.eot$/ or
          f =~ /.*.svg$/ or
          f =~ /.*.woff$/ or
          f =~ /.*.ttf$/ or
          f =~ /.*.otf$/ or
          f =~ /.*.css$/ or
          f =~ /.*.js$/ or
          f =~ /.*.sass$/ or
          f =~ /.*.css$/ or
          f =~ /.*.scss$/ or
          f =~ /.*.coffee$/ or
          f =~ /.*.wav$/ then
          File.delete(f) if File.file?(f)
          puts "removing #{f}"
        end
      end
      puts Dir.glob("#{dir_path}**/*")
    end
    puts 'my assets:precompile hook is finished!'
  else
    puts "can't run in development"
  end
end
