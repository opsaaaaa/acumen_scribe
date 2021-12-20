Feature: onboarding is easy and effecient
    users can create an acount and start taking notes immediately

    Scenario: a new user takes thier first note

        When a user creates an account
        Then they should be greeted with a dashboard 
        And the dashboard should contain example notes
        And a new note ready for editing

        When the user clicks the new note
        Then the note should be editable
        And any changes they make should be saved.

        When the user click an existing note
        Then it should become editable
        And any changes should be automatically saved.
