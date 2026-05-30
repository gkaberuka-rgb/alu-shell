mkdir -p loops_conditions_and_parsing && echo "# Loops, Conditions and Parsing" > loops_conditions_and_parsing/README.md

cat > 1-for_best_school << 'EOF'
#!/usr/bin/env bash
# This script is displaying "Best School" 10 times
for _ in {1..10}; do
echo "Best School"
done
EOF

cat > 2-while_best_school << 'EOF'
#!/usr/bin/env bash
# This script is displaying "Best School" 10 times using while loop
i=1
while [ "$i" -le 10 ]; do
echo "Best School"
((i++))
done
EOF

cat > 3-until_best_school << 'EOF'
#!/usr/bin/env bash
# This script is displaying "Best School" 10 times using until loop
i=1
until [ "$i" -gt 10 ]; do
echo "Best School"
((i++))
done
EOF

cat > 4-if_9_say_hi << 'EOF'
#!/usr/bin/env bash
# This script displays Best School 10 times and Hi after the 9th iteration
i=1
while [ "$i" -le 10 ]; do
echo "Best School"
if [ "$i" -eq 9 ]; then
echo "Hi"
fi
((i++))
done
EOF

cat > 5-4_bad_luck_8_is_your_chance << 'EOF'
#!/usr/bin/env bash
# This script loops 1-10 displaying bad luck on 4 and good luck on 8
i=1
while [ "$i" -le 10 ]; do
if [ "$i" -eq 4 ]; then
echo "bad luck"
elif [ "$i" -eq 8 ]; then
echo "good luck"
else
echo "Best School"
fi
((i++))
done
EOF

cat > 6-superstitious_numbers << 'EOF'
#!/usr/bin/env bash
# This script displays numbers 1-20 with superstitious messages
i=1
while [ "$i" -le 20 ]; do
echo "$i"
case "$i" in
4) echo "bad luck from China" ;;
9) echo "bad luck from Japan" ;;
17) echo "bad luck from Italy" ;;
esac
((i++))
done
EOF

cat > 7-clock << 'EOF'
#!/usr/bin/env bash
# This script displays the time for 12 hours and 59 minutes
h=0
while [ "$h" -le 12 ]; do
echo "Hour: $h"
m=1
while [ "$m" -le 59 ]; do
echo "$m"
((m++))
done
((h++))
done
EOF

cat > 8-for_ls << 'EOF'
#!/usr/bin/env bash
# This script displays the content of the current directory in list format
for file in *; do
echo "${file#*-}"
done
EOF

cat > 9-to_file_or_not_to_file << 'EOF'
#!/usr/bin/env bash
# This script gives information about the school file
if [ -e school ]; then
echo "school file exists"
if [ -s school ]; then
echo "school file is not empty"
else
echo "school file is empty"
fi
if [ -f school ]; then
echo "school is a regular file"
fi
else
echo "school file does not exist"
fi
EOF

cat > 10-fizzbuzz << 'EOF'
#!/usr/bin/env bash
# This script displays FizzBuzz from 1 to 100
i=1
while [ "$i" -le 100 ]; do
if [ $((i % 3)) -eq 0 ] && [ $((i % 5)) -eq 0 ]; then
echo "FizzBuzz"
elif [ $((i % 3)) -eq 0 ]; then
echo "Fizz"
elif [ $((i % 5)) -eq 0 ]; then
echo "Buzz"
else
echo "$i"
fi
((i++))
done
EOF

cat > 11-read_and_cut << 'EOF'
#!/usr/bin/env bash
# This script displays username, user id, and home directory from /etc/passwd
while IFS=: read -r username _ uid _ _ home _; do
echo "$username:$uid:$home"
done < /etc/passwd
EOF

cat > 12-tell_the_story_of_passwd << 'EOF'
#!/usr/bin/env bash
# This script tells the story of each user in /etc/passwd
while IFS=: read -r username password uid gid info home shell; do
echo "The user $username is part of the $gid gang, lives in $home and rides $shell. $uid's place is protected by the passcode $password, more info about the user here: $info"
done < /etc/passwd
EOF

cat > 13-lets_parse_apache_logs << 'EOF'
#!/usr/bin/env bash
# This script displays visitor IP and HTTP status code from Apache log
awk '{print $1, $9}' apache-access.log
EOF

cat > 14-dig_the-data << 'EOF'
#!/usr/bin/env bash
# This script groups visitors by IP and HTTP status code sorted by occurrences
awk '{print $1, $9}' apache-access.log | sort | uniq -c | sort -rn
EOF

chmod +x 1-for_best_school \
2-while_best_school \
3-until_best_school \
4-if_9_say_hi \
5-4_bad_luck_8_is_your_chance \
6-superstitious_numbers \
7-clock \
8-for_ls \
9-to_file_or_not_to_file \
10-fizzbuzz \
11-read_and_cut \
12-tell_the_story_of_passwd \
13-lets_parse_apache_logs \
14-dig_the-data && \
wget -q -O apache-access.log https://raw.githubusercontent.com/alx-tools/0x04.archived/master/apache-access.log && \
git add . && \
git commit -m "Feature: Shell, loops, conditions and parsing" && \
git push
