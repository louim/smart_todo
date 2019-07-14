# frozen_string_literal: true

module SmartTodo
  module Events
    extend self

    def date(date)
      Date.met?(date)
    end

    def gem_release(gem_name, *requirements)
      GemRelease.new(gem_name, requirements).met?
    end

    def pull_request_closed(organization, repo, pr_number)
      PullRequestClosed.new(organization, repo, pr_number).met?
    end
    alias_method :issue_close, :pull_request_closed
  end
end
