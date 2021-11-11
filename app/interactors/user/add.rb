class User::Add
  include Interactor
  delegate :errors, to: :user
  def call
    context.user = User.create(context.params)
  end
end
