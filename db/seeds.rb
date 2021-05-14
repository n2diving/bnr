user_list = [
  {
    "id": 1,
    "name": "Ryan Dahl",
    "email": "node4lyfe@example.com",
    "password": "node4lyfe",
    "password_confirmation": "node4lyfe",
    "expertise": "Node"
  },
  {
    "id": 2,
    "name": "Rob Pike",
    "email": "gofarther@example.com",
    "password": "gofarther",
    "password_confirmation": "gofarther",
    "expertise": "Go"
  },
  {
    "id": 3,
    "name": "DHH",
    "email": "magic@example.com",
    "password": "magicmagic",
    "password_confirmation": "magicmagic",
    "expertise": "Rails"
  },
  {
    "id": 4,
    "name": "John Watkins",
    "email": "jwats@example.com",
    "password": "jwatsjwats",
    "password_confirmation": "jwatsjwats",
    "expertise": ".NET"
  }
]

post_list = [
  {
    "user_id": 1,
    "id": 1,
    "title": "Node is awesome",
    "body": "Node.js is a JavaScript runtime built on Chrome's V8 JavaScript engine."
  },
  {
    "user_id": 1,
    "id": 2,
    "title": "Spring Boot is cooler",
    "body": 'Spring Boot makes it easy to create stand-alone, production-grade Spring based Applications that you can "just run".'
  },
  {
    "user_id": 2,
    "id": 3,
    "title": "Go is faster",
    "body": "Go is an open source programming language that makes it easy to build simple, reliable, and efficient software."
  },
  {
    "user_id": 3,
    "id": 4,
    "title": "'What about me?' -Rails",
    "body": "Ruby on Rails makes it much easier and more fun. It includes everything you need to build fantastic applications, and you can learn it with the support of our large, friendly community."
  },
  {
    "user_id": 4,
    "id": 5,
    "title": ".NET has the gravy",
    "body": ".NET enables engineers to develop blazing fast web services with ease, utilizing tools developed by Microsoft!"
  }
]

user_list.each{ |user| User.create(user) }
post_list.each{ |post| Post.create(post) }