## General Guidelines
- Read this file before proceeding with development
- Update this file with best practices

## Practices:
* **Gemfile** should be documented !
* Thin controllers, Fat Models (its just the rails way)
* Add documentation where ever possible
* javascript should be camelcased
* ruby is underscorized
* Tests are preferred and insisted
* Use templates to render content on the client side instead of passing html and css

## Conventions
### HTML/CSS
  - id is \#id-element
  - class is .class-elements

### Javascript
  - Variables are camelCased
  - Try convert from javascript to coffeeScript where ever possible
  - Do not call javascript functions remotely from ruby, trigger events and let javascript event handler take care of calling the events
  - Do not use global variables unless required

### Running Arbitrary Javascript on the page 
  = content_for :js do
    javascript to be included 

  