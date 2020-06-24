class Question

    def self.find_by_id(id)
        question_data = QuestionsDatabase.get_first_row(<<-SQL, id: id)
          SELECT
            questions.*
          FROM
            questions
          WHERE
            questions.id = :id
        SQL

        Question.new(question_data)
    end
end
