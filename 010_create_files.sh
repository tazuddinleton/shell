#!/bin/sh

# if [ -d ./data ]
# then
#!/bin/sh
#     for f in 1 2 3 4 5 6 7
#     do
#         echo "hello world" >> data/${f}.txt
#     done
# fi



for f in $(ls data)
do
    l=$(head -n 1 data/$f)
    echo $l
done