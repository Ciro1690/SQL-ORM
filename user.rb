class User

    def self.find_by_id(id)
        user_data = QuestionsDatabase.get_first_row(<<-SQL id : id)
          SELECT
            users.*
          FROM
            users
          WHERE
            users.id = :id
        SQL

        user_data.nil? ? nil : User.new(user_data)
    end
end