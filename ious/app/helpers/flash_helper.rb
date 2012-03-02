module FlashHelper
  def show_flash_messages
    f_names = {:notice => 'alert-info', :warning => '', :message => 'alert-success', :error => 'alert-error'}
    fl = ''

    f_names.each do |name, value|
      if flash[name]
        fl = fl + content_tag(:div, content_tag(:a, '&times;'.html_safe, :class => 'close', :href => '#') + flash[name], :class => [ 'alert', 'fade', 'in', value ], 'data-dismiss' => "alert")
      end
      flash[name] = nil;
    end
    return fl
  end

  def js_flash_messages
    "$('#flash').html( '#{escape_javascript(show_flash_messages)}' );"
  end
end