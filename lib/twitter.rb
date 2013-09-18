module Twitter
  class Tweet
    attr_accessor :status, :author

    def initialize(status, author)
      @status = status
      @author = author
    end

    
  end
end