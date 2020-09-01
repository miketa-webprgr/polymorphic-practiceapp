class TagsController < ApplicationController
  before_action :set_tag, only: [:edit, :update, :destroy]
  before_action :set_taggable, only: [:create]

  # GET /tags
  def index
    @list = list_param&.capitalize
    # クエリパラメータがmanagerの場合、managerに紐づくTagを表示する(managerという独自メソッドをscopeで定義)
    if list_param == "manager"; @tags = Tag.managers
    # クエリパラメータがplayerの場合、playerに紐づくTagを表示する(playerという独自メソッドをscopeで定義)
    elsif list_param == "player"; @tags = Tag.players
    # クエリパラメータがそれ以外の場合、全てのTagを表示する
    else; @tags = Tag.all
    end
  end

  # GET /tags/1/edit
  def edit
  end

  # POST /tags
  def create
  # @tag = Tag.new(taggable_params)でもいいような気がする
    @tag = @taggable.tags.build(tag_params)

    if @tag.save
      redirect_to @tag.taggable, notice: 'Tag was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /tags/1
  def update
    if @tag.update(tag_params)
      redirect_to @tag.taggable, notice: 'Tag was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /tags/1
  def destroy
    @tag.destroy
    redirect_to @tag.taggable, notice: 'Tag was successfully destroyed.'
  end

  private

    def set_tag
      @tag = Tag.find(params[:id])
    end

    def tag_params
      params.require(:tag).permit(:body)
    end

    # createアクションの時のみに使用する独自のprivateメソッド
    def set_taggable
      # constantizeメソッドを使うことで文字を定数化できる
      @taggable = taggable_params[:taggable_type].constantize.find(taggable_params[:taggable_id])
    end

    # createアクションの時のみに隠しパラメータを受け取る必要があるので、独自のstrongパラメータを設定
    def taggable_params
      params.require(:tag).permit(:body, :taggable_type, :taggable_id)
    end

    # クエリパラメータをクライアントから受け取り、"list"=>"manager"もしくは"list"=>"player"以外はnilとする
    def list_param
      if params.has_key?(:list) && params.has_value?("player") || params.has_value?("manager")
        params.require(:list)
      else; nil
      end
    end
end
