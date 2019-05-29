#!/usr/bin/env bash

echo Hello

Variable="Some string"

# -------------Variables--------------
echo ${Variable}

echo ${Variable/Some/A}

Length=7
echo ${Variable:0:Length}
echo ${#Variable}

echo ${Foo:-"Default Value"}
Foo="Not Default"
echo ${Foo:-"Default Value"}

# ------------Arrays--------------------
array=(one two three four five six)
echo ${array}
echo ${array[@]}

# ------------Loops---------------------
for i in "${array[@]}"; do
    echo "$i"
done

# ---------Append to list-----------
newArray=()
for i in {1..10}; do
    newArray+=($i)
done

echo "New Array: ${newArray[@]}"

# ---------Generate arbitrary strings
echo {1..10}
echo {a..z}

# ---------Built-in Variables----------
echo "Last program's retun value: $?"
echo "Script's PID: $$"
echo "Number of arguments passed to script: $#"
echo "All arguments passed to script: $@"
echo "Script's arguments separated into different variables: $1 $2 ...."

# ---------Commands-------------
echo "I'm in $(pwd)"
echo "I'm in $PWD"

clear

# --------Input---------
echo "What's your name?"
read Name
echo "Hello, $Name"


# --------Conditionals------
if [[ "$Name" != $USER ]]; then
    echo "Your name isn't your username"
else
    echo "Your name is your username"
fi

echo "Always executed" || echo "Only executed if first command fails"
echo "Always executed" && echo "Only executed if first command does NOT fail"

# ----Using && and ||-------
if [[ "$Name" == "Steve" ]] && [[ "$Age" -eq 15 ]]; then
    echo "This will run if $Name is steve AND $Age is 15."
fi

if [[ "$Name" == "ayo" ]] || [[ "$Name" == "ife" ]]; then
    echo "This will run if $Name is ayo or ife"
fi

Email=ayo@gmail.com
if [[ "$Email" =~ [a-z]+@[a-z]{2,}\.(com|net|org) ]]; then
    echo "Valid email"
fi

# ---Redefine commands as alias
#alias ping="ping -c 5"
#\ping 192.168.1.38
#alias -p

echo $(( 10 + 5 ))

# ------Shell commands
ls
ls -l
ls -t
ls -R

ls -l | grep "\.txt"

cat file.txt

# -----Read the file---------
Contents=$(cat file.txt)
echo "Start of file\n$Contents\nEnd of file"

cp srcFile.txt clone.txt
cp -r srcDircectory/ dst/

mv sOurc3.txt dst.txt

cd ~
cd
cd ..

(echo "First, I'm here: $PWD") && (cd someDir; echo "Then, I'm here: $PWD")

mkdir newDir

# You can redirect command input and output
#cat > hello.py << EOF
##!/usr/bin/env python
#from __future__ import print_function
#import sys
#print("#stdout", file=sys.stdout)
#print("#stderr", file=sys.stderr)
#for line in sys.stdin:
#    print(line, file=sys.stdout)
#EOF

python hello.py > /dev/null 2>&1

#---------case statement---------
case "$Variable" in
    0) echo "There is a zero.";;
    1) echo "There is a one.";;
    *) echo "It is not null.";;
esac

for Variable in {1..3}
do
    echo "$Variable"
done


# ---functions----
function foo() {
    echo "Arguments work just like script arguments: $@"
    echo "And: $1 $2.."
    echo "This is a function"
    return 0
}

foo arg1 arg2

bar (){
    echo "Another wat to write a afunction"
    return 0
}

# ---------Print last 10 lines----------
tail -n 10 file.txt

# ---------Print first 10 lines --------
head -n 10 file.txt

sort file.txt

uniq -d file.txt