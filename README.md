# README

Este proyecto es un codigo de ejemplo en Ruby on Rails que consume una API de desarrollo. ejemplo de buenas practicas para quienes estan interesados en mi perfil profesional.

- Arquitectura hexagonal
- API Rest
- Service Actor
- Ruby config
- DRY Pattern
- Rspec 100%
- Rubocop 100%

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
   bin/rails db:setup
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
