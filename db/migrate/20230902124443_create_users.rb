class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users, comment: 'ユーザー情報' do |t|
      t.string :name, null: false, comment: 'お名前'

      t.timestamps
    end
  end
end
