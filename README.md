# rakuna-core

The tiny heart of Rakuna.



# Description

`rakuna-core` is (as the name implies) the core of Rakuna. It provides a number of classes and mixins for Webmachine-powered projects. The intent of these is to simplify development, reduce boilerplate code, and support the composition of interesting systems from simple concepts.



# Installation
`gem install rakuna-core`

# Usage
`require 'rakuna/core'`



# Deviations from Webmachine
* A `Rakuna::Resource` does not have a default content type, where a `Webmachine::Resource` defaults to `text/html`.



# Mixins

## `Rakuna::Accepts::Input`
* Adds memoized `input` method, returning the request body as a string.

## `Rakuna::Provides::Output`
* Adds an `output` method, which can be called by any `content_type_provided`.

## `Rakuna::Provides::Text`
* Adds `text/plain` to `content_types_provided`, mapped to the `to_text` method.
* Adds `to_text` method, which returns `output` unchanged.

## `Rakuna::Provides::HTML`
* Adds `text/html` to `content_types_provided`, mapped to the `to_html` method.
* Adds `to_html` method, which returns `output` unchanged.



# Classes

## `Rakuna::Resource::Basic`
The foundation on which we compose more interesting things, responding to the following methods:
  * HEAD
  * GET
### Includes
  * `Rakuna::Accepts::Input`
  * `Rakuna::Provides::Output`

## `Rakuna::Resource::Action`
Action Resources perform tasks. They respond only to POST, and return no content, only status.
  * POST: Executes the action
### Includes
  * `Rakuna::Resource::Basic`

## `Rakuna::Resource::Item`
Item Resources represent specific resources, and respond to the following methods:
  * HEAD: Does the item exist?
  * GET: Fetch the item
  * PUT: Replace the item
  * DELETE: Delete the resource
### Includes
  * `Rakuna::Resource::Basic`

## `Rakuna::Resource::Collection`
Collection Resources contain multiple resources, and respond to the following methods:
  * HEAD: Does the collection exist?
  * GET: Fetch the collection
  * POST: Add to the collection
### Includes
  * `Rakuna::Resource::Basic`



# Contributing to rakuna-core
  * Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
  * Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
  * Fork the project.
  * Start a feature/bugfix branch.
  * Commit and push until you are happy with your contribution.
  * Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
  * Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

# License
[MIT](https://tldrlegal.com/license/mit-license)

# Contributors
  * [Chris Olstrom](https://colstrom.github.io/) | [e-mail](mailto:chris@olstrom.com) | [Twitter](https://twitter.com/ChrisOlstrom)
