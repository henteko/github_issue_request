describe GithubIssueRequest::Url do
  let(:owner_name) {'owner'}
  let(:repo_name) {'repo'}

  context "no option" do
    it "default" do
      request = GithubIssueRequest::Url.new(owner_name, repo_name)
      expect(request.to_s).to eq "https://github.com/#{owner_name}/#{repo_name}/issues/new"
    end
  end

  context "add options" do
    let(:title) {'title'}
    let(:body) {'body'}
    let(:labels) {['bug', 'invalid']}

    it "add title, body, labels" do
      options = {
          :title => title,
          :body => body,
          :labels => labels
      }
      request = GithubIssueRequest::Url.new(owner_name, repo_name, options)
      expect(request.to_s).to eq "https://github.com/#{owner_name}/#{repo_name}/issues/new?#{options.to_query}"
    end
  end
end
