class WordBuilder
    
    WORDS = [
        {
            "word" => "ruby",
            "hint" => "WORD HINT: Yukihiro 'Matz' Matsumoto blended parts of his favorite programming languages (Perl, Smalltalk, Eiffel, Ada, and Lisp) to create this language."
        },
        {
            "word" => "seven",
            "hint" => "WORD HINT:seven"
        },
        {
            "word" => "tables",
            "hint" => "WORD HINT:tables"
        }
    ]

    def self.get_random_word
        random_word = WORDS.sample
        { "word" => random_word["word"], "hint" => random_word["hint"] }
    end
  end


