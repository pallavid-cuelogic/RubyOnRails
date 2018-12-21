begin  
    # -  
       rescue OneTypeOfException  
    # -  
       rescue AnotherTypeOfException  
    # -  
    else  
       # Other exceptions
       ensure
    # Always will be executed
 end


# Everything from begin to rescue is protected. If an exception occurs during the 
# execution of this block of code, control is passed to the block between rescue and end.

# For each rescue clause in the begin block, Ruby compares the raised Exception against each 
# of the parameters in turn. The match will succeed if the exception named 
# in the rescue clause is same as the type of the currently thrown exception, 
# or is a superclass of that exception.


