require 'redmine'
require_dependency 'redmine_omniauth_azure/hooks'

Redmine::Plugin.register :redmine_omniauth_azure do
  name 'Redmine Omniauth Azure plugin'
  author 'Gucin Tsui'
  description 'This is a plugin for Redmine registration through Azure AD'
  version '0.0.1'
  url 'https://github.com/ares/redmine_omniauth_azure'
  author_url 'https://github.com/'

  settings :default => {
    :client_id => "",
    :client_secret => "",
    :github_oauth_autentication => false,
    :allowed_domains => ""
  }, :partial => 'settings/azure_settings'
end
