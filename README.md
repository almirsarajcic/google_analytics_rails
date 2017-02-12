# Google Analytics for Ruby on Rails
This gem helps with Google Analytics tracking. It supports Turbolinks 5.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'google_analytics_rails'
```

And then execute:
```bash
$ bundle
```

Add the following to your `application.js` file:
```
//= require google_analytics
```

Set `GOOGLE_ANALYTICS_ID` evironment variable.  
You can add [`dotenv-rails` gem](https://github.com/bkeepers/dotenv) to set it using `.env` file. The file should look like this:
```
GOOGLE_ANALYTICS_ID=UA-123456-1
```

If you don't want to use environment variable you can create initializer
`config/initializers/google_analytics_rails.rb` containing:
```
GoogleAnalyticsRails.google_analytics_id = "YOUR GOOGLE ANALYTICS ID"
```

After that add this line to `<head>` in your layouts:
```
<%= google_analytics_meta_tag %>
```
Make sure you add it before `stylesheet_link_tag` and `javascript_include_tag`.  
It will contain the meta tag with the ID you've set so it can be used from `google_analytics.coffee` file.

## Contributing
If you find any bug or have an idea for improvement please create new PR or issue.

## License
google_analytics_rails gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Acknowledgments
Thanks to [@reed](https://github.com/reed) for tutorials:  
http://reed.github.io/turbolinks-compatibility/google_analytics.html  
http://reed.github.io/turbolinks-compatibility/google_universal_analytics.html
