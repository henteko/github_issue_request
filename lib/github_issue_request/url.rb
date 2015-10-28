module GithubIssueRequest
  class Url
    GITHUB_BASE_URL = "https://github.com"

    class << self
      def config(owner, repo)
        @@owner = owner
        @@repo = repo
      end
    end

    # @param [Hash] options
    # @return [GithubIssueRequest::Url]
    def initialize(options = {})
      _options = options.dup

      owner = _options.delete(:owner)
      repo = _options.delete(:repo)
      @owner = owner || @@owner
      @repo = repo || @@repo
      @options = _options
      raise NotSetOwnerRepoError if @owner.nil? || @repo.nil?

      @url = "#{GITHUB_BASE_URL}/#{@owner}/#{@repo}/issues/new"
      @url += "?#{@options.to_query}" unless _options.empty?
    end

    # @return [String]
    def to_s
      @url
    end
  end
end
