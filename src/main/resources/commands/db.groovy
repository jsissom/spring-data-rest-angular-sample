package commands

import org.crsh.cli.Usage
import org.crsh.cli.Command

class db {

    @Usage("List logged in users")
    @Command
    def who() {
        return "This would list logged in users"
    }

    @Usage("Count things")
    @Command
    def count() {
        return "This would count something in the database"
    }
}
