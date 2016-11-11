=begin
Codigo de controle colocando em evidencia os methods que serao usados no helper.
=end
class LivrosController < ApplicationController
  helper_method :sort_column, :sort_direction

  def index
    if sort_column == "edition_year" && sort_direction == "desc"
     @livros = Livro.order("edition_year desc"+",titulo asc")
    else
     @livros = Livro.order(sort_column+" "+ sort_direction)
    end
  end
private
  def sortable_columns
    ["titulo","author","edition_year"]
  end
  
  def sort_column
    sortable_columns.include?(params[:column]) ? params[:column] : "titulo"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
end
