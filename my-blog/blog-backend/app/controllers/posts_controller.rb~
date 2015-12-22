def index
  render json: { posts: Post.all, comments: Comment.all }, methods: :comment_ids
end
 
def show
  render json: { post: @post, comments: @post.comments }, methods: :comment_ids
end
 
def create
  @post = Post.new(post_params)
  if @post.save
    render json: { post: @post, comments: @post.comments }, methods: :comment_ids, status: :created, localtion: @post
  else
    render json: @post.errors, status: :unprocessable_entity
  end
end
 
# comments_controller.rb
def index
  render json: { comments: Comment.all }, methods: :post_id
end
 
def show
  render json: { comment: @comment }, methods: :post_id
end
 
def create
  @comment = Comment.new(comment_params)
  if @comment.save
    render json: { comment: @comment }, methods: :post_id, status: :created, location: @comment
  else
    render json: @comment.errors, status: :unprocessable_entity
  end
end
