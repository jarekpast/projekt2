# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_projekt2_session',
  :secret      => '5b30f21a8e5797ccbff9ba6a145e54f6e6af98e8f638c4eeabd1ea8a8c6652e91fcdad4b19c06fb317cad3776b8aa96bf9b25583c57f5420fb6e1d9a601db749'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
