class ShowChart < Redmine::Hook::ViewListener
  def view_project_show_left(context={})
    return "<p>view_project_show_left</p>"
  end
end
