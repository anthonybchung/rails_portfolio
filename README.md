# README

## Project Vision

Build a web app that where people can follow my journey in Ruby or Rails 7. It would illustrate what features I have
built. Also what resources I have watched or read.

## Static Pages.

- Home: an introduction to the web site.
- Playground: a place where viewers can play around with the features and learn how to build it.
- Resources: A list of what ruby or rails articles or books I have read.

### Playground.

#### Model:

##### Projects

| Key    | Attribute    | Data Type |
|:-------|:-------------|:----------|
| unique | name         | string    |
|        | description  | text      |
|        | position     | integer   |
|        | github       | string    |
|        | category     | string    |
|        | on_main_page | boolean   |
| PK     | _id          | integer   |

- name: name of exercise
- description: exercise description.
- position: can rearrange the order of exercise to list on the page.
- github: link to github.
- category: enum[ruby,rails,javascript]
- on_main_page: if true, it will be presented on the home page. default value is ***true***

#### Controller:

##### Projects

CRUD: views

| URI                | controller#action | Verb   |
|:-------------------|:------------------|:-------|
| /projects          | projects#index    | GET    |
| /projects          | projects#create   | POST   |
| /projects/new      | projects#new      | GET    |
| /projects/:id/edit | projects#edit     | GET    |
| /projects/:id      | projects#show     | GET    |
| /projects/:id      | projects#update   | PATCH  |
| /projects/:id      | projects#udate    | PUT    |
| /projects/:id      | project#destroy   | DELETE |





