get 'oauth_azure', :to => 'redmine_oauth#oauth_azure'
get 'oauth2callback_azure', :to => 'redmine_oauth#oauth_azure_callback', :as => 'oauth_azure_callback'
