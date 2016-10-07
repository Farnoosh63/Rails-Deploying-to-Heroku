# to_do



* Ruby version
```
$ brew install ruby-install (v: ruby 2.2.3)
$ brew install chruby
$ brew install rbenv ruby-build

```

* Gem install
```
  $ sudo gem install
  $ bundle install
```

* Configuration

```
$ gem update --system
$ gem install bundler

```

* Database creation
```
$ brew install postgres
$ echo "export PGDATA=/usr/local/var/postgres" >> ~/.bash_profile
$ source ~/.bash_profile
$ postgres
$ pg_ctl start

```



* How to run the app
1. Clone the repository using $ git clone
2. Run $ rake db:create and $ rake db:migrate from the directory you cloned into
3. Run $ rails server
4. Go to http://localhost:3000/lists in a web browser to use the program.
