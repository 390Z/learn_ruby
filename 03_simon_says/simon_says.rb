def echo says
    says
end

def shout says
    says.upcase
end

def repeat (says, n = 1)
    if n == 1
        says + ' ' + says
    else
        ([says] * n).join ' '
    end
end

def start_of_word (says, characters)
    if characters == 1
        says[characters - 1]
    else
        says[0, characters]
    end
end

def first_word says
    says.partition(" ").first
end

def titleize says
    little_words = ['and', 'the', 'or', 'a', 'an', 'over']
    says.split(' ').map.with_index do |w, i|
        unless (little_words.include? w) and (i > 0)
            w.capitalize
        else
            w
        end
    end.join(' ')
end