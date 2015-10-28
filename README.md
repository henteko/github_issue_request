# Github issue request
[![Build Status](https://travis-ci.org/henteko/github_issue_request.svg?branch=master)](https://travis-ci.org/henteko/github_issue_request)
[![Gem Version](https://badge.fury.io/rb/GithubIssueRequest.svg)](https://badge.fury.io/rb/GithubIssueRequest)

This gem is request to github issue for user.

# Install

```
$ gem install GithubIssueRequest
```

or

```
gem 'GithubIssueRequest'
```

```
$ bundle install
```

# Use

```
require 'github_issue_request'

GithubIssueRequest::Url.config('owner_name', 'repo_name')

options = {
  :title  => 'issue title',
  :body   => 'issue body text',
  :labels => ['bug', 'WIP']
}
request_url = GithubIssueRequest::Url.new(options)

request.to_s # get issue request url
```

# License
MIT
