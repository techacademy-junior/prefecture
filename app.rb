require 'sinatra'

get '/' do

  if !params[:keyword].nil? && !params[:keyword].empty?
    # ここにコードを入力してください。
	  @keyword = params[:keyword]
	  a = @keyword.length
	  b = @keyword.index("県") || 0
	  c = @keyword.index("市") || 0
	  @prefecture = @keyword[0,b+1]
	  @city = @keyword[b+1,c-b]
    # ここまでコードを入力して下さい。
  end
  erb :index
end

# Lesson3変数を使ってプログラミング