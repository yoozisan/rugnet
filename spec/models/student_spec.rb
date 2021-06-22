require 'rails_helper'
describe 'studentモデル機能', type: :model do
  let!(:user) {create(:user)}
  let!(:student) {create(:student, user_id: user.id)}

  describe 'バリデーションテスト' do
    context '生徒名の入力が正しい場合' do
      it '新規作成ができる' do
        expect(student).to be_valid
      end
    end
    context '生徒名が空の場合' do
      it 'バリデーションエラーとなる' do
        student.student_name = nil
        expect(student).to be_invalid
      end
    end
    context '生徒名が15文字以上の場合' do
      it 'バリデーションエラーとなる' do
        student.student_name = 'a'*16
        expect(student).to be_invalid
      end
    end
  end
end
