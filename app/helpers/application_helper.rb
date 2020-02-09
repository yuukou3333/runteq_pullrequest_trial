module ApplicationHelper
  def active_action?(action_name)
    'active' if params[:action] == action_name
  end
end
