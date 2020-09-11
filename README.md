# Template Chips

A Template engine Built on liquid for the purpose of supporting document standardization software.
The idea is that you have 10 documents that all share a policy section and you want to update that section by editing your 1 template.


## Installation

```ruby
gem 'template_chips'
```

or

```
$ gem install template_chips
```

## Example

```html
liquid_layout
...
<div>
    <h1>{{ title }}</h1>

    <p>{{ body | markdown }}</p>
    
    <p>{{ policy }}</p>
</div>
```
```ruby
template = {
    'policy' => 'Standardized policy',
}

document = {
    'title' => 'Hello World!',
    'body' => 'lorem...'
    'policy' => 'This will be overridden'
}
```


```ruby
output = Chips::Processor.new( liquid_layout, template, document ).render()
```

```html
<div>
    <h1>Hello World!</h1>

    <p>lorem...</p>
    
    <p>Standardized policy</p>
</div>
```

## Development

Run `$ bundle` to get started
Run tests with `$ rspec`

This Gem makes heavy use of [liquid](https://github.com/Shopify/liquid) and takes notes from [jekyll](https://github.com/jekyll/jekyll/). becoming familiar these Gems it is a good idea.

<!-- After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org). -->

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/template_chips.

## License

The gem is open source under the of the [MIT License](https://opensource.org/licenses/MIT).
