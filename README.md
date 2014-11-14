== Overview ==

[hledger](http://hledger.org/) is an easier-to-use implementation of the [ledger](http://www.ledger-cli.org/) accounting system, which uses a simple text file for storing all information. This makes it easy to store in a git repository.

hledger offers both [a tutorial](http://hledger.org/step-by-step.html) and [a manual](http://hledger.org/manual.html) explaining its use.

hledger installation is difficult on non-linux systems. The purpose of this repository is to make it easier to use on them via Vagrant.

== Accessing hledger ==

You can interact with hledger either through a command line interface or from a web interface. Before doing either, you must 

1. [install virtualbox and vagrant](https://www.vagrantup.com/)
1. Clone this git repository
1. Open a terminal and change directories to where you cloned this git repository

=== From the Command Line ===

1. Run `vagrant up`
1. Run `vagrant ssh`
1. Run the `hledger` commands you need

When you are done

1. Run `exit` to logout of the virtual machine
1. Run `vagrant halt` to shutdown the virtual machine

=== From a Web Browser ===

1. Run `vagrant up`
1. Access http://localhost:5000/ from your web browser

When you are done

1. Run `vagrant halt` to shutdown the virtual machine

Note that if you use the edit functionality, hledger will save a numbered backup of the ledger file. Git will ignore these, and you can safely delete them.

== Committing Changes ==

1. Run `git add hledger.journal` to stage your changes.
1. Commit them with `git commit` and provide an explanation of the transaction.
1. Push your changes with `git push`.
