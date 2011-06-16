module ApplicationHelper
  def is_current?(page_name)
    if request.path_parameters[:action] == page_name || request.path_parameters[:controller] == page_name
      "current"
    end
  end
end
