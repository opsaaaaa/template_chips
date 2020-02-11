# Template Chips
<!-- SCOPE -->
This gem is built to take a template and replace its keys with the specified content.

A template should always be html, and the keys should be css identifiers, and the content should be html safe.

## Installation

```ruby
gem 'template_chips'
```

or

```
$ gem install template_chips
```

## Usage


NOT IMPLEMENTED YET


```html
my_template_html
...
<div>
    <h1>
        <div id="title"></div>
    </h1>

    <p>
        <div id="description"></div>   
    </p>
</div>
```
```ruby
handling templates
...
my_template = TemplateChips::Template.new()

my_template.html = my_template_html

my_template.mortise( key: 'title' , css: '#title' ) 
my_template.mortise( key: 'desc', css: '#description' )

my_template.input_tag(...)
my_template.form_tag(...)

from = my_template.build_form()
```
```html
form
...
<form ...>
    <div>
        <h1>
            <input ...>
        </h1>

        <p>
            <input ...>
        </p>
    </div>
</form>
```
```ruby
handling documents
...
my_doc = TemplateChips::Document.new()

my_doc.template = my_template

my_doc.tenon['title'] = "Hello World!"
my_doc.tenon['desc'] = "lorem ipsum"

output = my_doc.build_html()
from = my_doc.build_form()
```
```html
output:
...
<div>
    <h1>
        Hello World!
    </h1>

    <p>
        lorem ispum   
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
