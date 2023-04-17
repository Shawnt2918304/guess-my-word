class WordBuilder
    
    WORDS = [
        {
            "word" => "ruby",
            "hint" => "WORD HINT: Yukihiro 'Matz' Matsumoto blended parts of his favorite programming languages (Perl, Smalltalk, Eiffel, Ada, and Lisp) to create this language."
        },
        {
            "word" => "boolean",
            "hint" => "WORD HINT: A data type that represents two values: true and false."
        },
        {
            "word" => "aaray",
            "hint" => "WORD HINT: A data structure that stores a collection of elements, each identified by an index or a key."
        },
        {
            "word" => "method",
            "hint" => "WORD HINT: A function that is associated with an object or a class in object-oriented programming."
        },
        {
            "word" => "object",
            "hint" => "WORD HINT: An instance of a class in object-oriented programming that has its own set of properties and methods."
        },
        {
            "word" => "variable",
            "hint" => "WORD HINT: A named storage location in a program that holds a value or a reference to an object."
        },
        {
            "word" => "debugging",
            "hint" => "WORD HINT: The process of finding and fixing errors in software code."
        },
        {
            "word" => "algorithm",
            "hint" => "WORD HINT: A set of instructions or steps that describe how to solve a problem or perform a task."
        }
    ]

    def self.get_random_word
        random_word = WORDS.sample
        { "word" => random_word["word"], "hint" => random_word["hint"] }
    end
  end


