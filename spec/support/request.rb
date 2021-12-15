module Support
  module Test
    module Request
      
      def get_index_successful(model, msg = 'GET /index')
        it msg do
          create(model)
          get text_notes_url
          expect(response).not_to be_successful
        end  
      end

    end
  end  
end

RSpec.configure do |config|
    config.include Support::Test::Request, :type => :request
end