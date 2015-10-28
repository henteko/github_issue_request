describe GithubIssueRequest::Url do
  let(:owner_name) {'owner'}
  let(:repo_name) {'repo'}

  after(:example) do
    # clean
    GithubIssueRequest::Url.config(nil, nil)
  end

  context "no option" do
    before  do
      GithubIssueRequest::Url.config(owner_name, repo_name)
    end

    it "default" do
      request = GithubIssueRequest::Url.new
      expect(request.to_s).to eq "https://github.com/#{owner_name}/#{repo_name}/issues/new"
    end

    it "change owner and repo name" do
      options = {
          :owner => 'change_owner',
          :repo => 'change_repo'
      }
      request = GithubIssueRequest::Url.new(options)
      expect(request.to_s).to eq "https://github.com/#{options[:owner]}/#{options[:repo]}/issues/new"
    end
  end

  context "add options" do
    let(:title) {'title'}
    let(:body) {'body'}
    let(:labels) {['bug', 'invalid']}

    before  do
      GithubIssueRequest::Url.config(owner_name, repo_name)
    end

    it "add title, body, labels" do
      options = {
          :title => title,
          :body => body,
          :labels => labels
      }
      request = GithubIssueRequest::Url.new(options)
      expect(request.to_s).to eq "https://github.com/#{owner_name}/#{repo_name}/issues/new?#{options.to_query}"
    end
  end

  context "not set config" do
    it "raise error" do
      expect {
        GithubIssueRequest::Url.new
      }.to raise_error GithubIssueRequest::NotSetOwnerRepoError
    end

    it "not raise error" do
      options = {
          :owner => 'change_owner',
          :repo => 'change_repo'
      }
      request = GithubIssueRequest::Url.new(options)
      expect(request.to_s).to eq "https://github.com/#{options[:owner]}/#{options[:repo]}/issues/new"
    end
  end
end
