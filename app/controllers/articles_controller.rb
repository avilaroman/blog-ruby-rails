class ArticlesController < ApplicationController

	def new
	end

	def create
		@article = Article.new(article_params)

		if @article.save then
			print 'Articulo guardado'
		else
			print 'Articulo con errores al guardar'
		end
		#redirect_to @article

		render plain: params[:article].inspect
	end

	def show
		println 'Ingreso a show'
		@article = Article.find(params[:id])
	end

	def index
		@article = Article.all
	end
	
	private def article_params
		params.require(:article).permit(:title,:text)
	end

end
