class PostMailer < ApplicationMailer
    def post_mail(post)
        @post = post
        mail to: User.find(@post.user_id).email, subject: "Post publication confirmation email"
    end
end
