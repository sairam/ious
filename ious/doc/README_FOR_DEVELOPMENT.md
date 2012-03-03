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
* Run annotation after migrations and change of routes

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
    
### Annotation of models, tests, fixtures, routes
- bundle exec annotate --position after -i -m -s
- bundle exec annotate -r --position after # routes

Usage: annotate [options] [model_file]*
    -d, --delete                     Remove annotations from all model files
    -p, --position [before|after]    Place the annotations at the top (before) or the bottom (after) of the model file
    -r, --routes                     Annotate routes.rb with the output of 'rake routes'
    -v, --version                    Show the current version of this gem
    -m, --show-migration             Include the migration version number in the annotation
    -i, --show-indexes               List the table's database indexes in the annotation
    -s, --simple-indexes             Concat the column's related indexes in the annotation
        --model-dir dir              Annotate model files stored in dir rather than app/models
    -R, --require path               Additional files to require before loading models
    -e, --exclude [tests,fixtures]   Do not annotate fixtures, test files, or both

- For more information see https://github.com/ctran/annotate_models

### 