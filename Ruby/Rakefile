def version
  @version ||= begin
    plist = File.expand_path('../../Terminal Notifiers/notify/Terminal Notifier/Terminal Notifier-Info.plist', __FILE__)
    `/usr/libexec/PlistBuddy -c 'Print :CFBundleShortVersionString' '#{plist}'`.strip
  end
end

def types
  %w(notify success pending failed)
end

def type_file_name(type)
  "tn_#{type}-#{version}"
end

def filenames
  types.map{|type| type_file_name(type)}
end

def zip_file_name(type)
  "#{type_file_name(type)}.zip"
end

def zipfiles
  types.map{|n| zip_file_name(n)}
end

task :clean do
  rm zipfiles
  rm_rf "vendor"
end

desc "Update the vendored terminal notifiers."
task :update_build do
  puts "This needs fixing."
end

desc "Build gem"
task :gem => :update_build do
  sh "gem build terminal-notifier-guard.gemspec"
end

desc "Run specs"
task :spec do
  sh "bundle exec ruby spec/terminal-notifier-guard_spec.rb"
end

task :default => :spec
