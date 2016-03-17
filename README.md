## lo-suspenderss

This is a customized fork of [thoughtbot's suspenders](https://github.com/thoughtbot/suspenders).  

The primary differences are:
* Slim templates
* Bootstrap instead of thoughtbot's styles
* Dev tools like ActiveType, Awesome Print, Letter Opener, and Xray

## Installation

First install the lo-suspenders gem:

    gem install lo-suspenders

Then run:

    lo-suspenders projectname

This will create a Rails app in `projectname` using the latest version of Rails.

### Associated services

* Enable [Circle CI](https://circleci.com/) Continuous Integration
* Enable [GitHub auto deploys to Heroku staging and review
    apps](https://dashboard.heroku.com/apps/app-name-staging/deploy/github).

## Gemfile

To see the latest and greatest gems, look at lo-suspenders'
[Gemfile](templates/Gemfile.erb), which will be appended to the default
generated projectname/Gemfile.

It includes application gems like:

* [ActiveType](https://github.com/makandra/active_type) for building simple and
  effective service objects
* [Autoprefixer Rails](https://github.com/ai/autoprefixer-rails) for CSS vendor
  prefixes
* [Bootstrap 4](https://github.com/twbs/bootstrap-rubygem) for CSS and JS
* [Flutie](https://github.com/thoughtbot/flutie) for `page_title` and
  `body_class` view helpers
* [High Voltage](https://github.com/thoughtbot/high_voltage) for static pages
* [jQuery Rails](https://github.com/rails/jquery-rails) for jQuery
* [New Relic RPM](https://github.com/newrelic/rpm) for monitoring performance
* [Normalize](https://necolas.github.io/normalize.css/) for resetting browser
  styles
* [Postgres](https://github.com/ged/ruby-pg) for access to the Postgres database
* [Rack Canonical Host](https://github.com/tylerhunt/rack-canonical-host) to
  ensure all requests are served from the same domain
* [Rack Timeout](https://github.com/heroku/rack-timeout) to abort requests that
  are taking too long
* [Recipient Interceptor](https://github.com/croaky/recipient_interceptor) to
  avoid accidentally sending emails to real people from staging
* [Sidekiq](https://github.com/mperham/sidekiq) for background jobs
* [Simple Form](https://github.com/plataformatec/simple_form) for form markup
  and style
* [Slim](https://github.com/slim-template/slim-rails) for sexy Slim templates
* [Puma](https://github.com/puma/puma) to serve HTTP requests

And development gems like:

* [Awesome Print](https://github.com/michaeldv/awesome_print) for pretty
  printing with `ap`
* [Brakeman](https://github.com/presidentbeef/brakeman) for detecting security
  vulnerabilities
* [Dotenv](https://github.com/bkeepers/dotenv) for loading environment variables
* [Pry Rails](https://github.com/rweng/pry-rails) for interactively exploring
  objects
* [ByeBug](https://github.com/deivid-rodriguez/byebug) for interactively
  debugging behavior
* [Bullet](https://github.com/flyerhzm/bullet) for help to kill N+1 queries and
  unused eager loading
* [Bundler Audit](https://github.com/rubysec/bundler-audit) for scanning the
  Gemfile for insecure dependencies based on published CVEs
* [Letter Opener](https://github.com/ryanb/letter_opener) for previewing emails
   in the browser
* [Spring](https://github.com/rails/spring) for fast Rails actions via
  pre-loading
* [Web Console](https://github.com/rails/web-console) for better debugging via
  in-browser IRB consoles.
* [Quiet Assets](https://github.com/evrone/quiet_assets) for muting assets
  pipeline log messages
* [Xray](https://github.com/brentd/xray-rails) for inspecting view partials in
  the browser

And testing gems like:

* [Capybara](https://github.com/jnicklas/capybara) and
  [Capybara Webkit](https://github.com/thoughtbot/capybara-webkit) for
  integration testing
* [Factory Girl](https://github.com/thoughtbot/factory_girl) for test data
* [Formulaic](https://github.com/thoughtbot/formulaic) for integration testing
  HTML forms
* [RSpec](https://github.com/rspec/rspec) for unit testing
* [RSpec Mocks](https://github.com/rspec/rspec-mocks) for stubbing and spying
* [Shoulda Matchers](https://github.com/thoughtbot/shoulda-matchers) for common
  RSpec matchers
* [Timecop](https://github.com/ferndopolis/timecop-console) for testing time

## Other goodies

lo-suspenders also comes with:

* The [`./bin/setup`][setup] convention for new developer setup
* The `./bin/deploy` convention for deploying to Heroku
* Rails' flashes set up and in application layout
* A few nice time formats set up for localization
* `Rack::Deflater` to [compress responses with Gzip][compress]
* A [low database connection pool limit][pool]
* [Safe binstubs][binstub]
* [t() and l() in specs without prefixing with I18n][i18n]
* An automatically-created `SECRET_KEY_BASE` environment variable in all
  environments
* Configuration for [CircleCI][circle] Continuous Integration (tests)
* [Rack::Tracker](https://github.com/railslove/rack-tracker) for easy tracking

[setup]: https://robots.thoughtbot.com/bin-setup
[compress]: https://robots.thoughtbot.com/content-compression-with-rack-deflater
[pool]: https://devcenter.heroku.com/articles/concurrency-and-database-connections
[binstub]: https://github.com/thoughtbot/suspenders/pull/282
[i18n]: https://github.com/thoughtbot/suspenders/pull/304
[circle]: https://circleci.com/docs

## Credits

lo-suspenders is created by [aguynamedloren](https://github.com/aguynamedloren),
based on [suspenders](https://github.com/thoughtbot/suspenders) by
[thoughtbot, inc](https://thoughtbot.com/community).
