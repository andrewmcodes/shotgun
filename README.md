# Medals

Ruby on Rails application initialized with [Hix on Rails][hixonrails].

## System dependencies

- Ruby version: 2.6.6
- Rails version: 6.0.3.1
- Database: PostgreSQL
- Redis installed

## Configuration

Copy an existing sample environment file. Run:
```bash
$ cp .env.sample .env
```

and edit newly created `.env` file. The minimum you are going to need are
credentials to your local PostgreSQL database.

Then, install all the necessary gems:
```bash
bundle install
```

## Database creation

In order to create the database with all the necessary seed data, run:
```bash
$ rails db:create db:schema:load db:seed
```

## How to start the app

Start the Ruby on Rails server with:
```bash
rails server
```
To run Sidekiq, launch another process with:
```bash
bundle exec sidekiq
```

## Code quality checks

The application provides the following code quality analysis tools:

- [Brakeman][brakeman]
- [Fasterer][fasterer]
- [Rails Best Practices][rails-best-practices]
- [Bundler Audit][bundler-audit]

To run them locally:

```bash
$ bundle exec brakeman
$ bundle exec fasterer
$ bundle exec rails_best_practices
$ bundle audit
```

[hixonrails]: https://hixonrails.com
[brakeman]: https://github.com/presidentbeef/brakeman
[fasterer]: https://github.com/DamirSvrtan/fasterer
[rails-best-practices]: https://github.com/flyerhzm/rails_best_practices
[bundler-audit]: https://github.com/rubysec/bundler-audit
