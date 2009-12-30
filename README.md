Shakespeare
===========

Shakespeare is a Ruby on Rails content manager plugin.

Shakespeare allows:

- User-editable page titles, descriptions, meta info and content blocks for dynamic requests
- User editable content-only pages

Shakespeare is a super simple bolt-on CMS for any Rails app.

Installation
============

Shakespeare is easy to install.

As a plugin:

    ./script/plugin install git://github.com/paulca/shakespeare.git

Or as a gem. Add this to your environment.rb:

    config.gem 'shakespeare'

Then generate the migration to create the pages table:

    ./script/generate shakespeare

And run the migration:

    rake db:migrate

Basic Usage
===========

Once Shakespeare is installed, every controller action can now have its own content. You an access this content in the controller or the view with the `page_content` method.

Web Interface
=============

Using Rails' Engines feature, Shakespeare comes with a web interface that is available to your app straight away at `http://localhost:3000/admin/pages`.

By default, this comes with no styling, but you can create a layout in `app/layouts/admin.html.erb`, or set a layout by setting `Shakespare::Settings.layout`

For example, to use your standard application layout, create a `config/initializers/shakespeare.rb` like this:

    Behavior::Settings.layout = 'application'

You can also add before_filters to protect the controller from outsiders:

    Behavior::Settings.before_filters << 'require_admin_user'

Running the tests
=================

You can run the tests by checking out the code into vendor/plugins of a Rails app and running:

    rake

It also comes with a set of cucumber features:

    cucumber

About me
========

I'm Paul Campbell. I'm an avid Ruby on Rails web developer. Follow my ramblings at [http://www.pabcas.com](http://www.pabcas.com)

Follow me on Twitter [http://twitter.com/paulca](http://twitter.com/paulca)

Copyright (c) 2009 Paul Campbell, released under the MIT license