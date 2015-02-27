# Preview all emails at http://localhost:3000/rails/mailers/notification_mailer
class NotificationMailerPreview < ActionMailer::Preview
  def forum_post_notification
    NotificationMailer.forum_post_notification(User.first, ForumPost.first).deliver_now
  end
end
