# Open a file for writing
file = open("victory.txt","w")

# Write some data to the file
file.write("Congrats, " +"you are a winnner!\n")
file.write("Thanks for playing my game.")

# Close the file
file.close()

# Open the file for reading
file = open("C:\\Users\\calehum\\workspaces\\py-testing\\victory.txt","r")

# Read the contents of the file
file_contents = file.read()

# Close the file
file.close()

# Print the contents of the file
print(file_contents)
