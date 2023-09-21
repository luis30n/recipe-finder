# README

RecipeFinder is an application based on Ruby on Rails that helps users find the most relevant recipes that they can prepare with the ingredients that they have at home. Check it out! https://recipe-find3r.fly.dev

# Dependencies
The following dependencies are required to run this application locally:

Things you may want to cover:

* Ruby version 3.2.2
* Rails version 7.0.8
* PostgreSQL >= 12.16

# DB Design
A simple database with a recipes table have been used for this project.
You can check the diagram at [this link](https://dbdiagram.io/d/recipes-db-650473db02bd1c4a5ea7ab14).

An ingredients_tsv field has been used as index to improve the performance of PostgreSQL full text search.
# User Stories
- [RF-1](./user-stories/RF-1.md): As a RecipeFinder user, I want to see the recipes in the homepage of the web
- [RF-2](./user-stories/RF-2.md): As a RecipeFinder user, I want to see the search for recipes with the ingredients that I have at home