module AssignToGroup where

-- cycle [start..end] Generates an infinite list of elements in order start -> stop

assignToGroups n aList = zip groups aList
                         where 
                            groups = cycle [1..n]

groups =  assignToGroups 3 ["file1.txt","file2.txt","file3.txt" ,"file4.txt","file5.txt","file6.txt","file7.txt","file8.txt"]
