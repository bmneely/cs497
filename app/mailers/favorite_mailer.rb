class FavoriteMailer < ApplicationMailer
  add_template_helper(ApplicationHelper)

  default from: "from@example.com"

  def new_item(user, store, item)
    @user = user
    @store = store
    @item = item

    mail(to: user.email, subject: "New item in #{store.name}")
  end
end
