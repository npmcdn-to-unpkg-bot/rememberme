module MemorialsHelper

  def edit_post(current_user, memorial, post)
    if current_user != nil && (memorial.user == current_user || post.user == current_user || current_user.role == 'admin')
      return true
    else
      return false
    end
  end

end
