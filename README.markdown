# Challenge for Software Engineer - Big Data 
## Setup
1. Make sure you have ruby by running: ruby -v
1. cd bigdata
1. bundle install


## Run server
1. cd bigdata
1. RAILS_ENV=development rails s 

## Upload file
1. Load url 'http://localhost:3000/orders/upload'
1. Select the file to upload
1. Click Upload button

## Run tests
1. Only model tests are implemented. Run 'bundle exec rspec spec/models/'
1. And one controller test. Run 'bundle exec rspec spec/controllers/uploads_controller_spec.rb

