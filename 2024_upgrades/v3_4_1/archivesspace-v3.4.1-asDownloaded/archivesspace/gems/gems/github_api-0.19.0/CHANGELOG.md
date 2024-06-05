# Change log

## [v0.19.0] - 2020-06-22

### Added
* Add Repo Invitations by Seth Siegler(@Siggs2000)
* Adds ability to fetch per-repo license information by Zach Wick(@zachwick)
* Add 'has_projects' to the list of valid repo options by  Romain Tartière(@smortex)

### Changed
* Change to update RSpec from v2 to v3 by Leo Arnold(@leoarnold)
* Change to support latest Faraday by Leo Arnold(@leoarnold)
* Change to remove OrderedHash as no longer needed
* Change gemspec to relax rake & bundler versions

### Fixed
* Fix refs passing in Github::Client::GitData::References by Nicolas Leger(@nicolasleger)
* Fix Simplecov deprecations by Leo Arnold(@leoarnold)
* Fix Request error message interpolation by Olle Jonsson(@olleolleolle)

## [v0.18.2] - 2017-11-19

### Fixed
* Fix basic auth header and remove spurious character by soh335
* Fix 'disable_warnings' error in hashie dependency by requiring minimum version

## [v0.18.1] - 2017-10-07

### Added
* Add the new Branch Protection API by Kartik Luke Singh(@kartikluke)
* Add ability to add & remove assignees to/from an issue by @soh335

### Changed
* Remove hard dependency on old Faraday versions by David Calavera(@calavera)
* Change to relax addressable dependency
* Drop support for Ruby 1.9.3
* Change Github module to remove ClassMethods module inclusion
* Change Github::API to add require_all helper
* Change all class to load required dependencies in place of global

### Fixed
* Fix Ruby warnings by Olle Jonsson(@olleolleolle)

## [v0.17.0] - 2017-04-18

### Added
* Add Projects API (@samphilipd)
* Add Project Columns API (@samphilipd)
* Add Project Cards API (@samphilipd)

### Changed
* Change Normalizer to remove unnecessary branch condition (@samphilipd)

### Fixed
* Fix ServiceError to account for non Hash type error message (@samphilipd)
* Remove :content_type key from ParamsHash as clashes with reponse payload (@samphilipd)

## [v0.16.0] - 2017-04-02

### Added
* Add ability to follow HTTP 301, 302, 303, 307, and 308 redirects by Jeremy Fabre (@jfabre)
* Add :follow_redirects configuration option to allow disabling rediredcts for client
* Add API#disable_redirects call to allow disabling redirects inside a block call
* Add ability to query response headers as hash structures

### Changed
* Change Repos::Contents#archive to return location header to download resource

### Fixed
* Fix mashi warnings with key/in-built method collisions by Sam Davies (@samphilipd)

## [v0.15.0] - 2017-03-25

### Added
* Add feature to retrieve repo info using repo id by Prasad Surase(@prasadsurase)
* Add support for Pull Request Reviews preview by Valentino(@codenamev)
* Add mime-types as dependency

### Changed
* Remove default options for repos by Dan Rice(@dnrce)
* Change API calls for issues and pull_request comments by Paul Friedman(@pfriedman)
* Lock tins and term-ansicolor to fix coveralls for ruby 1.9.3 by Valentino(@codenamev)
* Change #issues.comments.get api path

### Fixed
* Fix improper hash formatting in creating git tag spec by Valentino(@codenamev)
* Fix hashie requirement by @betesh

## [v0.14.5] - 2016-08-07

## Fixed
* Fix oauth2 dependency to allow for latest by @jkeiser

## [v0.14.4] - 2016-07-15

### Added
* Add ServiceError#data to expose full response payload
* Add ServiceError#error_messages to expose only error messages contained in the paylod

## [v0.14.3] - 2016-07-02

### Added
* Add more specific ServiceError types such as BadGateway, UnsupportedMediaType
* Add documentation_url to ServiceError message

### Changed
* Change oauth2 dependency requirement and lock to 1.0.0 to support older ruby versions
* Change to include all client errors inside ClientError

### Fixed
* Fix ServiceError to handle multiple errors in response body by Jonathan Chan(@jonmchan)

## [v0.14.2] - 2016-06-28

## Added
* Add hooks namespace to orgs

## Changed
* Change default headers in Connection
* Change API::namespace to raise on redefinition
* Change API::extend_with_actions to skip anonymous classes
* Remove connection caching
* Remove API::with

## Fixed
* Changed creation of default connection options to fix issue with mergin custom request headers
* Fix issue with scopes listing #219

## [v0.14.1] - 2016-06-21

### Added
* Add organization hooks by @pkhxcp

### Changed
* Change processing of :basic_auth and :login parameters to prevent mutation
* Change basic auth middleware to rely on simple login param

## [v0.14.0] - 2016-05-22

### Added
* Add ability to get a specific gist revision

### Changed
* Remove request params checks from PullRequests & PullRequests::Comments
* Remove request params checks from Gists & Gists::Comments
* Remove multi_json dependency in favour of plain json
* Change ServiceError response header parsing

### Fixed
* Fix custom middleware stack by @zacksiri
* Fix gist fork to use new url path
* Fix respond_to signature

## [v0.13.1] - 2015-12-20

### Added
* Add activity feeds api by MaximAbramchuck
* Add activity feed convenience method
* Add upload_api configuration option by shadabahmed
* Add atom parser middleware

### Changed
* Change activity notifications api to remove permitted options guard
* Update dependencies by relaxig bundler and rake dev dependencies
* Remove nokogiri dependency

## [v0.13.0] - 2015-11-21

### Added
* Add latest release #releases.latest by @anuja-joshi
* Add release by tag name #tags.get by @Shwetakale
* Add listing of all organizations #list :every
* Add team membership #team_membership
* Add team membership addition #add_membership by @anuja-joshi
* Add team membership removeal #remove_membership by @anuja-joshi
* Add Client::Orgs::Memberships api with contribution from @Shwetakale

### Changed
* Change authorizations api #create to require note parameter and
  remove restrictions on available parameters
* Remove support for Ruby 1.9.2
* Remove required parameters checks from Client::Repos::Keys api

## [v0.12.4] - 2015-08-02

### Changed
* Change gem spec to exlude test files and require ruby version
* Update dependencies

## [v0.12.3] - 2015-02-07

### Added
* Add ratelimit_reset to response header by @k0nserv
* Add ability to specify connection options by @codenamev
* Add two-factor authorization and document

### Fixed
* Fix jsonize from overwritting non-json body for non-get requests by @timruffles
* Fix content type parameter by @timruffles

## [v0.12.2] - 2015-10-25

### Added
* Add pp support in DEBUG mode by @lukeasrodgers

### Changed
* Clean up PageIterator and simplify
* Clean up and refactor PageLinks parser

### Fixed
* Fix Authorization header token for OAuth by @codenamev
* Fix except! for core hash extension by @josacar

## [v0.12.1] - 2015-08-15

### Added
* Add #configure method on Github module to allow modification of settings
* Add :per_page to configuration options

### Changed
* Change #actions to return Array of avilable methods for a given api

### Fixed
* Fix bug with PropertySet not requiring 'set' standard library

## [v0.12.0] - 2014-07-27

### Features Core
* Add namespace helper to API to easily create nested resources
* Add before_request & after_request callbacks to API
* Change all scopes to use namespace helper
* Move development dependencies out of rubygems
* Add API::Config for configuration of main api
* Change Configuration to use #property and drastically simplify setup
* Change Request to be a class and simplify requests dispatch
* Remove S3Uploader class

### Features Client
* Add check method to Application Authorization Api (#157)
* Add Deployments Api with feature tests
* Add commits & forks calls to Gists Api
* Add following? another user to Users::Followers Api
* Add ability to list all the teams for the user to Orgs::Teams Api
* Remove create, upload calls from Repos::Downloads Api
* Add ping method to Repos::Hooks Api
* Add combined status listing to Repos::Statuses Api
* Add subscribe, unsubscribe and subscribed? calls to Activity::Watching Api

### Fixed
* Remove scopes caching
* Change Arguments to stop leaking to global namespace
* Change features tests to generate JSON responses
* Add feature tests for User Followers Api
* Ensure works on Ruby 1.9.2, 1.9.3, 2.0, 2.1, JRuby & Rubinus

## [v0.11.3] - 2014-02-22

### Added
* Add Pages Api
* Add Application authorization Api

### Fixed
* Fix core extensions to not override other libraries

## [v0.11.2] - 2014-02-02

### Changed
* Change autoload to require libs
* Change Connection module to work with newest Faraday 0.9 release
* Simplify and document Request module

## [v0.11.1] - 2013-12-16

### Added
* Add status, body readers to service error.
* Add descendants tracker.
* Add encoder to faraday.

### Changed
* Change search api to stop escaping query components.

## [v0.11.0] - 2013-12-07

### Added
* Add Legacy namespace for old Search Api
* Add new Search Api
* Add new Releases & Assets Api including file uploads
* Add new UnkownMedia client error type
* Add root certs

### Changed
* Change request module to accept params hash as default
* Change dev tools to update to latest
* Rewrite specs to properly test error conditions

### Fixed
* Fix caching issues within the repository API object.
* Fix default org option to be respected when repository listing

## [v0.10.2] - 2013-06-26

### Added
* Add ability to encode params hash vlaues strings to base 64
* Add repo content create/update/delete api calls

### Changed
* Updated dependencies

### Fixed
* Fix issue with listing repository [#118]
* Fix issue with ratelimit [#119]

0.10.1 (May 21, 2013)
---------------------

* Fix issue with loading params hash

0.10.0 (May 19, 2013)
---------------------

* Add addressable dependency
* Fix Tree api create method #109
* Fix keyword escaping in Search API #113
* Add ParamsHash class for parameter options abstraction
* Add repository Statistics api
* Add media type parser
* Add media type & accept header support
* Change default accept header
* Add deep_merge core extension
* Change connection options to overwrite deep keys

0.9.7 (April 13, 2013)
----------------------

* Add listing of user keys
* Change gists listing to include :public option
* Change repos listing to include :every option and fix issue #102

0.9.6 (April 6, 2013)
---------------------

* Convert hook_id to id in repo hooks api
* Fix #101 broken auto_pagination, ensure only get request is paginated that has enumerable body

0.9.5 (April 1, 2013)
---------------------

* Add default_branch to repo valid parameters
* Remove bundle command from rvm script
* Document pull request parameters
* Change issue api issue_id parameter to number
* Fix issue #100 with oauth client site parameter

0.9.4 (Mar 24, 2013)
--------------------

* Relax hashie dependency and update other dependencies.
* Fix bug #96 with response wrapper equality

0.9.3 (Mar 9, 2013)
-------------------

* Fix stack overflow issue #95 and add feature tests

0.9.2 (Mar 3, 2013)
-------------------

* Add auto_pagination feature to allow for retrieval of all pages for a given
  resource - #91 feature request
* Change ResponseWrapper to allow custom body assignment
* Fix ResponseWrapper to allow array like lookup of multiple bodies
* Fix ResponseWrapper has_key? checks nonempty hash like bodies
* Update hashie dependency to remove warnings

0.9.1 (Feb 24, 2013)
--------------------

* Add request arguments parser to allow for flexibility when specifying
  required and optional parameters
* Add dynamic setters and getters to the main Api class
* Add arguments call to Api class for parsing parameters
* Add with scope to API to allow for custom parameter setting
* Change all client api methods to accept arbitrary number of arguments
* Change pub_sub_hubbub service hooks methods to use enteprise site endpoint
* Remove parameters transformation helpers from main API
* Update hashie, faraday dependencies

0.9.0 (Feb 18, 2013)
--------------------

* Add Pagination module to define interface for the response
* Add Pagination#count_pages to return total number of pages
* Add ResponeWrapper to define response returned by the client request
* Add Response::Header to scope header information which fixes bug #89
* Improvements to page_request method to work on api instance rather than global api configuration, allows for concurrent pagination requests
* Improvements and fixes to PageIterator, mainly changed links path parsing
* Fix pagination for the GitHub Enterprise
* Change Configuration to call reset! method
* Change Github::API to preserve current options accross instances
* Remove api_client global helper to allow for thread safe behaviour accross many client instances
* Change ApiFactory to be more efficient and accept blocks
* Change all Api instances to accept options hash and block

0.8.11 (Feb 9, 2013)
--------------------

* Fix preserving query params in page iterator next action.
* Add meta api.

0.8.10 (Feb 4, 2013)
--------------------

* Fix reference validation in GitData::References.validate_reference

0.8.9 (Jan 26, 2013)
--------------------

* Fix broken accepts header.
* Change organization members listing to include flag for public listings.
* Fix organization teams & members api query methods checking for response status.

0.8.8 (Jan 20, 2013)
--------------------

* Add :ssl configuration option.
* Add escaping of search keywords.
* Change pull requests api :pull_request_id to :number

0.8.7 (Jan 15, 2013)

* Fix bug with repository commits param listing.
* Stop bypassing ssl verification.

0.8.6 (Jan 2, 2013)

* Fix bug with content type header for pubsubhubbub
* Change labels api remove call to take labe_name as parameter
* Add feature tests for forks api.

0.8.5 (Dec 27, 2012)

* Fix bug with getting repository branch for enteprise apis.
* Fix bug with creating authorization tokens.
* Add features for issues comments api.

0.8.4 (Dec 17, 2012)

* Fix bug with listing issues.
* Change labels listing to merge mileston & issue listings.
* Add features tests for issues milestones, events, labels.

0.8.3 (Dec 15, 2012)

* Add oauth scopes listing method and helpers for reading scopes on a resource
  accepted_oauth_scopes and oauth_scopes
* Add say method call for printing octocat ASCII
* Change issues listing to accept additional org and repo parameters.
* Fix bug with milestones update method incorrect validation.
* Change events listing to take issue_id as an optional parameter.

0.8.2 (Dec 7, 2012)

* Add Gitignore api.
* Add listing of all repositories(a dump of every repository).
* Add listing of all users (a dump of every user).
* Add pull request comments listing in a repository.
* Add issue comments listing in a repository.
* Change unit tests for users api.
* Update rspec, cucumber etc... dependencies

0.8.1 (Nov 17, 2012)

* Fix bug with validating options on Repository API create method.
* Fix bug with Repository Comments API valid parameters filtering.
* Fix bug with parameters passing in Repository API delete method.
* Add shared behaviour examples for unit testing.
* Changed Git Comments API request paths and method signatures to take gist-id.

0.8.0 (Nov 4, 2012)

* Add activity namespace
* Add notifications API inside activity namespace.
* Move starring api inside activity namespace.
* Move watching api inside activity namespace.
* Move events api inside activity namespace.

0.7.2 (October 27, 2012)

* Fix bug with editing issues comment.
* Fix bug with retrieving single page from paginated set.
* Add repository comments api and remove old api calls from commits api.
* Add options setting inside api.
* Replace all api endpoints to use new options setter for user and repo.
* Update documentation with main features list.

0.7.1 (October 20, 2012)

* Add delete call to repositories api.
* Allow for type, sort & direction parameters when listing repositories.
* Change unit tests for repositories.
* Add code metrics tasks.
* Add assertion for checking non-empty request arguments.
* Change all requests to use new presence assertion.

0.7.0 (September 9, 2012)

* Fix multi json compatibility issues.
* Move assigness api inside the issues scope.
* Add Statuses Api.
* Add Starring Api.
* Change Watching api(old Watching available as Starring Api), rename
  'start_watching' to 'watch' and 'stop_watching' to 'unwatch'.
* Add Repository Merging Api.

0.6.5 (August 17, 2012)

* Add ability to list class subclasses.
* Change http error handling to allow for easy extensions of error classes.
* Add assignee api with tests.
* Add emojis api with tests.

0.6.4 (July 28, 2012)

* Fix bug Issue#41 - content stays encoded in base64 and
  caching Contents api call to correct instance.
* Fix bug Issue#46  - remove user parameters merging.
* Add response body parsing and http status code setup to ServiceError.
* Change all service errors to include http status code and
  to inherit from service error class.
* Update readme with error handling explanation.
* Add ratelimit requests.

0.6.3 (July 17, 2012)

* Add ability to modify default middleware stack or create custome one.
* Refactored and simplified main api initialization process.
* Fixed issues #39 with json encoding request bodies.

0.6.2 (July 15, 2012)

* Drop yajl from development dependencies to allow jruby pass.
* Add repository single branch retrieval.
* Add markdown api support.
* Rewrite connection to set proper http headers to agree with GitHub Api spec.
* Add ability to specify custom endpoints for enterprise clients.

0.6.1 (June 24, 2012)

* Add request parameters normalizer and update code references.
* Refactor Filter into ParameterFilter and update code references.
* Drop oauth2 dependency version requirement and update faraday.
* Add codeclimate integration in gem documentation.
* Add rubinius & jruby to Travis.

0.6.0 (June 12, 2012)

* Add search api with full test coverage.
* Add repository contents api with full test coverage.
* Change required keys validation and refactor all method calls.
* Change parameter procesing in users api, add feature tests.
* Change parameter processing in issues api, add feature tests.
* Add cache and location to response headers.
* Add unknown value error type and changed parameters values validation.
* Add redirects following.

0.5.4 (June 9, 2012)

* Update teams api documentation.
* Remove unused code from request processing.
* Remove require for addressable.
* Add feature tests for events, gists, orgs apis.
* Add core extension for extracting options from array.
* Change parameter slurping for organizations listing.

0.5.3 (June 6, 2012)

* Fix bug with preserving query parameters during pagination.
* Add feature tests to ensure correct pagination.
* Update vcr dependency.

0.5.2 (May 20, 2012)

* Change interface for listing unauthenticated user gists.
* Change gists find to get signature.
* Change oauth2 request.
* Add request json body encoding.
* Add live tests for emails api.
* Add ability to include body for delete request.
* Fix bug with deleting authenticated user emails.
* Update gem dependencies to faraday 0.8, oauth2 0.7 and guard.

0.5.1 (May 7, 2012)

* Fix bugs with references api and add live test coverage.
* Add live tests settings file.
* Add live tests for repository api.
* Add new section called testing to main docs to explain on test setup.

0.5.0 (April 27, 2012)

* Mainly documentation updates for method parameters and the way they are invoked.

0.5.0.rc1 (April 27, 2012)

* Rewrote all apis method calls to be consistent with GitHub API v3, namely,
  regardless which resource is being currently used, the 'create', 'edit', 'delete' methods are used for CRUD operations.
* Further ActiveRecord style methods are used, that is, 'all' for listing collection of resoruces and 'find' for getting a single resource.

0.4.11 (Apr 22, 2012)

* Add nokogiri as dependency.
* Update json dependency and remove deprecation warnings.

0.4.10 (Apr 15, 2012)

* Add xml resposne parsing.
* Add ordered hash to core extensions.
* Add amazon s3 services upload feature and integrate with downloads api upload method.

0.4.9 (Apr 9, 2012)

* Relax json and rspec gem dependencies.

0.4.8 (March 17, 2012)

* Change user emails api, fix bug with deleting emails, add specs.
* Change user keys api and add specs.

0.4.7 (March 11, 2012)

* Add custom client error class.
* Add custom errors invalid options and required params.
* Clean all github api specs from test dependencies.
* Change all github api to use new required params error class to provide clearer
  and more helpful request exceptions.
* Update cassettes and config to vcr 2.0
* Chage gem dependecies to use rake, bundler 1.1.0 and vcr 2.0

0.4.6 (February 27, 2012)

* Update gem dependencies, specifically core libraries: multi_json, oauth2, faraday and testing: webmock. (Cannot udpate guard as it conflicts with Growl notifications.)
* Fix test dependency for github_spec and users_spec test suites.
* Add specs for user followers api.
* Add better support for isolation of test dependency by resetting request mocks and github instance variables.
* Remove jeweler dependency from gemspec and rakefile. Clean up rakefile.

0.4.5 (February 25, 2012)

* add specs for the main pull requests api
* add specs for the pull reqeust review comments api
* change method signatures inside pull request api to be more concise
* add new generic error class
* add GitHub service specific error types
* change response raising error to use new error types and increased encapsulation of http header information
* fix breakage across api classes and test suite

0.4.4 (February 9, 2012)

* factor out request validation into its own module
* factor out request filtering inside its own module
* add factory for creating main api submodules
* add specs for gists comments api
* expand filtering to allow for toggling recursive behaviour

0.4.3 (February 4, 2012)

* add api extension allowing to list a given api actions(methods)
* add api methods deprecation module
* add specs for gists and modify unstar method signature
* change gists starred? method to return boolean
* add gists, error codes feature tests
* change api client setting to work on per api class initialization to scope variables such as per_page per api instance, added specs
* fix issue with pagination helper for iterating over response set
* change test coverage reporting to split results for rspec and cucumber

0.4.2 (January 22, 2012)

* fix pagination iterator to work with 'commits' method for Github::Repos api
* fix bug with pagination returned collection set
* add cukes to test pagination
* extend response set with new helper methods such as etag, server
* fix bug with pagination params for 'watched' method for Github::Repos api

0.4.1 (January 18, 2012)

* fix bug with default settings for paginated items in result set
* added api rest methods listing
* updated specs for main api

0.4.0 (January 14, 2012)

* add helper methods for clearing api keys
* add constants module to preserver memory and improve GC
* add http header links parsing class utility
* add pagination iterator class for internal link traversal
* add new result set methods for retrieving pages including each_page method
* add specific request module for handling page related parameters
* extend filter_params to accept json_callback and page parameters
* change readme to new format and add pagination information among other things

0.3.9 (January 3, 2012)

* add specs for git data tags, references and commits apis
* fix bugs with parameter passing inside git data api
* comment out and remove dead code from main api
* removed duplication from specs setup

0.3.8 (January 1, 2012)

* add specs for git data blobs and trees apis
* refactored parameter filtering fuction to fix tree_create bug

0.3.7 (January 1, 2012)
-----------------------

* add block parameter passing for main github instance
* refactor methods inside issues labels api
* add specs to cover issues labels api

0.3.6 (December 26, 2011)
-------------------------

* refactor specs setup to common base class
* add specs for issues events and comments apis
* fix bug with gem loading lib folder

0.3.5 (December 18, 2011)
-------------------------

* adding specs for issues milestones api
* updating specs to check for constants existence
* fixing problems with some request missing passed parameters

0.3.4 (December 17, 2011)
-------------------------

* adding coverage reporting
* adding specs to authorization module to increase coverage to 100%
* adding specs to issues api to fix create issues bug and increase code coverage

0.3.3 (December 4, 2011)
------------------------

* fixing json parsing issue preventing repository creation

[v0.19.0]: https://github.com/piotrmurach/github/compare/v0.18.2...v0.19.0
[v0.18.2]: https://github.com/piotrmurach/github/compare/v0.18.1...v0.18.2
[v0.18.1]: https://github.com/piotrmurach/github/compare/v0.17.0...v0.18.1
[v0.17.0]: https://github.com/piotrmurach/github/compare/v0.16.0...v0.17.0
[v0.16.0]: https://github.com/piotrmurach/github/compare/v0.15.0...v0.16.0
[v0.15.0]: https://github.com/piotrmurach/github/compare/v0.14.5...v0.15.0
[v0.14.5]: https://github.com/piotrmurach/github/compare/v0.14.4...v0.14.5
[v0.14.4]: https://github.com/piotrmurach/github/compare/v0.14.3...v0.14.4
[v0.14.3]: https://github.com/piotrmurach/github/compare/v0.14.2...v0.14.3
[v0.14.2]: https://github.com/piotrmurach/github/compare/v0.14.1...v0.14.2
[v0.14.1]: https://github.com/piotrmurach/github/compare/v0.14.0...v0.14.1
[v0.14.0]: https://github.com/piotrmurach/github/compare/v0.13.1...v0.14.0
[v0.13.1]: https://github.com/piotrmurach/github/compare/v0.13.0...v0.13.1
[v0.13.0]: https://github.com/piotrmurach/github/compare/v0.12.4...v0.13.0
[v0.12.4]: https://github.com/piotrmurach/github/compare/v0.12.3...v0.12.4
[v0.12.3]: https://github.com/piotrmurach/github/compare/v0.12.2...v0.12.3
[v0.12.2]: https://github.com/piotrmurach/github/compare/v0.12.1...v0.12.2
[v0.12.1]: https://github.com/piotrmurach/github/compare/v0.12.0...v0.12.1
[v0.12.0]: https://github.com/piotrmurach/github/compare/v0.11.3...v0.12.0
[v0.11.3]: https://github.com/piotrmurach/github/compare/v0.11.2...v0.11.3
[v0.11.2]: https://github.com/piotrmurach/github/compare/v0.11.1...v0.11.2
[v0.11.1]: https://github.com/piotrmurach/github/compare/v0.11.0...v0.11.1
[v0.11.0]: https://github.com/piotrmurach/github/compare/v0.10.2...v0.11.0
[v0.10.2]: https://github.com/piotrmurach/github/compare/v0.10.1...v0.10.2
[v0.10.1]: https://github.com/piotrmurach/github/compare/v0.10.0...v0.10.1
