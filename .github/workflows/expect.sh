#!/usr/bin/expect -f

spawn ssh ec -l $USER
expect "*password: "
send "$HID\r"
expect "*: " {send "\r"}
expect "*$ " {send "touch blabla3\r"}
expect "*$ " {send "exit\r"}