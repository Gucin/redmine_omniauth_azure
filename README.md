## Redmine omniauth azure

This plugin is used to authenticate in redmine through Azure.
It was more than inspired by redmine_omniauth_google see https://github.com/twinslash/redmine_omniauth_google and redmine_omniauth_github see https://github.com/ares/redmine_omniauth_github

### Installation:

Choose folder /plugins, make command

```console
git clone https://github.com/Gucin/redmine_omniauth_azure.git
```

Update gems and restart rails server.

### Registration

To make possible to authenticate via Azure you must first to register application in Azure

* Go to the [registration](https://manage.windowsazure.com) link.
* Goto Application tab, click "Add" 
* Choose "Add an application my organization is developing"
* Choose "Web Application/OR Web API", fill in the "Name"
* Fill in the "Sign-on URL" and "App ID URL" with your website corresponding address. Please ensure APP ID URL is unique
* Goto Configure tab, find the "CLIENT_ID" 
* Generate a new key and remember the key value as "CLIENT_SECRET"
* Fill your callback url to "REPLY URI"
* Save your changes, and click "View Points" to get tenant id
* The tenant id is a unique id for each application
  ```
  https://graph.windows.net/ff5ffbee-d997-4f49-a926-5f3c41bc45a3
  tenant id is ff5ffbee-d997-4f49-a926-5f3c41bc45a3
  ```
The registrations is complete.

### Configuration

To make plugin to work properly

* Login as administrator. In top menu select "Administration". Choose menu item Plugins. In plugins list choose "Redmine Omniauth Azure plugin". Press "Configure".
* Fill Сlient ID & Client Secret & Tenant ID by corresponding values, obtained by Azure.
* Put the check "Oauth authentification", to make it possible to login through Azure. Click Apply. Users can now to use apportunity to login via Azure.

Additionaly
* Setup value Autologin in Settings on tab Authentification

### Other options

By default, all domains are allowed to authenticate through Azure.
To limit login through Azure for other domains you have to fill allowed domains in the text box field the "Allowed domains". Domains must be separated by newlines. For example:

```text
onedomain.com
otherdomain.com
```

### Work process

User goes to the login page (sign in) and clicks the button with Azure image. The plugin redirects him to Azure where user enters his the еmail & password from Azure. Azure redirects user back to plugins controller. Then the following cases:
1. If auto registration is enabled, user is redirected to 'my/page'
2. In other case user account is created and waited for admin activation
