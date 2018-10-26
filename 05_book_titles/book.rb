class Book
# write your code here
    attr_writer :title

    def title
        @conjuctions = %w[and that but or as if than because while]
        @prepositions = %w[of in to for with on at from by about]
        @articles = %w[the a an]

        @title.split.map.with_index do |w, i|
            stop_words = @conjuctions + @prepositions + @articles
            unless (stop_words.include? w) and (i > 0)
                w.capitalize
            else
                w
            end
        end.join(' ')
    end
end