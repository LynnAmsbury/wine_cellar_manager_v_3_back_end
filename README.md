# Wine Cellar Manager version 3

## Table of Contents

[](#)
  - [Table of contents](#table-of-contents)
  - [General info](#general-info)
  - [Intro Video](#intro-video)
  - [Technologies](#technologies)
  - [Setup](#setup)
  - [Features](#features)
  - [Status](#status)
  - [Inspiration](#inspiration)
  - [Contact](#contact)

## General Info

The Wine Cellar Manager (version 3) is a full-stack application made with Ruby on Rails, HTML, CSS, and vanilla Javascript that allows users to add wines to a collection, view the wines in the collection, update wine information, and remove wines from the collection. This repository contains code for the back end; there is a separate front-end repository that will need to be run for full functionality: <https://github.com/LynnAmsbury/wine-cellar-manager-v-3-front-end>.

## Intro Video

[Mod 3 Flatiron Project by Lynn Amsbury](https://youtu.be/DXScphh6gBU)

## Technologies

* Ruby - version 2.6.1
* Rails - 6.0.3.3
* SQLite3 - version 3.28.0

## Setup

To run this project, clone the GitHub repository, install it locally, cd into wine_cellar_manager_backend, and type:
```bundle install```into your terminal. Next run ```bundle install```, then ```rails db:create```, and ```rails db:seed```. Finally, run ```rails s -p3000``` to start the backend server.

Next, open a new terminal window, cd into wine-cellar-manager-v-3-front-end, and type
```lite-server -p3001```into the terminal. If you do not have lite-server installed you will need to install it.

## Features

* Allows users to add new wines to their collection
* Allows users to view the wines in their collection
* Allows users to update wines
* Allows users to delete wines

## To-Do List

* Refactor “code smell”
* Improve styling
* Include user-login functionality

## Status

Project is finished with option to expand functionality, improve styling, and DRY out code.

## Inspiration

I have been unable to fine wine collection management software that I love, so I thought I'd start learning to code my own.

## Contact

Created by [Lynn Amsbury](https://www.linkedin.com/in/lynnamsbury/)

Feel free to contact me!