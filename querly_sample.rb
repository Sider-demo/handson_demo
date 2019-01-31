# 指定のユーザを取得し、ロックをかけます / 新しいハンドル名に更新します
user = User.find(user_id)
ApplicationRecord.transaction do
  user.lock!
  user.change_handle_name!('新しいハンドル名')
end