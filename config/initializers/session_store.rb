# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_post_no_javascript_session',
  :secret      => '61d6987278c784aa9707e8c3283521c1a476902a6be6bdc462cbd0e70717fcb25ee4a59a6dc6639b5f6a2afba40236fbb3f89dcab37051617c1cd229d30af38c'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
