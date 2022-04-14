module ApplicationHelper
    
    def current_year
      Date.today.year
    end
    
    def github_url(author, repo)
      link_to 'Test Guru', 'https://github.com/#{author}/#{repo}'
    end 
    
    def flash_messages
      flash.map do |key, msg|
        content_tag :p, msg, id: key, class: 'flash #{key}' if flash[key]
      end.join.html_safe  
    end
end
