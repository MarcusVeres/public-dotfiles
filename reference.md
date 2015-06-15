REFERENCE

-------------------------------
vim
-------------------------------

vimtutor                            // type in terminal ; opens tutorial app

0                                   // goes to the beginning of a line
Shift + 4 ($)                       // goes to the end of a line
Shift + 5 (%)                       // toggles between endpoints - for example, brackets enclosing an array

Shift + V                           // visual editor (line selector)
Ctrl + V                            // visual editor (char selector)

y                                   // Yank (Copy)
u                                   // Paste

:w                                  // write
:q                                  // quit
:x OR :wq                           // write + quit

:%s/replaceThis/withThis/g

:100                                // go to lines

ci[selector]                        // change inside selector - example: ci"
di[selector]                        // delete inside selector - example: di"

ca[selector]                        // change around selector (change includes selector)
da[selector]                        // delete around selector (delete includes selector)

ct[selector]                        // change until first instance of selector
dt[selector]                        // delete until first instance of selector

%                                   // toggle between open/close set of parentheses, brackets, braces
d%                                  // delete everything between a set of parentheses, brackets, braces
y%                                  // yank everything between a set of parentheses, brackets, braces
                                    // the above work from either the open or the close

:r! sed -n 5,12p /path/to/file.ext  // copy lines from another file

:%s/\r//g                           // replace all carriage return characters ^M with nothing 
:%s/:.*/                            // delete everything after the : on every line

:%s/\$/\r/                          // insert return before every dollar sign

s/\[.\{-}]/aaaaaaa/                 // replace any length of text between two brackets with aaaaaaaa
                                    // example: [hello] , [ntahoeuns] , [1231] becomes: aaaaaaa , aaaaaa , aaaaaa

    -------------------------------
    .vimrc

    Your .vimrc file goes in your $HOME directory. 
    The commands in the .vimrc are the same as you type in ex-mode in vim, only without the leading colon, so colo evening would suffice. 
    Comments in the .vimrc are indicated with a leading double-quote.

    :eat_a_dick           // when running vim
    eat_a_dick            // inside .vimrc

    To see an example vimrc, open $VIMRUNTIME/vimrc_example.vim from within vim
    :e $VIMRUNTIME/vimrc_example.vim


    -------------------------------
    deleting

    In general, d<motion> will delete from current position to ending position after <motion>. 
    This means that:

    d<leftArrow>      // delete current and left character
    d$                // delete from current position to end of line
    d^                // delete from current backward to first non-white-space character
    d0                // delete from current backward to beginning of line
    dw                // deletes current to end of current word (including trailing space)
    db                // deletes current to beginning of current word

    :g/delete_lines_containing_this_pattern/d   // deletes the entire line that matches the pattern

    -------------------------------
    nerdtree

    Ctrl + W                                    // switch windows between tree and vim

    arrows                                      // navigate
    [return]                                    // open a file ; open a folder

    r                                           // refresh current folder in nerdtree
    R                                           // refresh the root folder

    m                                           // open modifier menu
        m                                       // move file ( basically, rename )
        d                                       // delete file
        a                                       // create a file

    examples:

    m + a + file.name                           // create the file.name
    m + a + folder_name/                        // create the folder_name folder ( note the trailing slash )

    :new relative/path/file.name                // create a new file at that location, with that name


    -------------------------------
    diff-ing 

    vimdiff file1 file2 [file3 [file4]]         // opens two files to compare in diff mode
    vim -d file1 file2 [file3 [file4]]          // opens two files to compare in diff mode

    CTRL-W h            // move to the window on the left
    CTRL-W j            // move to the window below
    CTRL-W k            // move to the window above
    CTRL-W l            // move to the window on the right
    CTRL-W t            // move to the TOP window
    CTRL-W b            // move to the BOTTOM window

    CTRL-W K            // move window to the upper
    CTRL-W H            // move window to the far left
    CTRL-W J            // move window to the bottom
    CTRL-W L            // move window to the far right


    -------------------------------
    insert literal character

    If you are in INSERT mode, and expandtab option switched on, pressing tab results in inserting configured number of spaces.
    But occasionally you may want to insert tab character itself.

    You can use <CTRL-V><Character> -- WHILE YOU ARE IN INSERT MODE!!
    In insert mode <CTRL-V> inserts a literal copy of your next character.

    Examples:

    [CTRL + v][TAB]                 // insert tab character
    [CTRL + v][RETURN]              // insert newline character

    Note: You MUST already be in insert mode before you hit [ Ctrl + v ] , otherwise this will not work!


    -------------------------------
    get numpad working properly with iTerm2 and Vim
        http://superuser.com/questions/565178/how-do-i-get-the-numpad-to-work-in-vim-using-iterm2-on-osx-with-term-xterm


    -------------------------------
    replace different length spaces with consistent spacing
        http://stackoverflow.com/questions/3860532/vim-regex-replace-multiple-consecutive-spaces-with-only-one-space


    -------------------------------
    more shortcuts
        http://stackoverflow.com/questions/5400806/what-are-the-most-used-vim-commands-keypresses




-------------------------------
MacVim
-------------------------------

Tab between panels: 

    Ctrl + h = left
    Ctrl + l = right

    Ctrl + k = up
    Ctrl + j = down




-------------------------------
TERMINAL
-------------------------------

ls                          // display files
ls -la                      // list files and hidden files in a list format

du -hs /path/to/file        // total disk space used by file
du -hs *                    // show sizes of all files in directory

du -sk name                 // size in kilobytes ; not formatted with abbreviations (e.g. megs , as in -hs)
du -sk                      // size of current folder

ps aux | grep compass
ps aux | ps

tail -f ./app/storage/logs/*                // live monitoring of a file for changes

compass clean [ path of config rb ]

sed -i 's/search_term/replace_term/g' folder/filename.ext

// Remove folder and contents
rm -rf * 

// Copy folder and contents
cp -r path/to/source/folder/ path/to/new/folder/

// Search within folders and files
grep -ir "search_term" .
grep -ir "search_term" folder_name/

grep "^exact_match$"        // finds the EXACT match. the ^ and the $ are known as "anchors"

// Find files and folders
    // find works like select all in 
    // find_one works like select w limit(1)
find . -name index.php

// Find and perform an action 
    // example:
    find . -name *.php -exec rm -f {} \;            // removes all files with a php extension 

    // delete items matching a criteria
    find . -iname "thing*" -exec rm -v {} \;
    find .-iname "thing*" -print0 | xargs -0 rm 


ls -1 targetdir | wc -l         // count the number of files in a folder

CTRL + L                    : Clear the screen.
CTRL + W                    : Delete the word starting at cursor.
CTRL + U                    : Clear the line i.e. Delete all words from command line.
Up and Down arrow keys      : Recall commands (see command history).
Tab                         : Auto-complete files, directory, command names and much more.
CTRL + R                    : Search through previously used commands (see command history)
CTRL + C                    : Cancel currently running commands.
CTRL + T                    : Swap the last two characters before the cursor.
ESC + T                     : Swap the last two words before the cursor.
CTRL + H                    : Delete the letter starting at cursor.

ALT + Left/Right Arrows     : Previous/Next word 

// get more information about Linux commands:
man commandName
info commandName
commandName -h
commandName --help

open -a 'app name' filename.ext     // open a file with a particular application
                                    // ex: open -a 'Sublime Text' index.html 

sudo -su someuser                   // switch to a user
sudo -su someuser git pull          // performs the git pull on behalf of that user


\[space]                    // escape a space character

date                        // output the date
date +%[letter]             // output parts of the date in a particular format : date +%a\ %e\ %Y
date +%A\ %B\ %e,\ %Y       // Tuesday March 25, 2014


    -------------------------------
    Copying files
    http://www.thegeekstuff.com/2013/03/cp-command-examples/


    -------------------------------
    Shell Pipes

    command1 | command2
    command1 | command2 | commandN
    command1 arg1 | command2 arg1 arg2
    get_data_command | verify_data_command | process_data_command | format_data_command > output.data.file
    get_data_command < input.data.file | verify_data_command | process_data_command | format_data_command > output.data.file

    You can connect two or more commands at a time.
    The data path which joins two programs is called a pipe.
    The vertical bar (|) is the pipe symbol.
    A shell pipe supports Unix philosophy of chaining programs thorougher to complete complex task.
    Redirection in pipes is also allowed.
    The data path only works left to right

    ls -la | grep ".css"                // check if there are any css files in the current working directory

    http://bash.cyberciti.biz/guide/How_to_use_pipes_to_connect_programs


more                                        // paginates information that is outside the view area of the screen
                                            // can be used along with the | command
ls -la | more                               // displays list of files and folders, paginated


echo 'line of text' >> file.ext             // add line of text to a file
. path/to/file_name.ext                     // run or source the file
source path/to/file.ext                     // run or source the file


    // .bash_profile shortcut 
    md () { mkdir -p "$@" && cd "$@"; }     // create directory and switch to it


-------------------------------
BASH PROFILE
-------------------------------

alias shortcut="open -a 'app name'"         // create a shortcut to open a file with a program
                                            // ex   : alias photoshop="open -a 'Adobe Photoshop CS6'"
                                            // use  : photoshop my_file.psd || photoshop




-------------------------------
Bash Scripting
-------------------------------


    Prepending to many files 
    -------------------------------------------

    for f in *.md; do mv "$f" "test - $f"; done

    for f in *.md
    do
        mv "$f" "test - $f"
    done


    Advanced tools for playing with files
    -------------------------------------------

    for i in scss/*
    do

        echo "file: $i"

        filename=$(basename "$i")
        echo "basename: $filename"

        extension="${i##*.}"
        echo "extension: $extension"

        pure=$(basename "${i%.*}")
        echo "pure: $pure"

        echo "--------------------"

        # perform an action on a file


    done

..

http://www.tldp.org/LDP/Bash-Beginners-Guide/html/index.html

..




-------------------------------
SCREEN
-------------------------------


screen -ls                                  // display current screens

screen -S [name]                            // create a screen with a particular name
screen -r [name]                            // reattach that screen

screen -r                                   // resumes an existing screen
screen -d                                   // detatch the current screen
screen -d -r                                // detatches the current screen if needed; reattaches another screen

screen -X -S [screen number] quit           // permanently kill a screen




-------------------------------
git
-------------------------------

git ci -am "see #4555 ... "
git ci -am "refs #4555 ... "

git commit -m "see #1908 : ..."


git stash                           // save current files in a stack to work on later
git stash list                      // view a list of existing stashes on this branch

git stash save
git stash apply stash@{0}           // in place of the 0, put whatever stash you want to apply
git stash drop stash@{0}            // deletes a stash
git stash drop                      // drops the top stashes

git reset HEAD <file>               // undo add file before a commit

git push -u origin branchname       // first time you create a branch, to set main branch to track remote
git push origin branchname          // every push after the first one does not need -u

git commit --amend -m "message"     // edit a commit message

git rm $(git ls-files --deleted)    // if you rm some files , you can use this to git rm all deleted files 




-------------------------------
CSS
-------------------------------

background { color, image, repeat, position }




-------------------------------
Sass
-------------------------------

sass-convert scss/file.scss sass/file.sass

sass --watch a.scss:a.css --style compressed



-------------------------------
SUBLIME
-------------------------------

// Refresh the folders hotkey
Sublime > Preferences > Key Bindings: User
{ "keys": ["f5"], "command": "refresh_folder_list" }

// Switch tabs "normally" (left to right)
Cmd + Alt + Right/Left

// To change default Ctrl + Tab behavior
// Edit: Preferences/Key bindings - User

[
    { "keys": ["ctrl+pagedown"], "command": "next_view_in_stack" },
    { "keys": ["ctrl+pageup"], "command": "prev_view_in_stack" },

    { "keys": ["ctrl+tab"], "command": "next_view" },
    { "keys": ["ctrl+shift+tab"], "command": "prev_view" }
]




-------------------------------
mysql
-------------------------------


mysql                   // starts mysql as anon
mysql -u root           // attemps to start as root ; will fail if passvort is required
mysql -u root -p        // login as root ; prompted for password


$(brew --prefix mysql)/bin/mysqladmin -u root  password 'newpassword'           // brew change pass - fresh install 
$(brew --prefix mysql)/bin/mysqladmin -u root -p  password 'newpassword'        // change pass if already have a password

mysql -u username -p database_name < file.sql       // import file into database

.




-------------------------------
NODE
-------------------------------


To run a Node server, use the following command:
node scripts/web-server.js

The Node server is going to look for a packages.json file, 
You need this file to be in the same directory as the web-server

For example, if you have packages.json in your home, then you would type:
node ~/scripts/web-server.js




-------------------------------
SSH Shell Passwerd
-------------------------------

Adding Password to SSH for Git

ssh-agent $SHELL
ssh-add

[ Prompted for Password ]




-------------------------------
Composer
-------------------------------

// Install dependencies
php composer.phar install

// 
php composer.phar update




-------------------------------
Laravel
-------------------------------

php artisan optimize        // refresh the class list - when you create a new class, it will not work unless you run this command

bootstrap/start.php

// turn on devmode
vi app/config.php // set devmode to true




-------------------------------
CMS Stuff
-------------------------------

    // get twig to work
    cd ~/sites/create-my-whatever/app/storage/
    touch views/
    chmod -R 777 views/




-------------------------------
PHP
-------------------------------

self::functionName();       // reference a function from inside a class
$this->variableName;        // reference a variable from inside a class




-------------------------------
Python
-------------------------------

my_string = "hello"                 // string variable assignment
my_string[0]                        // outputs the 0th character of the string array - outputs "h"
my_string[100]                      // out of range - throws error
my_string[-1]                       // starts counting from the end of the array - outputs "o"
my_string[1:3]                      // substring[ start : stop ] // stops at (stop - 1) - outputs "el"
my_string[3:]                       // selects from 4 to the end - outputs "lo"
my_string[:2]                       // selects from beginning to 2 - outputs "he"
my_string[:]                        // equivalent to my_string - start from beginning , go to end

my_string.find('target')            // returns the position of target string ; outputs -1 if not found
my_string.find('target' , 4)        // returns position of target AFTER position 4 



..




-------------------------------
Python and Venv
-------------------------------

pip install virtualenv

virtualenv venv                     // install an instance of venv
virtualenv venv --distribute        // has been re-merged into the main install - is a no-op

. venv/bin/activate                 // turn on virtual environment
deactivate                          // turn off virtual environment

pip list                            // show list of installed modules

pip install module_name             // install a module
                                    // ex: pip install simplejson || pip install pymongo

pip install -r requirements.txt     // installs all the requirements as set out inside the .txt file
pip freeze > requirements.txt       // generate list of requirements and save into the .txt file

>>>
WARNING: Do NOT name an application after an imported module. 
For example: in the file feedparser.py, the line: import feedparser , will try to import your .py file, and not the module!!!
>>>

str(10)                             // cast the integer 10 as a string
int('20')                           // cast the string '20' as an integer




-------------------------------
Flask
-------------------------------

render_template('index.html')       // parses file
send_file('index.html')             // does not parse


..




-------------------------------
IRC
-------------------------------

/join #channelname

/whois username

/say /command will not execute

/me is performing an action

[Command] + [UP] / [DOWN]                       // scroll through conversations

/leave                                          // gtfo the channel

/invite username                                // invite to a room

/kick username <message>

/msg nickserv register <passwd> <email>

/topic something interesting                    // sets topic of channel to "something interesting"

/mode #channel +p                               // set channel to private

/msg username message

/list                                           // display list of available channels

    --------------------
    /join new_channel
    /register #new_channel my_password description




    // change color of text

    [ Ctrl + C ][ color ID ] text in a color [ Ctrl + C ]
    this C5 text C is colored
    the second C stops the color




-------------------------------
Mongo DB
-------------------------------

mongo --host [hostname]                     // connect to a mongo thingy

db                                          // display the name of the database
show databases                              // display list of databases
use database_name                           // switch to, or create database

show collections                            // show the collections that exist in the table
db.collection_name.find()                   // display all entries inside a collection

var_name = { 'prop' : 'value' }             // create a variable
db.collection_nome.insert ( var_nome )      // insert a variable object into the collection

show tables

db.[table_name].find()

db.collection_name.find()                       // display all entries
db.col.find({ 'a_field' : 'a_value' })          // display all entries with 'a_value' inserted in 'a_field'
db.col.find({ 'field' : { $exists : true} })    // display all entries that contain a 'field' field

use [database];
db.dropDatabase();

db.col_name.update({} , {$set: {"Default_Letter" : "X"} } , false , true )       // insert a property to all entries in a collection
db.col_name.update({} , {$unset: {"Default_Letter" : ""} } , false , true )      // remove a property from all entries in a collection

    // MongoImport
    // Used to import an external dataset ( JSON, .CSV ) into mongo

    mongoimport --db database_name --collection collection_name --file ~/path/to/file.csv --type csv --headerline
    mongoimport --db database_name --collection collection_name --file ~/path/to/file.json --type json

    // importing large quantities of data ; avoiding BSON parse errors
    mongoimport --db tmp_rumie --collection events --file ~/sites/rumie-analytics/static/data/analytics.json --jsonArray


    // MongoExport
    // Used to import an external dataset ( JSON, .CSV ) into mongo

    mongoexport --db database_name --collection collection_name --out file_name.json --jsonArray


    --------------------
    random insertions (hehehe)
    say you want to loop through an existing collection, and update a specific field with a random value

    ----
    CASE: assign a random age for a user 

    db.events.find({}).forEach( 
        function(item){ 
            db.events.update(
                {"_id":item._id}, 
                {$set: { "properties.UserAge": (Math.floor(Math.random()*12) + 6) }} 
            )
        } 
    )
    
    db.events.find({}).forEach( function(item){ db.events.update({"_id":item._id}, {$set: { "properties.UserAge": (Math.floor(Math.random()*12) + 6) }} )} )

    ----
    CASE: we want to update dummy users with a gender

    db.events.find({}).forEach( 
        function(item){ 
            db.events.update(
                {"_id":item._id}, 
                {$set: { "UserGender": ( Math.floor(Math.random()*2) == 0 ) ? 'M' : 'F' }} 
            )
        } 
    )

    db.events.find({}).forEach( function(item){ db.events.update({"_id":item._id}, {$set: { "UserGender": (Math.floor(Math.random()*2)) == 0 ? 'M' : 'F'  }} )} )

    ----
    CASE: complex function for inserting content

    function randomApp() { 
        var apps = ["Intro to Math" , "Intro to Physics" , "Great Literature" , "World History" , "Chemistry 101"];
        var randomApp = apps[ Math.floor(Math.random() * apps.length) ] 
        return randomApp; 
    } 

    db.events.find({}).forEach( 
        function(item){ 
            db.events.update({"_id":item._id}, {$set: { "properties.FileOpened": randomApp() }} )
        } 
    )



..



-------------------------------
Vagrant / Homestead
-------------------------------

Adding new sites to Vagrant setup:

1 - edit Homestead.yaml
2 - "vagrant provision" | or | "vagrant reload --provision"




-------------------------------
Cordova
-------------------------------

cordova create hello com.example.hello HelloWorld

cordova platform add ios

cordova prepare ios
cordova compile ios

cordova emulate ios

..

/usr/local/bin/phonegap help

phonegap create app_name
cd app_name
phonegap install ios
phonegap build ios

phonegap serve
phonegap --emulator run ios

..




-------------------------------
JavaScript
-------------------------------

addEventListener


var elem = document.getElementById('people')
var list = elem.getElementsByTagName('li')

var elements = document.getElementsByClassName(names); // or:
var elements = rootElement.getElementsByClassName(names);

document.getElementById('main').getElementsByClassName('test');


    -------------------------------
    Prevent Default

    // will stop the link from triggering, allowing my program to perform custom validation

    <a id="my_id" href="some-link.html">Custom Button</a>

    document.getElementById('my_id').addEventListener('click' , function(evt){
        e.preventDefault();
    });




-------------------------------
Node
-------------------------------

var module_name = require('module_name');       // include module in file

process.version

var os = require('os');
console.log( os.type() );


console.log('\033[2J');                         // clears the console

_                   // returns the value of the last variable
                    // ex b = 5 , [ return ] , b , [ return ] , _ , [ return ]

[ tab ]                                         // provides a list of functions, variables, types
[ ctrl ] + c                                    // cancel current process (e.g. creating a function inline)


console.dir(functor);
console.dir(JSON.stringify(functor));




-------------------------------
ImageMagick
-------------------------------

// Exporting all frames of a gif into a spritesheet
montage original_image.gif -tile x1 -geometry +0+0  -alpha On -background "rgba(0, 0, 0, 0.0)" -quality 100 spritesheet_file.png

// Spritesheet Creation Resources
http://jmsliu.com/622/convert-gif-animation-to-sprite-sheet-for-html5-games.html
http://jmsliu.com/726/create-sprite-sheet-from-flash-for-html5.html

// Display properties of an image
convert MyJpeg.jpg -print "Size: %wx%h\n" /dev/null

file my_file.png
// outputs file info




//// END




-------------------------------
Excel
-------------------------------

Reference: Common Formulas + Patterns
http://office.microsoft.com/en-us/excel-help/examples-of-commonly-used-formulas-HP005200127.aspx






-------------------------------
Nuisances
-------------------------------

// 

To Make

vi .mmm

#!/bin/bash
while [true]
do
say -v "Fred" "mmm"
sleep 1
done

source .mmm

//

To Kill:

ps aux | grep bash                  // returns list of all bash processes
                                    // look at the times ; the process that started when the "mmm" started is your culprit

kill -9 1234                        // whatever the process id is of your bash process




-------------------------------
nuisance: setting up amp stack on mac
-------------------------------


Uncomment these lines:

LoadModule rewrite_module libexec/apache2/mod_rewrite.so        // useful for wordpress
LoadModule php5_module libexec/apache2/libphp5.so               // need it for php




-------------------------------
nuisance: wordpress
-------------------------------

// to install plugins locally without FTP bullshit
// in wp-config.php

define('FS_METHOD' , 'direct');

// execute shortcode from within PHP
<?php echo do_shortcode('[catlist id=1 numberposts=5)]'); ?>


-------------------------------
Bypasses / Hacks
-------------------------------

K7 Voicemail                        // fake phone inbox to accept phone verification (Google, Facebook)


YouTube : Get around signing in to verify age

    Remove "watch?" and "=", add a "/".
    Take for example this red band trailer for nightcrawler.
    From:
    http://www.youtube.com/watch?v=GRdHmB-EH9o
    to:
    http://www.youtube.com/v/GRdHmB-EH9o


-------------------------------
Equivalents
-------------------------------

Python Dictionary = map || key-value array || associative array

Go Struct = data structure ; 
  a custom variable type with multiple variable types inside it ; 
  tries to represent a real-world entity with all its properties




-------------------------------
mac local dev environment
-------------------------------

// add a new site
vi /etc/hosts

// set up servers 
vi /usr/local/etc/nginx/nginx.conf

// restart nginx 
sudo nginx -s reload



