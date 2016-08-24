module ApplicationHelper

  def edit_memorial(current_user, memorial)
    if memorial != nil && memorial.id != nil && (memorial.user == current_user || current_user.role == 'admin')
      return true
    else
      return false
    end
  end

end
