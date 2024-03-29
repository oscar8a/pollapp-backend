## DIS OR DAT Polling application

This is an Application where User can create a poll prompting a question and two options. All users can see all polls and vote on the poll that they wish to participate in. Results will be accessible once the poll is closed.

### 


### Usage

You also provide the 2 options you want user to vote on. All users that navigate through the main page of the app will be able to see all the polls created by all users. The cards on the main page will show how many votes have been casted on that poll, will have buttons, depending on the user, to cast a vote or to close the poll. After a poll is closed (either by the user or when the time the poll was set to run expires) it will allow you to see the results. 


### Technologies

## Front-End
- [React](https://reactjs.org/docs/getting-started.html)
- [Semantic UI React](https://react.semantic-ui.com/)

## Back-End
- [Ruby on Rails](https://rubyonrails.org)
- [PostgreSQL](https://www.postgresql.org)
- Auth using [JWT](https://jwt.io) and [bcrypt ](https://rubygems.org/gems/bcrypt/versions/3.1.12)
- [Sidekiq](https://sidekiq.org/)
- [Redis](https://redis.io/)

### Features
..* Set up for how many minutes you want your poll to be active for. After the time expires, the poll's status will be changed to in-active and voting will no longer be allowed. The job that takes care of changing the status is run by sidekiq, and queued on a redis server. 

..* You are able to see how many votes have been casted in the poll, but you will not be able to see the results until poll is closed. 

### Installation
First, I will begin with the Back end setup. The Front-End repo is here: [Front-End Polling App](https://github.com/ozkr8a/pollapp-frontend)

## Setting up the Rails API:
A new terminal will need to be opened for each server. Make sure the database is created by running `rails db:create`

Run `rails db:migrate` to run the DB migrations.

It is best to seed data. Add to the `seed.rb` file then run `rails db:seed`; Otherwise app will launch with Empty databases.

1. Start up the Rails Server `rails server`
2. Start Redis Server:    `redis-server`
3. Start Sidekiq: `bundle exec sidekiq`

## Launching the Front-End App

1. `npm start` runs the app in the development mode.

Open [http://localhost:3000](http://localhost:3000) to view it in the browser.
