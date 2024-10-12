## Jeux RPG
# Projet permettant de créer des quêtes ,  de se battre contre des ennemies

Aller dans phpmyadmin créer une base de donnée sous le nom WacCraft

La base de donnée WacCraft.sql est fourni sur le repo , il faudrai l'importer sur phpmyadmin

Créer un fichier database.yml à l'intérieur du dossier config
    
et coller à l'intérieur ce code ci-dessous :

```ruby
default: &default
  adapter: mysql2
  encoding: utf8mb4
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  username: root
  password: root
  host: localhost
  port: 3306
  database: WacCraft

development:
  <<: *default

test:
  <<: *default

production:
  <<: *default
```