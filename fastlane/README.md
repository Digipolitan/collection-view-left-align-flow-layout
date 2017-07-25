fastlane documentation
================
# Installation

Make sure you have the latest version of the Xcode command line tools installed:

```
xcode-select --install
```

## Choose your installation method:

<table width="100%" >
<tr>
<th width="33%"><a href="http://brew.sh">Homebrew</a></td>
<th width="33%">Installer Script</td>
<th width="33%">Rubygems</td>
</tr>
<tr>
<td width="33%" align="center">macOS</td>
<td width="33%" align="center">macOS</td>
<td width="33%" align="center">macOS or Linux with Ruby 2.0.0 or above</td>
</tr>
<tr>
<td width="33%"><code>brew cask install fastlane</code></td>
<td width="33%"><a href="https://download.fastlane.tools">Download the zip file</a>. Then double click on the <code>install</code> script (or run it in a terminal window).</td>
<td width="33%"><code>sudo gem install fastlane -NV</code></td>
</tr>
</table>

# Available Actions
### appfile_init
```
fastlane appfile_init
```
Init the Fastlane Appfile with a user interaction

#### How to install ?

This lane require actions define in [Digipolitan/fastlane-common](https://github.com/Digipolitan/fastlane-common)

```
import_from_git(
  url: 'https://github.com/Digipolitan/fastlane-common'
)
```

#### Example : Fetch only the app_identifier

```
fastlane appfile_init fetch_app_identifier:false
```

#### Options

* __**xcodeproj**__: The Xcode project path, if the project isn't in your root directory

  * **environment_variable**: XCODEPROJ

  * **type**: string

  * **optional**: true

* __**fetch_app_identifier**__: Ask the user about the app_identifier

  * **type**: boolean

  * **default_value**: true

* __**fetch_apple_id**__: Ask the user about the apple account

  * **type**: boolean

  * **default_value**: true

* __**fetch_team_name**__: Ask the user about the Dev Portal Team

  * **type**: boolean

  * **default_value**: true

* __**fetch_itc_team_name**__: Ask the user about the iTunes Connect Team

  * **type**: boolean

  * **default_value**: true


### run_tests
```
fastlane run_tests
```
Build and run all Xcode tests

#### Example:

```
fastlane tests workspace:NAME.xcworkspace
```

#### How to install ?

This lane require actions define in [Digipolitan/fastlane-common](https://github.com/Digipolitan/fastlane-common)

```
import_from_git(
  url: 'https://github.com/Digipolitan/fastlane-common'
)
```

#### Options

* __**test_scheme**__: The scheme into the Xcode project to execute, the scheme is required on the CI environement

  * **environment_variable**: TEST_SCHEME

  * **type**: string

  * **optional**: true

* __**xcworkspace**__: The workspace to use.

  * **environment_variable**: XCWORKSPACE

  * **type**: string

  * **optional**: true

* __**xcodeproj**__: The Xcode project to select

  * **environment_variable**: XCODEPROJ

  * **type**: string

  * **optional**: true

#### Environment variables

* __**SLACK_URL**__: The slack Hook URL

  * **type**: string

  * **optional**: true


### framework_bootstrap
```
fastlane framework_bootstrap
```
Initialize the framework to be use with fastlane

#### How to install ?

This lane require actions define in [Digipolitan/fastlane-common](https://github.com/Digipolitan/fastlane-common) and lane define in [Digipolitan/fastlane-ios](https://github.com/Digipolitan/fastlane-ios)

```
import_from_git(
  url: 'https://github.com/Digipolitan/fastlane-common'
)
import_from_git(
  url: 'https://github.com/Digipolitan/fastlane-ios'
)
```

#### Options

* __**xcodeproj**__: The Xcode project path, if the project isn't in your root directory

  * **environment_variable**: XCODEPROJ

  * **type**: string

  * **optional**: true

* __**xcworkspace**__: The Xcode workspace path, if the workspace isn't in your root directory

  * **environment_variable**: XCWORKSPACE

  * **type**: string

  * **optional**: true

* __**podspec_path**__: The podspec path if specific

  * **environment_variable**: PODSPEC_PATH

  * **type**: string

  * **optional**: true

* __**skip_cocoapods**__: Do not prepare the framework to CocoaPods

  * **environment_variable**: SKIP_COCOAPODS

  * **type**: string

  * **default_value**: false


### start_framework_release
```
fastlane start_framework_release
```
Start new framework release version on your git repository

This lane require **git flow** installed in your framework directory check documentation [here](https://github.com/nvie/gitflow)

You will automatically be switched to release/X.X.X branch after this lane and your xcodeproj / podsec version will be updated

#### How to install ?

This lane require actions define in [Digipolitan/fastlane-common](https://github.com/Digipolitan/fastlane-common)

```
import_from_git(
  url: 'https://github.com/Digipolitan/fastlane-common'
)
```

#### Example using specific version:

```
fastlane start_framework_release target_version:4.0.9
```

#### Options

* __**xcodeproj**__: The Xcode project path, if the project isn't in your root directory

  * **environment_variable**: XCODEPROJ

  * **type**: string

  * **optional**: true

* __**target_version**__: Change to a specific version.

  * **environment_variable**: TARGET_VERSION

  * **type**: string

  * **optional**: true

* __**podspec_path**__: The podspec path if specific

  * **environment_variable**: PODSPEC_PATH

  * **type**: string

  * **optional**: true

* __**skip_cocoapods**__: Do not prepare the framework to CocoaPods

  * **environment_variable**: SKIP_COCOAPODS

  * **type**: string

  * **default_value**: false

* __**product_name**__: The framework name, by default retrieve the product name on the .git/config file

  * **environment_variable**: PRODUCT_NAME

  * **type**: string

  * **optional**: true

* __**changelog_release_url**__: The release url use by the changelog

  * **environment_variable**: CHANGELOG_RELEASE_URL

  * **type**: string

  * **optional**: true

* __**changelog_content**__: The changelog content, by default retrieves commits

  * **environment_variable**: CHANGELOG_CONTENT

  * **type**: string

  * **optional**: true


### publish_framework_release
```
fastlane publish_framework_release
```
Submit the framework release version on your git repository and close the branch

This lane require **git flow** installed in your framework directory check documentation [here](https://github.com/nvie/gitflow)

You will automatically be switched to your develop branch after this lane

#### How to install ?

This lane require actions define in [Digipolitan/fastlane-common](https://github.com/Digipolitan/fastlane-common)

```
import_from_git(
  url: 'https://github.com/Digipolitan/fastlane-common'
)
```

#### Options

* __**git_flow_release_message**__: The commit message

  * **environment_variable**: GIT_FLOW_RELEASE_MESSAGE

  * **type**: string

  * **optional**: true

  * **default_value**: Release version **VERSION_NUMBER**

* __**xcworkspace**__: The Xcode workspace to use.

  * **environment_variable**: XCWORKSPACE

  * **type**: string

  * **optional**: true

* __**xcodeproj**__: The Xcode project path.

  * **environment_variable**: XCODEPROJ

  * **type**: string

  * **optional**: true

* __**test_scheme**__: The scheme into the Xcode project to execute

  * **environment_variable**: TEST_SCHEME

  * **type**: string

  * **optional**: true

* __**podspec_path**__: The podspec path if specific

  * **environment_variable**: PODSPEC_PATH

  * **type**: string

  * **optional**: true

* __**skip_cocoapods**__: Do not prepare the framework to CocoaPods

  * **environment_variable**: SKIP_COCOAPODS

  * **type**: string

  * **default_value**: false


### framework_deploy_cocoapods
```
fastlane framework_deploy_cocoapods
```
CocoaPods deployment lane

This lane must be run only on the **master** branch

#### How to install ?

This lane require actions define in [Digipolitan/fastlane-common](https://github.com/Digipolitan/fastlane-common)

```
import_from_git(
  url: 'https://github.com/Digipolitan/fastlane-common'
)
```

#### Options

* __**podspec_path**__: The podspec path

  * **environment_variable**: PODSPEC_PATH

  * **type**: string

  * **optional**: true

#### CI Environment variables

* __**COCOAPODS_TRUNK_TOKEN**__: The CocoaPods access token use to push the release to CocoaPods, check below how to retrieve CocoaPods token

  * **type**: string

  * **optional**: false

#### Output context variables

* __**:COCOAPODS_RELEASE_LINK**__: The CocoaPods release link

  * **type**: string

#### How to retrieve CocoaPods Trunk Token ?

First setup your CocoaPods trunk [as follow](https://guides.cocoapods.org/making/getting-setup-with-trunk.html)

After that run this command :

```
grep -A2 'trunk.cocoapods.org' ~/.netrc
```

The output sould be something like this :

```
machine trunk.cocoapods.org
  login user@example.com
  password XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
```

The password `XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX` is your CocoaPods trunk token


### framework_deploy_github
```
fastlane framework_deploy_github
```
GitHub deployment lane

This lane must be run only on the **master** branch

#### How to install ?

This lane require actions define in [Digipolitan/fastlane-common](https://github.com/Digipolitan/fastlane-common)

```
import_from_git(
  url: 'https://github.com/Digipolitan/fastlane-common'
)
```

#### Options

* __**github_token**__: The GitHub access token use to push the release to GitHub, check how to generate access token [here](https://help.github.com/articles/creating-an-access-token-for-command-line-use/)

  * **environment_variable**: GITHUB_TOKEN

  * **type**: string

  * **optional**: false

* __**github_repository_name**__: The GitHub repository name such as 'company/project'

  * **environment_variable**: GITHUB_REPOSITORY_NAME

  * **type**: string

  * **optional**: false

* __**xcodeproj**__: Your xcodeproj path

  * **environment_variable**: XCODEPROJ

  * **type**: string

  * **optional**: true

* __**skip_carthage**__: Skip the carthage asset to the GitHub release

  * **environment_variable**: SKIP_CARTHAGE

  * **type**: boolean

  * **default_value**: false

* __**skip_codecov**__: Skip the codecov.io link

  * **environment_variable**: SKIP_CODECOV

  * **type**: boolean

  * **default_value**: false


### ci_framework_deploy
```
fastlane ci_framework_deploy
```
Framework CI deployment lane, do something only on a master branch

Deploy to **github**, **carthage** and **cocoapods**

#### How to install ?

This lane require actions or lanes define in [Digipolitan/fastlane-ios-framework](https://github.com/Digipolitan/fastlane-ios-framework)

- `framework_deploy_github` lane **if github_repository_name != nil**

- `framework_deploy_cocoapods` lane **if skip_cocoapods != true**

```
import_from_git(
  url: 'https://github.com/Digipolitan/fastlane-common'
)
import_from_git(
  url: 'https://github.com/Digipolitan/fastlane-ios'
)
import_from_git(
  url: 'https://github.com/Digipolitan/fastlane-ios-framework'
)
```

#### Options

* __**xcodeproj**__: The Xcode project to select.

  * **environment_variable**: XCODEPROJ

  * **type**: string

  * **optional**: true

* __**product_name**__: The framework name.

  * **environment_variable**: PRODUCT_NAME

  * **type**: string

  * **optional**: true

* __**github_token**__: The GitHub access token use to push the release to GitHub, check how to generate access token [here](https://help.github.com/articles/creating-an-access-token-for-command-line-use/)

  * **environment_variable**: GITHUB_TOKEN

  * **type**: string

  * **optional**: true

* __**github_repository_name**__: The GitHub repository name such as 'company/project'

  * **environment_variable**: GITHUB_REPOSITORY_NAME

  * **type**: string

  * **optional**: true

* __**skip_cocoapods**__: Skip cocoapods deployment

  * **environment_variable**: SKIP_COCOAPODS

  * **type**: boolean

  * **default_value**: false

* __**skip_carthage**__: Skip carthage deployment

  * **environment_variable**: SKIP_CARTHAGE

  * **type**: boolean

  * **default_value**: false

* __**skip_codecov**__: Skip the codecov.io link

  * **environment_variable**: SKIP_CODECOV

  * **type**: boolean

  * **default_value**: false

#### Environment variables

* __**SLACK_URL**__: The Slack Hook URL

  * **type**: string

  * **optional**: true

* __**COCOAPODS_TRUNK_TOKEN**__: The CocoaPods access token use to push the release to CocoaPods

  * **type**: string

  * **optional**: true



----

This README.md is auto-generated and will be re-generated every time [fastlane](https://fastlane.tools) is run.
More information about fastlane can be found on [fastlane.tools](https://fastlane.tools).
The documentation of fastlane can be found on [docs.fastlane.tools](https://docs.fastlane.tools).
