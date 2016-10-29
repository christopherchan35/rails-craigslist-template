class ArticlesController < ApplicationController
  def show
    @article = Article.find(params[:id])
    @category = Category.find(params[:category_id])
  end

  def new
    @article = Article.new
    @category = Category.find(params[:category_id])
  end

  def edit
    @article = Article.find(params[:id])
  end

  def create
    @article = Article.new(article_params)
    @category = Category.find(params[:category_id])
    @article.category_id = @category.id
    if @article.save
      render 'show'
    else
      redirect_to '/'
    end
  end

  def update
    @article = Article.find(params[:id])
    @article.update(article_params)
    redirect_to category_article_path(@article)
  end

  def destroy
    @category = Category.find(params[:category_id])
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to "/"
  end

  private
  def article_params
    params.require(:article).permit(:title, :body, :email, :price)
  end
end
