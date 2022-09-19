
#!/bin/bash
#-accepts parameter SEARCH_WORD, START_DIR, OUT_FILE
if [[ $# -eq 0 ]]
then
   echo "Usage: $0 <search word> <start dir> <out file>"
   exit 1
fi
if [[ $# -gt 3 ]]
then
        echo "Two many arguments provided Usage: $0 <search word> <start dir> <out file>"
        exit 1
fi
#-greps for SEARCH_WORD in files with extension .conf recursively in START_DIR and saves result in the OUT_FILE
#-sends errors messages generated by other commands to /dev/null
grep -r --include=\*.conf $1 $2 1> $3 2>/dev/null

#-counts number of lines in the OUT_FILE and displays it
c=$(wc -l $3 2>/dev/null)
echo $c | awk '{print "found: "$1" results in "$2}' 2>/dev/null
#-sends the message including that number to Linux log file
logger $c | awk '{print "found: "$1" results in "$2}' 2>/dev/null