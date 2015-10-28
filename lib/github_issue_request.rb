require "active_support/core_ext/hash"

module GithubIssueRequest
  class NotSetOwnerRepoError < StandardError
  end
end

require "github_issue_request/url"
