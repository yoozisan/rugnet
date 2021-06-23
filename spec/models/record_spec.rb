require 'rails_helper'
describe 'recordモデル機能', type: :model do
  let!(:user) {create(:user)}
  let!(:student) {create(:student, user_id: user.id)}
  let!(:record) {create(:record, student_id: student.id)}


  describe 'バリデーションテスト' do
    context '日付の入力が正しい場合' do
      it '新規作成ができる' do
        expect(record).to be_valid
      end
    end
    context '日付が空の場合' do
      it 'バリデーションエラーとなる' do
        record.record_at = nil
        expect(record).to be_invalid
      end
    end
    context '体温の入力が正しい場合' do
      it '新規作成ができる' do
        expect(record).to be_valid
      end
    end
    context '体温が空の場合' do
      it 'バリデーションエラーとなる' do
        record.body_temperature = nil
        expect(record).to be_invalid
      end
    end
  end
end
