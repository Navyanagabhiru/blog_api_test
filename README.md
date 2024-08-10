<<<<<<< HEAD
# Blog API

## Setup

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/blog_api.git
   cd blog_api
2. Install Dependencies
Make sure you have Ruby and Bundler installed. Install the required gems:
bundle install
3. Set Up the Database
   1.Create and Migrate the Database:
      rails db:create
      rails db:migrate
   2.If You Encounter Errors:
      Check config/database.yml for Syntax Errors:
      Ensure that your config/database.yml file is properly configured and free of syntax errors.
   3. Resolve Any Merge Conflicts:
      If you encounter merge conflicts, resolve them in the relevant files (e.g., config/database.yml).
4. Configure Encrypted Credentials
   1.Ensure config/credentials.yml.enc Exists and is Correctly Configured
   2.Ensure it is not corrupted.
5. Run Tests
   Ensure your database is up-to-date and run the tests
6. Troubleshooting
   If we See ActiveSupport::MessageEncryptor::InvalidMessage:
   This usually indicates an issue with encrypted credentials. Verify that:
   The config/credentials.yml.enc file is not corrupted.
   The config/master.key is present and correctly configured.
   If rails db:migrate Fails with YAML Errors:
   Ensure config/database.yml is correctly formatted. YAML must use spaces for indentation, not tabs.
   For Merge Conflicts:
   Resolve conflicts in the relevant files and commit the changes.
   For Push Errors:
   Pull changes from the remote repository
7. API Endpoints
GET /posts - List all posts
GET /posts/- Show a specific post
POST /posts - Create a new post
=======
# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
>>>>>>> 685cd3b29921dc9b7f9b132279143a05ec9326b3
