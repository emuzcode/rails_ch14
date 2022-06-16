module ApplicationHelper
  
  # Title of Static Pages
  def full_title(page_title)
    base_title = "Ruby on Rails Tutorial Sample App"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end
  
  class ConsoleTest
    # 4.10 回文かどうかをチェックするメソッド
    def palindrome_tester(s)
      if s == s.reverse
        puts "It's a palindrome!"
      else
        puts "It's not a palindrome."
      end
    end
  end
end
