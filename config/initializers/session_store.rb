# Be sure to restart your server when you modify this file.

Boot::Application.config.session_store :active_record_store
ActiveRecord::SessionStore::Session.attr_accessible :data, :session_id
