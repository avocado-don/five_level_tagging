module ApplicationHelper
  def safe_linebreak(str)
    h(str).gsub(/\n|\r|\r\n/, '<br>').html_safe
  end
end
