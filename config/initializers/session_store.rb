# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_phototshare_session',
  :secret      => '9d2b96c9b4a6df4d8b8e95d103c099c7c95b9c6888112276d5f61a3af38d839a3abdf83182800f9005e0fea75fdd19393c6d2a934d6780c944931ad0f8199944'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
