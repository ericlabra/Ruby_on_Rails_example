# README

Este proyecto es una aplicación Ruby on Rails que consume la API de EasyBroker para obtener el titulo de las propiedades disponibles.

## Requisitos del sistema

* Ruby version: 3.2.2
* Rails version: 7.1.0
* PostgreSQL

## Configuración

1. Clona el repositorio
2. Instala las dependencias:
   ```bash
   bundle install
   ```
3. Configura la base de datos:
   ```bash
   bin/rails db:prepare
   ```

## Ejecución

Para ejecutar una prueba de la solucion manualmente en consola puedes usar:
```bash
bundle exec rails console
```
Y ejecutar:
```ruby
Orchestators::ListLocations.result.locations
```

## Pruebas

Para ejecutar la suite de pruebas:
```bash
bundle exec rspec
```

## Rubocop

Para ejecutar Rubocop:
```bash
bundle exec rubocop
```
