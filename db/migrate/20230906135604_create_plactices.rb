class CreatePlactices < ActiveRecord::Migration[7.0]
  def change
    create_table :plactices, comment: '練習メモ' do |t|
      t.string :name,null: false, comment:'練習名'
      t.integer :weight, comment:'重量'
      t.integer :rep, comment:'回数'

      t.timestamps
    end
  end
end
