class Reply
    def self.find_by_id(id)
        reply_data = QuestionsDatabase.get_first_row(<<-SQL, id: id)
          SELECT
            replies.*
          FROM
            replies
          WHERE
            replies.id = :id
        SQL

        Reply.new(reply_data)
    end
end