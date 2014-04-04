[![Build Status](https://travis-ci.org/Irkka/luinjo.svg?branch=development)](https://travis-ci.org/Irkka/luinjo)
[![Dependency Status](https://gemnasium.com/Irkka/luinjo.svg)](https://gemnasium.com/Irkka/luinjo)
[![Coverage Status](https://coveralls.io/repos/Irkka/luinjo/badge.png?branch=development)](https://coveralls.io/r/Irkka/luinjo?branch=development)
[![Code Climate](https://codeclimate.com/github/Irkka/luinjo.png)](https://codeclimate.com/github/Irkka/luinjo)

===

## Luinjo - A Reddit clone on a national level
Setting up your development environment should be relatively painless. I'm open to suggestions for streamlining my process, so don't hesitate to submit a Pull Request that makes developing even more fun. Automation - good; manual configuration - bad.

### Starting to develop is easier than ever; now with remote debugging enabled

#### Start the server and guard
```
foreman start
```

#### Debug the session remotely

Add the following call to an appropriate line in the source
```
binding.remote_pry
```

and run the following in the shell of your choice
```
pry-remote
```

### Ruby version
The used Ruby version is declared in the .ruby-version file. Usage of rbenv is highly recommended.

```
rbenv version
```

### Dependencies
The dependencies are managed on a scope basis by Bundler. You can refer to them or add them in the Gemfile. Guard will watch for changes in the Gemfile and run the necessary command to install dependencies.

*Automatically:*
```
guard
```

*Manually:*
```
bundle install
```

### Testing
The test suite is run by issuing a proper rake task invocation. The testing framework used is RSpec extended with Capybara functionality for integration level testing. Now with guard enabled testing is a simple matter of executing the guard command from within the project tree. Just write 'em tests and watch 'em fail!

#### Running tests

*Automatically:*
```
guard
```

*Manually:*
```
rake spec
```

### Running locally
I assume that anyone contributing here is already familiar with the Rails framework. To make the front-end developers' lives a bit easier though, I enabled the guard-livereload gem for the project. Just install the browser plugin, start the server and connect to Guard.

```
guard
```

### Deployment
I'm a fan of Continuous Delivery. Everything merged to this Blessed repo, whether master or development branch, will be deployed to either the prod or the dev server respectively.

The deployed apps will be hosted by Heroku for the time being, since I'm doing this alone. Maybe if people like this application, I'll upgrade the plan there or get a dedicated server solution.

All in all, if you wish to deploy your own forked instance, you have to set up your Travis CI -> Heroku (or whatever) setup by yourself. Anything deployed to the mother project will go through Pull Request mechanism.

===

Would-be-contributors check out CONTRIBUTING.md!

-Ike
