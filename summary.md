### what's included
 * devise for users
 * post - CRUD functionality
 * heroku deploy
 * bootstrap 4
 * search functionality for posts
 * basic testing coverage - unit and request (rspec)

### thoughts for improvment
 * docker/docker deploy to heroku--I wanted to jump into that actually because I use docker almost exclusively at work but since the project was only supposed to be a 4 hour job, I didn't want to get stuck in a heroku debug loop that could potentially be the 4 hours on its own
 * bootstrap 5 - when I looked at this last sometime last year it was still in beta--I'd have to spend a few more hours getting up to speed with the changes before I'd feel comfortable dropping this into a new and tight timeline project; I do love the fact that 5 has no jquery dependency though
 * add user crud functionality (there is some support for this now via devise, but not surfaced fully through the app interface)
 * fix table/home page display for more mobile friendly option (https://bootstrapcreative.com/pattern/responsive-tables-that-stacks-on-mobile-instead-of-horizontal-scroll/ or https://elvery.net/demo/responsive-tables/)
 * admin/cancancan for more robust functionality around resource editing and authorization
 * adding soft delete to maintain the integrity of the post even if the user is no longer around
 * expand filter capacity, add JS support/action cable for real time responses without hitting search submit button
 * expand testing, add tests for user functionality, create integration test/FE coverage with capybara
 * clean up the rest of the scaffolding comments and files