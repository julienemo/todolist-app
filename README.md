Julie Kwok


Clone the repo, bundle, create db if needed, migrate and seed.

Launch the server then go to: http://localhost:3000/

The page is presented in three parts:

* on top: the "check mail" button generates a new mail, marked as activat item in the list. A new mail is displayed in blue. (2.3 :heavy_check_mark:)

* below on the left : a list of all recived mails

* below on the right: a detailed view of selected email(empty by default) (2.2 :heavy_check_mark:)


click any mail in the list on the left to visualize its content detail on the right. The selected email becomes an active item in the list (2.4 :heavy_check_mark:)

Once a mail is selected, two buttons will appear below the content details:

* Delete (deletes email from left and right, reset the detail section to empty) (2.5 :heavy_check_mark:)
* Mark as unread(marks email as unread without refreshing. Unread = object displayed in bold in the list on the left)(2.6 :heavy_check_mark:)
