module Metaforce
  class Job::CRUD < Job

    def initialize(client, method, args)
      @async = false

      super(client)
      @method, @args = method, args
    end

    def perform
      @id = @client.send(@method, *@args).id
      super
    end
  end
end
