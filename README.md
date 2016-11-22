# Froide Task Management Tool

## Description

This software is a task management tool developed by [froide.co.jp](froide.co.jp).

## Requirement

- Ruby 2.3.1
- Rails 5.0.0.1

It will follow the latest version

## Installation

```console
$ git clone git@github.com:ogihara-ryo/froide-task-management-tool.git
```

## Database creation

```console
$ cp config/database.yml.example config/database.yml
$ bundle install
$ rails db:create
$ rails db:migrate
```

## Preparation of test data

```console
$ rails db:seed
```

## Run the test suite

```console
$ rspec spec/
```

## License

[MIT License](https://github.com/ogihara-ryo/froide-task-management-tool/blob/master/LICENSE)
