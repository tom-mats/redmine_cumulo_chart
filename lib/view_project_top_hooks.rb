class ShowChart < Redmine::Hook::ViewListener
  def view_projects_show_left(context={})
    tags = []
    tags << javascript_include_tag('plotly.js', :plugin => 'redmine_cumulo_chart', :media => 'all')
    html = <<"EOS"
    <script type="text/javascript">
    var trace1 = {
      x : [1, 2, 3, 4, 5]
      y : [3, 5, 8, 9, 10]
    };
    var data = [trace1];
    Ploty.new('chart', data);
    </script>
    html += '<div class="chart" style="width:90% height:260px"></div>'
    return tags.join(' ') + html
  end
end
