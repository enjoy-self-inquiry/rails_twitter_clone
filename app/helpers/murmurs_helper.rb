module MurmursHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'create'
      confirm_murmurs_path
    elsif action_name == 'edit'
      murmur_path
    end
  end
end
