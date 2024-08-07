# frozen_string_literal: true

require 'git/git_execute_error'

module Git
  # This error is raised when a git command fails
  #
  # The git command executed, status, stdout, and stderr are available from this
  # object. The #message includes the git command, the status of the process, and
  # the stderr of the process.
  #
  # @api public
  #
  class FailedError < Git::GitExecuteError
    # Create a FailedError object
    #
    # @example
    #   `exit 1` # set $? appropriately for this example
    #   result = Git::CommandLineResult.new(%w[git status], $?, '', "failed")
    #   error = Git::FailedError.new(result)
    #   error.message #=>
    #     "[\"git\", \"status\"]\nstatus: pid 89784 exit 1\nstderr: \"failed\""
    #
    # @param result [Git::CommandLineResult] the result of the git command including
    #   the git command, status, stdout, and stderr
    #
    def initialize(result)
      super("#{result.git_cmd}\nstatus: #{result.status}\nstderr: #{result.stderr.inspect}")
      @result = result
    end

    # @attribute [r] result
    #
    # The result of the git command including the git command and its status and output
    #
    # @example
    #   `exit 1` # set $? appropriately for this example
    #   result = Git::CommandLineResult.new(%w[git status], $?, '', "failed")
    #   error = Git::FailedError.new(result)
    #   error.result #=>
    #     #<Git::CommandLineResult:0x00000001046bd488
    #       @git_cmd=["git", "status"],
    #       @status=#<Process::Status: pid 89784 exit 1>,
    #       @stderr="failed",
    #       @stdout="">
    #
    # @return [Git::CommandLineResult]
    #
    attr_reader :result
  end
end
