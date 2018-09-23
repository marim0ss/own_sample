class CreateUsers < ActiveRecord::Migration[5.1]

  # rails g model User実行でモデルクラスが作成＋このマイグレーションファイルができる
  # この後db:migrate実行すると、このコードが実行される=>テーブルが作られる
  def change
    create_table :users do |t|
      t.string :name
      t.string :nickname
      t.integer :age
      t.float :height
      t.string :mobile
      t.string :email

      t.timestamps
    end
  end
end
