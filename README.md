MacKenzie Child's tutorial: https://www.youtube.com/watch?v=cJxp_O5azc4

# Planning our application

  1. Answer Questions
      - What are we building?
      - Who are we building it for?
      - What features do we need to have?

  2. User Stories
  3. Model our Data
  4. Think through the pages we need in our app



## Questions

  1. What are we building?
      + We are building a personal site.
      + A place where we can blog
      + Share example of our work
      + Have people contact us

  2. Who are we building it for?
      + For ourselves
      + Community as a whole
      + Sharing what we are learning by blogging is a great way to learn for ourselves, but we teach others int he process.
      + Show potential employers that we know what we are talking about

  3. What features do you want to have?
      + Posts
          - Create / Edit / Destory
          - Markdown
          - Syntax highlighting
          - Comments (Disqus)

      + Projects
          - Create / Edit / Destroy

      + Contact
          - Contact form
          - Sendgrid

      + User (Devise)



## User Stories
  As a blank, I want to be able to blank, so that blank.

    - As a user, I want to be able to create posts, so that I can share what I'm learning on my blog

    - As a user, I want to be able to edit and destroy posts, so that I can manage my blog

    - As a user, I want to be able to write posts in markdown format so that it's easy for me to write posts.

    - As a user, I want to be able to highlight the various syntax of code blocks that I share on my blog.

    - As a user, I want to show the visitors and potential employers examples of my work, or stuff I've built.

    - As a user, I want to be able to have a visitor contact me through a form on my site.

    - As a user, I want visitors to be able to leave comments on my posts.



## Model our Data (Models are Singular)

  **Post**
      title:string
      content:string

  **Project**
      title:string
      description:text
      link:string

  **User** (using Devise)




## Think through the pages we need in our app (routes and templates)

    - Home
    - Posts#index
    - Posts#Show
    - Projects#index
    - Projects#show
    - Contact
