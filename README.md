# Template Chips
    A Template engine Built on liquid


## Installation

```ruby
gem 'template_chips'
```

or

```
$ gem install template_chips
```

## Usage

## Examples

```html
liquid_layout
...
<div>
    <h1>{{ title }}</h1>

    <p>{{ body }}</p>
    
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
output
...
<div>
    <h1>
        Hello World!
    </h1>

    <p>
        lorem...   
    </p>
    
    <p>
        Standardized policy  
    </p>
</div>
```

## Development

TODO: Put something here
<!-- After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org). -->

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/template_chips.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
