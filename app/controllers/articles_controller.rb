class ArticlesController < InheritedResources::Base
  actions :all, :except => :index
  before_filter :login_required , :except => :show
  def index
    redirect_to root_path
  end
end

