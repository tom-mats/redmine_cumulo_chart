class ShowChart < Redmine::Hook::ViewListener
  def view_projects_show_left(context={})
    tags = []
    tags << javascript_include_tag('plotly.js', :plugin => 'redmine_cumulo_chart', :media => 'all')
    html = ""
    html += "<p>view_project_show_left</p>"
    return tags.join(' ') + html
  end
end
