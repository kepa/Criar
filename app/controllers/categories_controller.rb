class CategoriesController < InheritedResources::Base
  before_filter :login_required , :except => [ :index , :show ]
  def index
    if session[:logged]
      @articles = Article.find :all , :order => "created_at DESC"
    else
      @articles = Article.find :all, :conditions => ["category_id != ?" , 1] , :order => "created_at DESC"
    end
  end
end

