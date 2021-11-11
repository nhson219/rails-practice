class User::Show
  include Interactor

  def call
    context.user = User.find(context.id)
  end
end
