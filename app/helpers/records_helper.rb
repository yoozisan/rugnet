module RecordsHelper
  def choose_new_or_edit_record
    if action_name == 'new' || action_name == 'create'
      confirm_student_records_path
    elsif action_name == 'edit'
      confirm_student_record_path
    end
  end

  def choose_new_or_edit_record_confirm
    if action_name == 'new' || action_name == 'create'
      student_records_path
    elsif action_name == 'edit'
      student_record_path
    end
  end
end
