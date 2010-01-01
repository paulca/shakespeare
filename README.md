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

View Helpers
============

In your views, you have access to a number of helpers for generating your page meta-data.

- `page_title` is the title of the page
- `keywords_meta_tag` generates a <meta> tag for the page keywords, or returns nil if it's left blank
- `description_meta_tag` generates a <meta> tag for the page description, or returns nil if it's left blank
- `canonical_link_tag` generates a <link> tag with the canonical URL for the page, if `enable_canonical` is set to true

Web Interface
=============

Using Rails' Engines feature, Shakespeare comes with a web interface that is available to your app straight away at `http://localhost:3000/admin/pages`.

By default, this comes with no styling, but you can create a layout in `app/layouts/admin.html.erb`, or set a layout by setting `Shakespare::Settings.layout`

For example, to use your standard application layout, create a `config/initializers/shakespeare.rb` like this:

    Shakespeare::Settings.layout = 'application'

You can also add before_filters to protect the controller from outsiders:

    Shakespeare::Settings.before_filters << 'require_admin_user'
    
By default, in production, if `Shakespeare::Settings.before_filters` is empty, `/admin/pages` is protected. You can disable this protection by setting `Behavior::Settings.allow_anonymous` to true.

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