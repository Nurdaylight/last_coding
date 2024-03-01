#LO 2 
#lets say we have some list:
list= [8,6,5,1,2,3,5,9,5,6,7,8,9,0,1,2,3,4,5,6,7]
#imagine we want to print out all the odd values in the list
for i in list:
  # Check if the value is odd
  if i % 2 != 0:
      print(i)


# LO3 declaring new empty list
new_list = []

# dooing the same logic fo loop as above but trying to store all odd values into new list
for i in list:
  # Checking if the value is odd
    if i % 2 != 0:
        # adding the odd value to the new list
        new_list.append(i)

# printing out new list
print("List of odd values:", new_list)

