class ShowChart < Redmine::Hook::ViewListener
  def view_projects_show_left(context={})
    tags = []
    tags << javascript_include_tag('plotly.js', :plugin => 'redmine_cumulo_chart', :media => 'all')
    html = '<h3>Issue\'s time-line</h3><div id="redmine_projects_chart" style="width:90% height:260px"></div>'
    js = <<-EOS
    <script type="text/javascript">
    var trace1 = {
      x : [1, 2, 3, 4, 5] ,
      y : [3, 5, 8, 9, 10] ,
      type: 'scatter'
    };
    var data = [trace1];
    Ploty.new('redmine_projects_chart', data);
    </script>
    EOS
    return tags.join(' ') + html + js
  end
end
