![Base Branch](https://img.shields.io/badge/base%20branch-main-important)
<!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->
[![All Contributors](https://img.shields.io/badge/all_contributors-2-orange.svg?style=flat-square)](#contributors-)
<!-- ALL-CONTRIBUTORS-BADGE:END -->
![GitHub License](https://img.shields.io/github/license/andrewmcodes/shotgun)
![GitHub issues](https://img.shields.io/github/issues/andrewmcodes/shotgun)
[![contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat)](CONTRIBUTING.md)

# WIP: Rails Shotgun

Ruby on Rails application initialized with all the good stuff. Use at your own risk or we welcome pull requests. I will be working on a roadmap soon.

## Why is it named Shotgun??

> Shotgunning a beer is the simple act of consuming a beer at a high rate of speed.

The inspiration came from one of my common college activities. Rails Shotgun lets you be as productive as shotgunning a beer is at getting you drunk.

## Setup

Please take note that we are using `main` as the base branch.

![Base Branch](https://img.shields.io/badge/base%20branch-main-important)

### System dependencies

- Ruby version: 2.6.6
- Rails version: 6.0.3.1
- Database: PostgreSQL
- Redis installed

### Rename Application

You will want to rename the application first. Here are some options:

- Watch the [CodeTour](https://marketplace.visualstudio.com/items?itemName=vsls-contrib.codetour)
- Use [this RailsByte](https://railsbytes.com/public/templates/Xg8sNz)
- Find and replace `CHANGEME` throughout. Note that if you take this method, you need to be aware of using the correct case.

### Configuration

Make sure the app has been renamed before doing these steps.

#### Automated

```bash
bin/setup
```

#### Manually

```
Copy an existing sample environment file. Run:

```bash
$ cp .env.sample .env
```

and edit newly created `.env` file. The minimum you are going to need are
credentials to your local PostgreSQL database.

Then, install all the necessary dependencies:

```bash
bundle install && yarn install
```

### Database creation

In order to create the database with all the necessary seed data, run:
```bash
rails db:create db:schema:load db:seed
```

### How to start the app

Start the Ruby on Rails server with:
```bash
rails server
```

We __highly__ recommend running the weback dev server in another tab instead of inline compilation that will occur if you don't for speed.

```bash
bin/webpack-dev-server
```

To _optionally_ run Sidekiq, launch another process with:
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

## Contributors ✨

Thanks goes to these wonderful people ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tr>
    <td align="center"><a href="https://www.andrewm.codes"><img src="https://avatars1.githubusercontent.com/u/18423853?v=4" width="100px;" alt=""/><br /><sub><b>Andrew Mason</b></sub></a><br /><a href="https://github.com/andrewmcodes/shotgun/commits?author=andrewmcodes" title="Code">💻</a> <a href="#ideas-andrewmcodes" title="Ideas, Planning, & Feedback">🤔</a> <a href="#infra-andrewmcodes" title="Infrastructure (Hosting, Build-Tools, etc)">🚇</a> <a href="#maintenance-andrewmcodes" title="Maintenance">🚧</a> <a href="https://github.com/andrewmcodes/shotgun/pulls?q=is%3Apr+reviewed-by%3Aandrewmcodes" title="Reviewed Pull Requests">👀</a> <a href="#question-andrewmcodes" title="Answering Questions">💬</a></td>
    <td align="center"><a href="https://github.com/cjilbert504"><img src="https://avatars3.githubusercontent.com/u/54157657?v=4" width="100px;" alt=""/><br /><sub><b>cjilbert504</b></sub></a><br /><a href="https://github.com/andrewmcodes/shotgun/commits?author=cjilbert504" title="Code">💻</a> <a href="https://github.com/andrewmcodes/shotgun/issues?q=author%3Acjilbert504" title="Bug reports">🐛</a></td>
  </tr>
</table>

<!-- markdownlint-enable -->
<!-- prettier-ignore-end -->
<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification. Contributions of any kind welcome!