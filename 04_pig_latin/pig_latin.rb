#write your code here
def translate str
    vowel = %w[a e i o u]
    alphabet = ('a'..'z').to_a
    consonant = alphabet - vowel

    str.split(' ').map do |w|
        if vowel.include?(w[0])
            w + 'ay'
        elsif w.include?('qu')
            if ('qu').include?(w[0..1])
                w[2..-1] + w[0..1] + 'ay'
            elsif consonant.include?(w[0]) && ('qu').include?(w[1..2])
                w[3..-1] + w[0..2] + 'ay'
            end
        elsif consonant.include?(w[0]) && consonant.include?(w[1]) && consonant.include?(w[2])
            w[3..-1] + w[0..2] + 'ay'
        elsif consonant.include?(w[0]) && consonant.include?(w[1])
            w[2..-1] + w[0..1] + 'ay'
        elsif consonant.include?(w[0])
            w[1..-1] + w[0] + 'ay'
        else
            w
        end
    end.join(' ')
end