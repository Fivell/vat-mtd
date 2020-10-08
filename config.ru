##################################################
##################################################
##  _____              __ _                     ##
## /  __ \            / _(_)                    ##
## | /  \/ ___  _ __ | |_ _  __ _   _ __ _   _  ##
## | |    / _ \| '_ \|  _| |/ _` | | '__| | | | ##
## | \__/\ (_) | | | | | | | (_| |_| |  | |_| | ##
##  \____/\___/|_| |_|_| |_|\__, (_)_|   \__,_| ##
##                           __/ |              ##
##                          |___/               ##
##################################################
##################################################
##           Entrypoint for Sinatra             ##
##################################################
##################################################

## RubyGems ##
## Required for Ubuntu ##
require 'rubygems' # => Necessary for Ubuntu

## Require ##
## This should really have bundler stuff ##
## https://www.oreilly.com/library/view/sinatra-up-and/9781449306847/ch04.html ##
require_relative 'app/app'

## Controllers ##
## These are called separately to the main file - we could put the main file in the controllers directory, but felt like keeping it on the outside ##
Dir["app/controllers/*"].each {|file| require_relative file }

## Sinatra ##
## Changed the following to include different app structure ##
## https://nickcharlton.net/posts/structuring-sinatra-applications.html ##
map('/returns')  { run Returns }
map('/settings') { run Settings }
map('/')         { run App }

##################################################
##################################################
