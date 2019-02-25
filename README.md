# Simple CRM

Simple CRM is an API that lets you retrieve people and organization detail.

Simple CRM was built with Rails 5.2.2 and Ruby 2.5.1.

## Getting Started

1. Clone the repository

```
$ git clone <repository path>
$ cd simple-crm
```

2. Install dependencies

```
$ bundle install
```

3. Setup Database

```
$ rails db:create db:migrate
```

4. Run tests

```
$ rspec
```

## Seeding the Database

Simple CRM will parse a user supplied CSV file and make the data available in JSON format

1. Name your CSV file **crm_data.csv** and save in the **db** folder.
2. You must have the headers below in your CSV file.

```
name,job_title,email_address,phone,organization,organization_phone,domain,street,city,state,zip
```

3. Seed the database

```
$ rails db:seed
```

## Usage

Start the Rails server

```
$ rails s
```

The API provides the following endpoints:

- Show all people : `GET /api/people.json`
- Show a person : `GET /api/people/:id.json`
- Show all organizations : `GET /api/organizations.json`
- Show an organization : `GET /api/organizations/:id.json`
