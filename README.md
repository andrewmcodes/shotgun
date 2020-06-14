![Base Branch](https://img.shields.io/badge/base%20branch-trunk-important)
![GitHub License](https://img.shields.io/github/license/andrewmcodes/shotgun)
![OSS Lifecycle](https://img.shields.io/osslifecycle/andrewmcodes/shotgun)

# WIP: Rails Shotgun

Ruby on Rails application initialized with all the good stuff.

## Why is it named Shotgun??

> Shotgunning a beer is the simple act of consuming a beer at a high rate of speed.

The inspiration came from one of my common college activities. Rails Shotgun lets you be as productive as shotgunning a beer is at getting you drunk.

## Setup

Please take note that we are using `trunk` as the base branch.

![Base Branch](https://img.shields.io/badge/base%20branch-trunk-important)

### System dependencies

- Ruby version: 2.6.6
- Rails version: 6.0.3.1
- Database: PostgreSQL
- Redis installed

### Configuration

Copy an existing sample environment file. Run:
```bash
$ cp .env.sample .env
```

and edit newly created `.env` file. You will also need to change the app name (for now). Grep the codebase for `CHANGEME` or use this list:


Then, install all the necessary gems:
```bash
bundle install
```

### Database creation

In order to create the database with all the necessary seed data, run:
```bash
$ rails db:create db:schema:load db:seed
```

### How to start the app

Start the Ruby on Rails server with:
```bash
rails server
```
To run Sidekiq, launch another process with:
```bash
bundle exec sidekiq
```

### Code quality checks

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

[brakeman]: https://github.com/presidentbeef/brakeman
[fasterer]: https://github.com/DamirSvrtan/fasterer
[rails-best-practices]: https://github.com/flyerhzm/rails_best_practices
[bundler-audit]: https://github.com/rubysec/bundler-audit

### Changelog

Coming Soon
<!-- [View our Changelog][changelog] -->

### Contributing

Coming Soon
<!-- [Contributing Guide][contributing] -->

### Code of Conduct

[Code of Conduct][coc]

### License

[MIT][license]


[changelog]: /CHANGELOG.md
[coc]: /CODE_OF_CONDUCT.md
[contributing]: /CONTRIBUTING.md
[license]: /LICENSE
