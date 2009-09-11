# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_stuffwhitepeopledid_session',
  :secret      => '9f184a186f1eb35d7eb4d96f42f7578e97930f3d8042aea7c193c971a19307c3a370ccbc47651d0feaff713726ab831a0db55f4d24ff0bf599662077f9dd0967'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
