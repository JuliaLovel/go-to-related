class ActionView::Helpers::FormBuilder
  include ActionView::Helpers::TagHelper
  include ActionView::Helpers::FormTagHelper
  include ActionView::Helpers::FormOptionsHelper
  include ActionView::Helpers::CaptureHelper
  include ActionView::Helpers::AssetTagHelper

  def go_to_related_tag(method, options = {})
    options[:id] = field_id(method,options[:index])
    return text_field_tag(field_name(method,options[:index]),options) 
  end

  def field_name(label,index=nil)
    output = index ? "[#{index}]" : ''
    return @object_name + output + "[#{label}]"
  end

  def field_id(label,index=nil)
    output = index ? "_#{index}" : ''
    return @object_name + output + "_#{label}"
  end

end