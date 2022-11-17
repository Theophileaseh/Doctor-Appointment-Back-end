# DOCTOR APPOINTMENT

## Project Description

> The `Doctor-Appointment-Back-end` project is a appointment booking API yo allow users to book Dcoctor Appoinment. Our API has predictable resource-oriented URLs, accepts form-encoded request bodies, returns JSON-encoded responses, and uses standard HTTP response codes, authentication, and verbs.



## API allows:
- add doctors to a list of doctors
- register a user
- preview doctor's details
- book a specific doctor appointment for current user
- manage apointments

## Built With
- Ruby
- Git
- Github
- Rubocop
- RSpec
- Stylelint


## Getting Started
To get a local copy of the program running, follow these simple steps
## Demo
Coming soon...

### Prerequisites
- IDE, preferably Visual Studio Code

### Install
- Ruby
- Rails
- Rspec

### Setup
- Open a command line terminal (Git bash preferrably) and navigate to a directory where you would like to save the work folder using cd.
- Clone the repository with git clone https://github.com/Theophileaseh/Doctor-Appointment-Back-end.git to have a copy of the backend server.
- To get the curent working tree, git fetch --all, then checkout to "dev" branch.
- Finally, run the application by doing the following:
  - navigate to the root directory with a command using terminal
  - run `bundle install`
  - run `rake db:create`
  - run `rake db:migrate`
  - run `rails s`

### API Docs
  - run `rails s`
  - navigate to 'http://localhost:3000/api-docs'

### API Endpoints
Base link for all endponts and HTTP requests
`http://localhost:3000/api/v1`

User can register/login through the following endpoint
`/login`

To fetch the list off all users use the following endpoint with a GET request. Use the same endpoint with POST request to create a new USER 
`/users`

To fetch User details use the following endpoint with a GET request. Use the same endpoint with PATCH/PUT requests to update current user. Use current endpoint to remove user through DELETE request. 
`/users/{id}`

To fetch the list off all doctors use the following endpoint with a GET request. Use the same endpoint with POST request to create a new Doctor 
`/doctors`

To fetch details of a specific doctor use the following endpoint with a GET request. Use the same endpoint with DELETE request to remove current Doctor 
`/doctors/{id}`

To fetch the list off all appointments use the following endpoint with a GET request. Use the same endpoint with POST request to create a new appointment
`/appointments`

To fetch details of a specific appointment use the following endpoint with a GET request. Use the same endpoint with DELETE request to remove current appointment 
`/appointments/{id}`




``


  
### Kanban board
  - Link to the [Kanban board](https://github.com/users/Theophileaseh/projects/1)

### API Endpoints
  
#### Authors

👤 **author**

- GitHub: []()
- LinkedIn: []()



## 🤝 Contributing

Contributions, issues, and feature requests are welcome!


## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Hat tip to Microverse
- Shoutout to [Murat Korkmaz](https://www.behance.net/muratk) for providing the design

## 📝 License

This project is [MIT](./LICENSE) licensed.
