# PodIdent - Podcast Client Detector without the clutter

## Rationale

### Focus

There are plenty of libraries that can parse and detect user agents in a generic way.

`PodIdent` takes a different approach here: it puts a lot of effort into getting the most used Podcast clients right, leaving the job of detecting browsers and more obscure
devices to generic user agent detecting libraries. 

### Simplicity

Version numbers might be interesting for some use cases, but are not relevant at all to podcasters - podcasters want to know where their listeners are, and what platforms / clients work the best.

There is a great deal of confusion about what is a device, an operating system or a platform in general. To keep things simple, `PodIdent` uses `platform` as a generic term to describe the place where software runs. It can be an iPhone (device), iOS (operating system) or even just an "Apple device" (category).

`PodIdent` has no production dependencies. Keep it simple, and all that.

### Preciseness

User agents are known to be confusing and difficult to understand. Most vendors don't document their user agents explicitly, and most of the detection rules are created by trying and collecting information from other sources.

 This is why `PodIdent` tries to be always as precise as possible (if it knows that a client runs on an iPad, it will return `platform: 'iPad'`, instead of a generic `iOS`.

### Performance, memory usage

 The detection rules always try to match substrings first, before using full-fledged regular expressions. This should make detection a lot faster. Also, since there are not even 100 podcast clients out there, there is no need to support a billion different browsers and devices.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'pod_ident'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pod_ident

## Usage

```ruby
require 'pod_ident'

user_agent = 'AppleCoreMedia/1.0.0.10B500 (iPod; U; CPU OS 6_1_6 like Mac OS X; en_gb)'
result = PodIdent::Detector.detect(user_agent)

puts result.app 
=> 'Apple Podcasts'
puts result.platform 
=> 'iPod'
```

### Bot detection


```ruby
require 'pod_ident'

user_agent = 'Mozilla/5.0 (compatible; archive.org_bot http://archive.org/details/archive.org_bot)'
result = PodIdent::Detector.detect(user_agent)

puts result.app 
=> 'Archive.org'
puts result.bot? 
=> true
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

The detection rules are found as a yaml file under `lib/detection_rules.yml`. 

Please, only edit this file, and afterwards run `bin/parse-rules` in order to generate both the detection rules as a `rb` file for production usage, and the complete rules with their corresponding test cases for testing.

### Update bot detection rules

For the bot detection rules we are using [ user-agents-v2](https://github.com/opawg/user-agents-v2/blob/master/src/bots.json), to import the json of this project and transform it into a yaml file readable by pod-ident you can run the following task: `rake update_bot_rules`.

Once the yml file created run `bin/parse-rules` to generate all rb detection rules files for bots.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/podigee/pod_ident.rb.

## Future implementations

It would be nice to have the following features in future versions:

- bot & crawler detection (instead of having to use a generic user agent parser)
- adding custom detection rules (this can be achieved today by pushing rules into the rules array, but there should be a better way)

