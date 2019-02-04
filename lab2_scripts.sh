#!/bin/bash
# Authors : Joshua Hamel
# Date: 1/1/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!
echo "Enter a filename: "
read filename
echo "Enter an expression: "
read expres
grep $expres $filename
#hardconding phone number lines
echo "Number of Phone Numbers!!:"
grep -c '[0-9]\{3\}\-[0-9]\{3\}\-[0-9]\{4\}' $filename
#hardcodng emails
echo "Number of Emails!!:"
grep -c '@' $filename
echo "Number of Phone numbers with 303 area!!:"
grep -c '303\-[0-9]\{3\}\-[0-9]\{4\}$' $filename 
#sending list of 303 numbers to seperate file
grep '303\-[0-9]\{3\}\-[0-9]\{4\}$' $filename > phone_results.txt
#email with geocities sending emails to seperate file
grep '@geocities' $filename > email_results.txt
#of emails with geocities
echo "Number of emails with domain Geocities!!:"
grep -c '@geocities' $filename
#copies command expression into different file
grep $1 $2 > command_results.txt