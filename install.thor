class Dotfiles < Thor
  include Thor::Actions

  ZSH_FILES = [
    "zshrc",
    "zshenv",
    "zprofile",
    "zlogin",
    "zlogout",
    "zpreztorc"
  ]

  VIM_FILES = [
    "vimrc",
    "vim"
  ]

  OTHER_FILES = [
    "aprc", # Awesome Print
    "gitconfig",
    "ctags"
  ]

  BACKUP_FOLDER = "dotfiles_backup"

  desc "install", "Install ZSH with Pretzo along with aliases and vim setup"
  def install
    install_zsh
    install_vim
    install_other_files
    install_fonts
    puts "Optional: "
    puts "install gem awesome_print"
    puts "add iterm2 colors to your profile"
  end

  desc "restore", "Restores everything to its original state"
  def restore
    (ZSH_FILES + VIM_FILES).each do |file|
      run "rm ~/.#{file}" # Backup
      run "mv ~/.#{file}-original ~/.#{file}"
    end
  end

  private

  def install_zsh
    run "ln -sfh #{Dir.pwd}/prezto ~/.zprezto"
    run "mkdir ~/#{BACKUP_FOLDER}"

    ZSH_FILES.each do |file|
      run "mv -n ~/.#{file} ~/#{BACKUP_FOLDER}/.#{file}" # -n means don't overwrite
      run "ln -sh #{Dir.pwd}/prezto/runcoms/#{file} ~/.#{file}" # -h means don't follow target symlink (if it is one)
    end

    run "cp #{Dir.pwd}/git-cwd-info.rb ~/bin/"
  end

  def install_vim
    VIM_FILES.each do |file|
      run "mv -n ~/.#{file} ~/#{BACKUP_FOLDER}/.#{file}"
      run "ln -sh #{Dir.pwd}/#{file} ~/.#{file}"
    end

    run "cp -f #{Dir.pwd}/fonts/* ~/Library/Fonts"
  end

  def install_other_files
    OTHER_FILES.each do |file|
      run "mv -n ~/.#{file} ~/#{BACKUP_FOLDER}/.#{file}"
      run "ln -sh #{Dir.pwd}/#{file} ~/.#{file}"
    end
  end

  def install_fonts
    run "cp -f #{Dir.pwd}/fonts/* ~/Library/Fonts"
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
