require 'csv'

task :import => [:environment] do
    file = "db/livros.csv"

    CSV.foreach(file) do |row|
      Livro.create ({
         :titulo => row[0],
         :author => row[1],
         :edition_year => row[2]
      }
     )
    end

end
