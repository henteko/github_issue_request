module GithubIssueRequest
  class Url
    GITHUB_BASE_URL = "https://github.com"

    # @param [String] owner
    # @param [String] repo
    # @param [Hash] options
    # @return [GithubIssueRequest::Url]
    def initialize(owner, repo, options = {})
      @owner = owner
      @repo = repo
      @options = options
      @url = "#{GITHUB_BASE_URL}/#{@owner}/#{@repo}/issues/new"
      @url += "?#{@options.to_query}" unless options.empty?
    end

    # @return [String]
    def to_s
      @url
    end
  end
end
