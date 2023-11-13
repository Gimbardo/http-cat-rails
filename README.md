# Http::Cat::Rails

http-cat-rails is a configurable gem that changes every http-error page in your rails application with an image of a cute
little cat, that describes _purrfectly_ the error code (credits for the default images to https://http.cat)

![Example](images/example.png)

## Configuration

This gem is highly customizable: you could even decide to self host your own error images, and use them.  
To change this gem's behaviour, you can create a http_cat_rails.rb inside /config/initializers, and structure it as
follows:

```ruby
Http::Cat::Rails.configure do |c|
  c.base_url = "https://www.myurl.com/"
  c.status_codes = { "404": "code_name", "500": "code_name_2" }
  c.layout = "application"
  c.extension = :jpg
end
```

In this example, if an error 404 is raised, your page will load an image inside your application.html.erb from the following
url: "https://www.myurl.com/404.jpg"

### Base Url (default: "https://http.cat/")

This option is used to set the base url to retrieve images

### Status Codes (default: _a very long hash_)

This option is used to pass an Hash of status codes, to limit them, or change the url visited. The value of each
element must be **unique**, since it's used to define a function.

### Layout (default: "layout_default")

- "application" to embed http error page inside your application.html.erb
- false to don't have a layout
- "layout_default" (default option: just a black background)
- "custom_error_layout" to embed http error page inside "/views/layouts/custom_error_layout.html.erb"

### Extension (default: :jpg)

Extension to insert in the url. Can also be false or nil, to dont include an extension

### CSS

The img tag that contains the image has the following class: "http_error_image"  
You can customize its style using that

## Summary

url_to_visit:
```ruby
"#{base_url}#{code_of_this_error}#{".#{extension}" if extension}"
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem "http-cat-rails"
```

And then execute:

```bash
$ bundle
```

Or install it yourself as:

```bash
$ gem install http-cat-rails
```

Then, you'll need to add this line to your application.rb:

```ruby
config.exceptions_app = self.routes
```

## Troubleshooting

This gem won't work if your application.rb or <your_environment>.rb contains the following line

```ruby
config.consider_all_requests_local = true
```

## Contributing

It's a small project, but if you want to contribute feel free to send a Pull Request, or open an Issue

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
