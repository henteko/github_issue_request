# Github issue request
This gem is request to github issue for user.

# Install

```
$ gem install github_issue_request
```

or

```
gem 'github_issue_request'
```

```
$ bundle install
```

# Use

```
require 'github_issue_request'

options = {
  :title  => 'issue title',
  :body   => 'issue body text',
  :labels => ['bug', 'WIP']
}
request_url = GithubIssueRequest::Url.new('repo_owner_name', 'repo_name', options)

request.to_s # get issue request url
```

# License
MIT
