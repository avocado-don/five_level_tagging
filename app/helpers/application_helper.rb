module ApplicationHelper
  def safe_linebreak(str)
    h(str).gsub(/\R/, '<br>').html_safe
  end
end
