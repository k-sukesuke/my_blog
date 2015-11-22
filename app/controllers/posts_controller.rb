class PostsController < ApplicationController

  # index.html.erbの定義
  # Post.all でpostsテーブルの全レコード情報を@postsに格納
  # Author.first でAuthorsテーブルの先頭レコードを@authorに格納
  def index
    @posts = Post.all
    @author = Author.first
  end

  # show.html.erbの定義
  # Post.find でpostsテーブルの要素idを@postに格納
  def show
  @post = Post.find(params[:id])
  end

  # 新規データ情報作成の定義
  # Post.new で@postに空のデータ情報を格納
  def new
    @post = Post.new
  end

  # create.html.erbの定義
  # Post.new(post_params) で(post_params)で指定されたパラメータを情報を@postへ格納
  # 格納する値(post_params)は、後述のprivate部分に記載
  # @post.saveで情報をセーブ
  # /posts/更新した商品id にリダイレクト
  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to "/posts/#{@post.id}"
  end

  # edit.html.erbの定義
  # Post.find でpostsテーブルの要素idを@postに格納
  def edit
    @post = Post.find(params[:id])
  end

  # update.html.erbの定義
  # Post.find でpostsテーブルの要素idからレコードを@postに格納
  # @post.update(post_params)で(post_params)に指定されているパラメータをアップデート
  # 格納する値(post_params)は、後述のprivate部分に記載
  # /posts/更新した商品id にリダイレクト
  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to "/posts/#{@post.id}"
  end

  # destroy.html.erbの定義
  # Post.find でpostsテーブルの要素idから該当するレコードを@postに格納
  # @post.update(post_params)で該当レコード情報を削除
  # ホームディレクトリへリダイレクト
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to "/"
  end

private
  def post_params
    params.require(:post).permit(
      :title,
      :category,
      :body
      )
  end

end
