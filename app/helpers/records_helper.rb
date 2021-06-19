module RecordsHelper
  def choose_new_or_edit_record
    if action_name == 'new' || action_name == 'create'
      confirm_student_records_path
    elsif action_name == 'edit'
      # student_record_path
      student_record_path
    end
  end
end
