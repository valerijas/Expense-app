# Expense-app
Statring to build an expense app.
create new project.
let's run the demo up.
now let's start from scratch.
delete all the default code from main.dart

create a homescreen. (create folder 'screens' create file 'category_screen.dart')
add it to our 'main.dart'.

now let's create some models and constants.
(create folders 'models' and 'constants'. In folder 'models' create file 'ex_category.dart')
we need to generate the icons.
to do that let's define some inintial propetries.
(create file 'iocns.dart' in folder 'constants')
now let's create another model that will define a expense.
(create file 'expense.dart' in folder 'models')

now let's create a database.
import sqflite and the path package.
(write in Terminal command 'flutter pub add sqflite' and 'flutter pub add path')
(create file 'database_provider.dart' in folder 'models')
now we can fetch the categories from the database.
since we are using a native feature(storage and database) of android.
we need to reinstall our app.

now let's setup our 'category_screen' to fetch the categories.
for passing data and managing state we are going to use provider package.
(write in Terminal command 'flutter pub add provider')
let's make our 'database_provider' a provider class.
(create new folder 'widgets', then in this folder create folder 'category_screen',
in this folder create file 'category_fetcher.dart')
with that we can see our category list.
let's separate some widgets to organize our code.
(create file 'category_list.dart' and 'category_card.dart' in folder 'category_screen')

now let's work on adding some expenses to categories.(in file 'database_provider')
now let's create a form for adding expenses.(create file 'expense_form.dart' in folder 'widgets')
so we can add expenses now.
let's see if they persist.
as you can see the data is still there.
a problem is still there.
let's modify logic.(editing file 'database_provider')
now it works.

now let's work with our second screen.
expense screen where we can see our expenses.

there was an issue where the totalAmount being 0 at the start of our app.
it happened because we didn't fetch the expenses on starting of our app so in-app
'_expenses' was empty. that's why the totalAmount was not working.

let's reinstall the app and add some entries/expenses.

let's create our second screen.(create file 'expense_screen.dart' in folder 'screens')
to reach the second screen we need an action from somewhere.(editing files 'main.dart' and 'category_card')

we passed an argument bacause we will fetch the expenses based on category.(editing file'database_provider')
let's fetch the expenses.(create new folder 'expense_screen' in folder 'widgets' and create
 there file 'expense_fetcher.dart' and 'expense_card.dart')

now there we can see the expenses.
let's format the date and the currency.
we will use the intl package.(write in Terminal command 'flutter pub add intl')

now let's start working on charts.
for that we will use fl_chart.(write in Terminal command 'flutter pub add fl_chart', create new 
file 'total_chart.dart' in folder 'category_screen')
with that our total_chart is working.

now let's start working on our category chart inside the expense screen.(editing file 'expense_fetcher',
create file 'expense_chart.dart')
in this chart we will show the last week's expenses.
let's calculate last week's expenses.(editing file 'database_provider' and 'expense_chart')
let's add some more expenses of different date.
it's showing it in reverse.Let's fix it.(editing file 'expense_chart')
let's start on titles.(editing file 'expense_chart')
with that our expense chart looks good.

now let's add another screen to show all the transactions.(create file 'all_expenses.dart' in folder 'screens',
create new folder 'all_expenses_screen' in folder 'widgets' and create file 'all_expenses_fetcher.dart',
editing file 'database_provider')
let's add some actions to access the all expenses screen.(editing file 'main,dart' and 'category_fetcher',
create file 'all_expenses_list.dart' in folder 'all_expenses_screen',)

now let's create a search function for this screen.(create file 'expense_search.dart' in 
folder ' all_expenses_screen')
let's implement the search method.(editing files 'database_provider'and 'expense_search')

now that I see it, we don't have a method for deleting the expenses.
let's fix that.(editing file 'database_provider')
we should make it dynamic but for now let's keep it.(editing file 'expense_card')

now our app is working fine but there is still an issue when it loads for the first time.

when the app starts, there is ni pie chart, 'NaN' everywhere.
let's fix that.(editing files 'total_chart' , 'expense_list' and 'all_expenses_list')

mow one more thing.
when we delete an entry, it get's deleted without warning.
let's fix that.(create file 'confirm_box.dart' in folder 'expense_screen')

that takes care of it. 











