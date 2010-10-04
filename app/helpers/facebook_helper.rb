module FacebookHelper
  def facebook_picture(uid, options = {})
    content_tag 'fb:profile-pic', '', options.reverse_merge(:uid => uid, :linked => false)
  end

  def facebook_name(uid, options = {})
    options = options.reverse_merge(:uid => uid, :useyou => false, :linked => false)
    content_tag(:span, content_tag('fb:name', '', options), :class => 'facebook-name')
  end

  def facebook_button(text, url = {}, html_options = {})
    classes = %w(button)

    if html_options[:class]
      classes << Array.wrap(html_options.delete(:class))
    end

    span = content_tag :span, text
    link_to span, url, html_options.reverse_merge(:class => classes)
  end
end