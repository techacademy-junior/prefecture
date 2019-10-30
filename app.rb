require 'sinatra'

get '/' do

  if !params[:keyword].nil? && !params[:keyword].empty?
	  keyword = params[:keyword]
	  a = keyword.length
	  b = keyword.index(/都|道|府|県/) || 0
	  c = keyword.index("市") || 0
	  @prefecture = ""#ここにコードを書いてみよう
		@prefecture = "" if @prefecture.size == 1
	  @city = ""#ここにコードを書いてみよう
  end
  erb :index
end
