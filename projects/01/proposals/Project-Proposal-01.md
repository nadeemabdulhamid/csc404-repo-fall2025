# Extension Project 1 

## Motivation and Rationale
After re-reading the chapter about Lox Language and doing a bit of research, 
what I think would make Lox more useful for real programming is having data structures like HashMaps/Dictionaries 
built into the language like other Object Oriented Programming Languages (such as Python and Java) do. 
I believe this would make Lox more 'real' since these data structures are used for more real life scenarios such as 
storing contact information for employees at a company, inventory values for a store, etc.  

## Syntax, Semantics, and Example 

You could implement a HashMap or Dictionary into Lox using Java's built-in **java.util.Map** or **java.util.HashMap** 
interface which will make implementing this in lox somewhat easier since you will already have all of the methods to be able 
to implement a hashmap available to you once you have this class in your file. This, I believe, would be considered more preferable 
compared to having to make the individual classes or methods completely from scratch before you could even start filling in your HashMap 
and testing that it is outputting correctly, which can be incredibly time-consuming. 

For example, in Java, if we wanted to have a HashMap to keep track of our keys and values, 
say they are two string where the key is the name of the item in a grocery store and the value 
is the type of that object or what department/section it is in.

We could implement it like this: 


import java.util.HashMap;

class Example {

    public static void main(String args[])
    {
        
        HashMap<String, String> hashmap1 = new HashMap<>();

      
        hashmap1.put("Apple", "Fruit");
        hashmap1.put("Motor City Pizza - Cheese", "Frozen Food");
        hashmap1.put("Cucumber", "Vegetable");

              
        System.out.println("HashMap1: "
                           + hashmap1);

    
    }
}



And the output would be this: 


HashMap1: {Apple=Fruit, Motor City Pizza - Cheese=Frozen Food, Cucumber=Vegetable}











