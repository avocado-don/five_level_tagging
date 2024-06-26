module ApplicationHelper
  def safe_linebreak(text)
    h(text).gsub(/\R/, '<br>').html_safe
  end
end
