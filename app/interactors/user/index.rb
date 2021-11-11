class User::Index
  include Interactor

  def call
    # TODO
    context.users = User.is_not_admin.all
  end
end
