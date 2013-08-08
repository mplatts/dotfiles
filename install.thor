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
    "gitignore_global",
    "ctags",
    "rspec"
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

