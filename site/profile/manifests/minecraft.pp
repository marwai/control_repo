class profile::minecraft {
  include {'minecraft':
    install_dir => '/srv/minecraft',
  }
}
