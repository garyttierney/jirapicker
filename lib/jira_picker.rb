require 'jira'

module JiraPicker
    JQL_OPTIONS = {
        max_results: 150,
        fields: ['summary']
    }

    class IssueSelector
        def initialize(url, username, password, my_issues: false, project: nil)
            @url = url
            @username = username
            @password = password
            @my_issues = my_issues
            @project = project
        end

        def open
            conditions = []

            unless @project.nil?
                conditions << "project = #{@project}"
            end

            if @my_issues
                conditions << "assignee = #{@username}"
            end

            client = JIRA::Client.new({
                username: @username,
                password: @password,
                site: @url,
                auth_type: :basic,
                use_ssl: @url.include?('https'),
                context_path: '/'
            })

            issues = client.Issue.jql(conditions.join(' AND '), JQL_OPTIONS).map do |issue|
                "#{issue.key} - #{issue.summary}"
            end

            selected_issue = `echo -e "#{issues.join("\n")}" | dmenu -l 20`
        end
    end
end

