class Admin::ArticleController < ApplicationController


	def index

		@articles = Article.all

	end


	def new
		@article = Article.new
	end


	def create
		Article.create(article_params)
		redirect_to root_path
	end

	def show

		@article = Article.find_by_id(params[:id])



	end

	def update
		@article = Article.find_by_id(params[:id])
		@article.update(article_params)

		redirect_to root_path
	end


	private
	def article_params
		params.require(:article).permit(:title,:content)

	end
end
