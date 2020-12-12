class CommentBroadcastJob < ApplicationJob
  queue_as :default

  def perform(comment)
    ActionCable.server.broadcast "blogs_#{comment.blog.id}_channel", comment: render_comment(comment)
 #   @perform 'send_comment', comment: comment, blog_id: blog_id
  end
  private 

  def render_comment(comment)
    CommentsController.render partial: 'comments/comment', locals: 
  end
end