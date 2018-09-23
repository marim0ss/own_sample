class Diary < ApplicationRecord
  validates :title, presence:true, length: {maximum: 255}
  validates :body, presence:true, length: {maximum: 10_000}

  validate :proper_title_and_body  # validate(単数形)..独自の検証ルール

  # scope...検索条件に自分で決めたnewestという名前をつける
    # 過去１週間以内に作成されたデータを検索する   -> Diary.newsetで使用
  scope :newest, -> { where(created_at: 1.week.ago..Time.now)}



  # 独自の検証ルールを作るため、検証ルール用のメソッドを定義
  private

    def proper_title_and_body
      # --------------------------------------------------------
      # Dairyモデルのタイトルと本文が、決められたルールに沿って入力されているかを判定するメソッド
      #   内容1.titleが今日から始まっているか？弾かれたらエラーメッセージを表示
      #   内容2.bodyが。で終わっているか？弾かれたらエラーメッセージを表示
      # --------------------------------------------------------
      unless title.starts_with?('今日')  # starts_with:引数に指定した文字から始まっているかを確認するメソッド
        errors.add(:title, 'は「今日」から始めてください。')
      end
      unless body.ends_with?('。')
        errors.add(:body, 'は句点（。）で終了してください。')
      end
    end
end
