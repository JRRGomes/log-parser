## To install RVM and RUBY on Linux

## 1. Add the ppa and install RVM:

```term
sudo apt-add-repository -y ppa:rael-gc/rvm
sudo apt-get update
sudo apt-get install rvm
```
Add your user to `rvm` group

```term
sudo usermod -a -G rvm $USER
```
## 2. Change your terminal window

`Edit` > `Profile preferences` on Profiles look for the tab Command and check `Run command as a login shell`

## 3. Reboot 

## 4. Enable local gemsets

```term
rvm user gemsets
```

## 5. Install ruby

```term
rvm install ruby-3.1.0
```

## To run the app

```term
ruby main.rb
```
## To install and run rspec tests

```term
gem install rspec
rspec
```
	
## References

1. https://github.com/rvm/ubuntu_rvm/blob/master/README.md
2. https://www.theodinproject.com/paths/full-stack-ruby-on-rails/courses/ruby-programming/lessons/introduction-to-rspec