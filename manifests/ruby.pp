define rvm::ruby($version = $title, $user) {
    exec { "set default ${version}":
        command => "rvm --default ${version}",
        user        => $user,
        path        => ['/bin', '/usr/bin', "/home/${user}/.rvm/bin"],
        environment => ["HOME=/home/${user}"],
        require     => Exec["install rvm for ${user}"],
    }
}