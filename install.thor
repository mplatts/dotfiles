class Dotfiles < Thor
  include Thor::Actions

  desc "install", "Install ZSH with Pretzo along with aliases and vim setup"
  def install
    install_zsh

  end

  desc "remove_backups", "Remove all backups"
  def remove_backups
    run "rm -R #{Dir.pwd}/backups"
    run "mkdir #{Dir.pwd}/backups"
    run "mkdir #{Dir.pwd}/backups/zsh"
  end


  # Update prezto:
  # inside "#{Dir.pwd}/prezto" do
  #   run "git checkout runcoms/zshrc"
  #   run "git pull origin master"
  #   run "echo '. #{Dir.pwd}/../my-zsh-config.zsh' >> runcoms/zshrc"
  # end
  # run "git submodule update"

  private

  def install_zsh
    run "ln -sfh #{Dir.pwd}/prezto ~/.zprezto"

    files = [
      "zshrc",
      "zshenv",
      "zprofile",
      "zlogin",
      "zlogout",
      "zpreztorc"
    ]

    time_format = '%d-%m-%Y_%H-%M-%S'
    run "mkdir #{Dir.pwd}/backups/zsh/#{Time.now.strftime(time_format)}"

    files.each do |file|
      run "cp ~/.#{file} #{Dir.pwd}/backups/zsh/#{Time.now.strftime(time_format)}" # Backup
      run "cp #{Dir.pwd}/prezto/runcoms/#{file} ~/.#{file}"
    end

  end

end

# Dir.pwd => /Users/mplatts/Dropbox/dotfiles

 # create_file "filename.txt", data
 #    create_file "filename.txt" do
 #      data
 #    end

 #    remove_file "filename.txt"
 #    copy_file "from.rb", "to.rb"
 #    template "source.erb", "dest.html"      # Parses an ERB file

 #    directory "from/", "to/"                # Copies a directory
 #    empty_directory "dir/"                  # Creates a directory

 #    get "http://x.com/103208", "out.rb"     # Download a file
 #    get "http://x.com/103208", "out.rb" do
 #      content.split("\n").first
 #    end

 #    run "rake test"                         # Run a command
 #    run_ruby_script "foo.rb"                # Takes into account Win32

 #    thor :install                           # Invoke a Thor task

 #    gsub_file "foo.rb", /user=.*/, "user=foo"
 #    prepend_file "foo.sh", "#!/usr/bin/env sh"
 #    inject_into_file "Gemfile", "gem 'rails'", after: "gem 'mysql'"
 #    inject_into_class "controller.rb", Controller do
 #      "  attr_reader :foo"
 #    end

 #    inside "dir/" do                        # Do stuff inside a path
 #      # ...
 #    end