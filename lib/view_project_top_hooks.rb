class ShowChart < Redmine::Hook::ViewListener
  def view_projects_show_left(context={})
    html = ""
    html += "<%= javascript_include_tag 'plotly', :plugin => 'redmine_cumulo_chart', :media = 'all' %>"
    html += "<p>view_project_show_left</p>"
    return html
  end
end
