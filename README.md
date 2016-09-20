# Chat
Simple Rails chat plugin that allows users to talk to one or more people at a
time that leverages ActionCable.

## Getting Started

#### Prerequisites
1. This gem relies on ActionCable therefore Rails 5.0.0 is a minimum.
1. For help setting up ActionCable when coming from an old version of Rails, view
[this](https://www.github.com/npezza93/chat/blob/master/action_cable_setup.md).
1. An authentication system must be setup before installing `chat`, like
Devise, Clearance, or your own custom solution. The generator will only run
unless a users table exists.
1. Chat assumes that a `current_user` view helper
method exists.
1. Your connection should be identified by `current_user`. You can learn
more about how to set this up by reading
[here](http://edgeguides.rubyonrails.org/action_cable_overview.html#server-side-components-connections).

#### Installation
Add Chat to your application's Gemfile:

```ruby
gem 'chat'
```

And then execute:
```bash
❯ bundle
```

Run the installer to setup migrations and helpers:
```bash
❯ rails generate chat:install
```

Require chat in your app/assets/javascripts/application.js file:

```
//= require chat
```

Require chat in your app/assets/stylesheets/application.css file

```
 *= require chat
```

Finally the following line to your application.html.erb file or any view file
you'd like Chat available from:
```html
<!--  background is the background color of the launch fab -->
<!--  color is the icon color on the launch fab. Can be light or dark -->
<%= render_chat(background, color) %>
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the
[MIT License](http://opensource.org/licenses/MIT).
