module ApplicationHelper
  def render_turbo_stream_flash_messages
    turbo_stream.prepend "flash", partial: "shared/flash"
  end

  def form_error_notification(object)
    if object.errors.any?
      tag.div class: "error-message" do
        object.errors.full_messages.to_sentence.capitalize
      end
    end
  end

  def nested_dom_id(*args)
    args.map { |arg| arg.respond_to?(:to_key) ? dom_id(arg) : arg }.join("_")
  end

  def query_array
    params[:query].to_s.split(' ')
  end

  def liked?(recipe)
    if current_user.nil?
      'far'
    elsif
      current_user.likes.exists?(recipe_id: recipe.id)
      'fas'
    else
      'far'
    end
  end

end
