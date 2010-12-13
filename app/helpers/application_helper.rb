# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  # Integration of rack-restful_submit convention to be able to call
  # RESTful resources defined by Rails conventions without Javascript.
  #
  # Method generates 3 tags:
  # * 2 hidden field tags to define URL and METHOD to be forwared to in RESTful env.
  # * 1 submit field to trigger the form submission defining the action
  #
  # Example:
  #   <tt>restful_submit_tag('Delete', 'destroy', instance_path(@instance), 'DELETE')</tt>
  #
  # Learn more: https://github.com/martincik/rack-restful_submit
  def restful_submit_tag(value, action, url, method)
    hidden_field_tag("__map[#{action}][url]", url) <<
    hidden_field_tag("__map[#{action}][method]", method.upcase) <<
    submit_tag(value, :name => "__rewrite[#{action}]")
  end

end
