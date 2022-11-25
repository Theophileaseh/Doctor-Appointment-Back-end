<a name="readme-top"></a>

<!--
HOW TO USE:
This is an example of how you may give instructions on setting up your project locally.

Modify this file to match your project and remove sections that don't apply.

REQUIRED SECTIONS:
- Table of Contents
- About the Project
  - Built With
  - Live Demo
- Getting Started
- Authors
- Future Features
- Contributing
- Show your support
- Acknowledgements
- License

After you're finished please remove all the comments and instructions!
-->

<div align="center">

  <img src="murple_logo.png" alt="logo" width="140"  height="auto" />
  <br/>

</div>

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📗 Table of Contents](#-table-of-contents)
- [📖 [your_project_name] <a name="about-project"></a>](#-your_project_name-)
  - [🛠 Built With <a name="built-with"></a>](#-built-with-)
    - [Tech Stack <a name="tech-stack"></a>](#tech-stack-)
    - [Key Features <a name="key-features"></a>](#key-features-)
  - [🚀 Live Demo <a name="live-demo"></a>](#-live-demo-)
  - [💻 Getting Started <a name="getting-started"></a>](#-getting-started-)
    - [Prerequisites](#prerequisites)
    - [Usage](#usage)
    - [Run tests](#run-tests)
    - [Deployment](#deployment)
  - [👥 Authors <a name="authors"></a>](#-authors-)
  - [🔭 Future Features <a name="future-features"></a>](#-future-features-)
  - [🤝 Contributing <a name="contributing"></a>](#-contributing-)
  - [⭐️ Show your support <a name="support"></a>](#️-show-your-support-)
  - [🙏 Acknowledgments <a name="acknowledgements"></a>](#-acknowledgments-)
  - [❓ FAQ <a name="faq"></a>](#-faq-)
  - [📝 License <a name="license"></a>](#-license-)

<!-- PROJECT DESCRIPTION -->

# 📖 [your_project_name] <a name="about-project"></a>

> The `Doctor-Appointment Project` project is a appointment booking project split to API and Frontend app.

**[DOCTOR-APPOINTMENT PROJECT ]** is designed to allow users to book Dcoctor Appoinment. Our API has predictable resource-oriented URLs, accepts form-encoded request bodies, returns JSON-encoded responses, and uses standard HTTP response codes, authentication, and verbs. A user friendly frontend app enables uesrs to easily manage their appointments and choose a Doctor from the list.

## 🛠 Built With <a name="built-with"></a>

- ROR
- Rspec
- Git
- Github
- Rubocop

### Tech Stack <a name="tech-stack"></a>

> API built with ROR and provides a number of endpoints to enable developers to utilize API. Database id designed with postgreSQL and ensures all associated data is being written or fetched. React frontend app is a userfriendly UI to demonstrate integration and API utility

<details>
  <summary>Client</summary>
  <ul>
    <li><a href="https://reactjs.org/">React.js</a></li>
  </ul>
</details>

<details>
  <summary>Server</summary>
  <ul>
    <li><a href="https://expressjs.com/">Express.js</a></li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

> Describe between 1-3 key features of the application.

- **[Authentication]** Users are required to sign up to app to get access to all features of the application 
- **[Authorization]** Users are authourized accordingly to roles assigned with a help of CANCANCAN 
- **[Documented]** API is documented and esures easy integration with a custom frontend app built with tech you prefer to use

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LIVE DEMO -->

## 🚀 Live Demo <a name="live-demo"></a>

> Add a link to your deployed project.

- [Live Demo Link](https://doctor-appointments-backend.herokuapp.com/api-docs)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

> We welcome new developers to ustilize our Project and build your own apps.

To get a local copy up and running, follow these steps.


### Prerequisites

In order to run this project you need to install this project with:

- [Ruby](https://www.ruby-lang.org/en/documentation/installation/)
- Rails
  ```
    gem install rails
  ```
- Rspec
  ```
    bin/rails generate rspec:install
  ```


### Usage

- Open a command line terminal (Git bash preferrably) and navigate to a directory where you would like to save the work folder using cd.
- Clone the repository with git clone https://github.com/Theophileaseh/Doctor-Appointment-Back-end.git to have a copy of the backend server.
- To get the curent working tree, git fetch --all, then checkout to "dev" branch.
- Finally, run the application by doing the following:
  - navigate to the root directory with a command using terminal
  - run `bundle install`
  - run `rake db:create`
  - run `rake db:migrate`
  - run `rails s`

### Run tests

To run tests, run the following command:

- run all test suits
  ```
    rspec
  ```
- run a specific test file
  ```
    rspec spec ./spec/yourtestfile_spec.rb
  ```


### Deployment

You can deploy this project using Heroku:

```
  heroku create

```
```
  git push heroku development:main

```
```
  heroku run rails db:migrate

```
```
  heroku open

```
To see all server logs
```
  heroku logs -t

```



<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

> Mention all of the collaborators of this project.

👤 **NWACHAN**

- GitHub: [@Theophileaseh](https://github.com/Theophileaseh)

👤 **CECILIA**

- GitHub: [@c3c1l1a](https://github.com/c3c1l1a)

👤 **MUHAMMAD**

- GitHub: [@ShaheerCH](https://github.com/ShaheerCH)

👤 **NADYA**

- GitHub: [@petushka1](https://github.com/petushka1)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

> We are lokking into improving the project and have planed several feature to implement in the future:

- [ ] **[User profile editing]**
- [ ] **[Doctor Role]**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

> Write a message to encourage readers to support your project

If you like this project...

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

> Give credit to everyone who inspired your codebase.

I would like to thank...

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FAQ (optional) -->

## ❓ FAQ <a name="faq"></a>

- **What is the best platform to Deploy the app built on top of API?**

  - You can use any of the platforms that subbort your preferred tech. For instance, you can easily deploy your React app on Neflify

- **How to get started with the project?**

  - If you are building a fronted app and aim to use our basic API you can quickly start with fetching data from the endpointes provided. Read [API_DOC](http://localhost:3000/api-docs) to lean more. 
  - If you aim to modify and extend our API you will need to clone repo and follow all setup (<a href="#getting-started">steps described above</a>)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

_NOTE: we recommend using the [MIT license](https://choosealicense.com/licenses/mit/) - you can set it up quickly by [using templates available on GitHub](https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/adding-a-license-to-a-repository). You can also use [any other license](https://choosealicense.com/licenses/) if you wish._

<p align="right">(<a href="#readme-top">back to top</a>)</p>
