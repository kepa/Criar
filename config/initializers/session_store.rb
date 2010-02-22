# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_criar_session',
  :secret      => '66a7ad0cfe540bd438fc455be73c5c9b39829bc7b2889e6bd11b6f0e52e96dd00140fd2dcbabf4753f92048fccfc1c1721bfc49fc0060f380f98368637d68b84'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
