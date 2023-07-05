<a name="readme-top"></a>

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
    - [Frontend](#frontend)
  - [🚀 Api documentation](#api-documentation)
  - [🚀 Kanban board](#kanban)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#tests)
  - [Deployment](#deployment)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [❓ FAQ](#faq)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 House Rental <a name="about-project"></a>

**House Rental** contains the backend code for a House Rental App, which allows users to reserve a house, add new houses, and delete existing ones. The backend is built using Ruby On Rails and communicates with the frontend of the app to provide a seamless user experience. The backend includes functionality for user authentication and authorization, allowing only authorized users to perform actions such as adding or deleting houses. It also includes a Postgresql database to store information about the houses available for rent, as well as information about user reservations.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Language</summary>
  <ul>
    <li><a href="https://rubyonrails.org/">Rails</a></li>
    <li><a href="https://www.postgresql.org/">Postgresql</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

- **See various houses**
- **Reserve houses**
- **Add houses**
- **Delete houses**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Front End app <a name="frontend"></a>

Click [here](https://github.com/LeslieAine/house-rental-front-end) to access the front end app that was built with react

<!-- ### API Documentation <a name="api-documentation"></a>

- Check [swagger documentation]() -->

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Kanban board <a name="kanban"></a>

- [Link to board](https://github.com/users/LeslieAine/projects/3/views/1)
- Our team consists of 3 members: @LeslieAine, @Zeph180, and @mertkantaroglu

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running follow these simple example steps.

### Prerequisites <a name="prerequisites"></a>

In order to run this project you need:

- Install [ruby](https://www.ruby-lang.org/en/) on your computer or run it with docker.
- Install [Postgrsql](https://www.postgresql.org/).

### Setup <a name="setup"></a>

- First, clone this repository by using the command line :

```sh
git clone https://github.com/LeslieAine/house-rental-back-end
```

- Open `.env.example` file at root directory and fill parameters accordingly

Example:

```shell
RAILS_DATABASE_USER=user
RAILS_DATABASE_PASSWORD=12345678
JWT_SECRET_KEY=JDo6W3hMWX5TVTlVcysxR3tBdkwhdQ
```

- Rename the file to `.env`

### Install <a name="install"></a>

Install this project with:

```shell
bundle install
```

### Usage <a name="usage"></a>

To run the project, follow the next steps:

- Create database with the following command:

```shell
rails db:create
```

- Apply migrations with the following command:

```shell
rails db:migrate
```

- [Optional] Run the following command to fill the database with data:

```shell
rails db:seed
```

- Run the app by executing:

```shell
rails s 
```

### Run tests <a name="tests"></a>

To run tests, execute the following command:

```sh
rspec spec --exclude-pattern "spec/requests/swagger/**/*_spec.rb"
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Deployment <a name="deployment"></a>

You can deploy this project on [render](https://render.com/):

- Follow the steps in this [documentation](https://render.com/docs/deploy-rails) to deploy a rails app.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

👤 **Kigozi Joseph**

- GitHub: [zeph180](https://github.comzeph180)
- Twitter: [@richards_zeph](https://twitter.com/richards_zeph)
- LinkedIn: [Kigozi Joseph Suubi](https://linkedin.com/in/kigozi-joseph-suubi)

👤 **Mert Kantaroglu**

- GitHub: [@mertkantaroglu](https://github.com/mertkantaroglu/)
- Twitter: [@aranelluinwe](https://twitter.com/aranelluinwe)
- LinkedIn: [mertkantaroglu](https://www.linkedin.com/in/mert-kantaroglu/)

👤 **Leslie Aine**

- GitHub: [@LeslieAine](https://github.com/LeslieAine)
- LinkedIn: [LeslieAine](https://linkedin.com/in/LeslieAine)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

- **Add rating system**
- **Updating house details**
- **Filter users by their roles**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/LeslieAine/house-rental-back-end/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

If you like this project by staring it.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

I would like to thank Microverse for project inspiration.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>