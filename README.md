<a name="readme-top"></a>

<div align="center">

  <img src="https://user-images.githubusercontent.com/84629565/202665566-ba1a8ed3-041f-45bc-b21b-efdcc357189b.png" alt="logo" width="140"  height="auto" />
  <br/>

</div>

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
  - [:card_index: Entity Relationship Diagram](#er-diagram)
  - [🚀 Live Demo](#live-demo)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
  - [Deployment](#triangular_flag_on_post-deployment)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [❓ FAQ](#faq)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 Blog App <a name="about-project"></a>
![blog-gif](https://ansarshome.files.wordpress.com/2021/09/d3464a4351fdf340ccb6bb37c281381a.gif)

**Blog App** is a classic example of a blog website. I created a fully functional website that will show the list of posts and empower readers to interact with them by adding comments and liking posts.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Client</summary>
  <ul>
    <li>HTML, CSS</li>
    <li>JavaScript</li>
  </ul>
</details>

<details>
  <summary>Server</summary>
  <ul>
    <li>Ruby on Rails</li>
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

- **[Authentication, Author can manage his posts and comments]**
- **[Admin can manage all]**
- **[Guest User can navigate the App and read bu can't create/like a post or make a comment or ]**
- **[API documentation based on swagger UI]**
<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ER DIAGRAM-->
## :card_index: Entity Relationship Diagram <a name="er-diagram"></a>
![er-diagram](https://user-images.githubusercontent.com/84629565/203113736-82dacec0-6b75-42e6-b87e-8bf441ffbe57.png)
<!-- LIVE DEMO -->

## 🚀 Live Demo <a name="live-demo"></a>

- in progress :smile: [Live Demo Link](https://yourdeployedapplicationlink.com)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## API Documentation
![api-docs](https://user-images.githubusercontent.com/84629565/206882182-a37e4ed4-dded-4af9-adc9-4ef5cadc2822.png)
<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:
`Git` and `Ruby`
```
 gem install rails
```

### Install

Install this project with:

```sh
  bundle install
```
```sh
  npm install
```

Create Database (Mandatory)

```
rails db:create
```

If you have made a migration then run this command

```
rails db:migrate
```
```
rails db:seed
```
### Usage

To run the project, execute the following command:


```sh
  rails server or rails s
``` 

Run tests
```
rspec
```
View API documentation
```
http://localhost:3000/api-docs/
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

👤 **Michael Mesfin**

- GitHub: [@michael-duke](https://github.com/michael-duke)
- Twitter: [@MikeDuke21](https://twitter.com/MikeDuke21)
- LinkedIn: [MICHAEL MESFIN](https://linkedin.com/in/https://www.linkedin.com/in/michael-21-duke/)

👤 **Conor Follette**

- GitHub: [@Amtresu](https://github.com/amtresu)


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

- [ ] **[Improve UI, maybe integrate with esbuild or webpacker]**
- [ ] **[Re-write Controllers specs]**
- [ ] **[Improve Request specs]**
- [ ] **[Improve Integration Specs for Views]**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

Give a ⭐️ if you like this project!

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

I would like to thank:
- [Microverse](microverse.org)
- Coding Partners
- Code Reviewers
- [Vitor Guedes Madeira](https://github.com/VitorGuedesMadeira)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FAQ (optional) -->

## ❓ FAQ <a name="faq"></a>

- **[How to run tests?]**  

  - [You can run tests with the following command:]

  ```sh 
  rspec or bundle exec rspec
  ```


- **[Question_2]**

  - [Answer_2]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./MIT.md) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
