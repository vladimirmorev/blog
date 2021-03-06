class PostMailer < ApplicationMailer
  default from: "blog-heroku@example.com"

  def post_pending_email(user, post)
    @user = user
    @post = post
    @url  = post_url(@post)
    #you have to manually set admin email
    mail(to: "v.morev90@gmail.com", subject: "#{@user.name} created new post")
  end

  def post_approved_email(user, post)
    @user = user
    @post = post
    @url  = post_url(@post)
    mail(to: @user.email, subject: "Your article has been successfully approved")
  end

end
