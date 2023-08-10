class ApplicationController < ActionController::Base
    def hello
        render html: "Hello Sample App!"
    end
end
