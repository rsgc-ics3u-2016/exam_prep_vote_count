import Foundation

/*
 
 ORGANIZING YOUR SOLUTION
 
 A good way to orgaize your code is to separate your code into the three sections - input, process, output – as much as possible.
 
 The start of a solution is implemented below. Consider all the possible inputs. Can you finish the solution?
 
 */

/*
 
 INPUT
 
 Be sure that your implementation of this section discards all the possible bad inputs the user could provide.
 
 Make use of your test plan and algorithm to ensure your code is complete.
 
 */

// Get the number of votes to expect
var votesExpected : Int = Int.min
repeat {
    
    // Show the prompt
    print("How many votes? ", terminator: "")
    
    // Get the user's input
    var input : String?
    input = readLine()
    
    // Use optional binding to see if the string can be unwrapped (to see if it is not nil)
    if let notNilInput = input {
        
        // We have some kind of string, is it an integer?
        if let integerInput = Int(notNilInput) {
            
            // Make sure the input is in the expected range
            if integerInput >= 1 && integerInput <= 15 {
                
                votesExpected = integerInput
                
            }
            
        }
        
    }
    
} while votesExpected == Int.min

// Now get the actual votes
var votes : String = ""
if let input = readLine() {
    votes = input
}


/*
 
 PROCESS
 
 Here is where you implement the logic that solves the problem at hand.
 
 Make use of your test plan and algorithm to ensure your code is complete.
 
 */

// Check that votes provided matches what was suggested by user
var invalidVotesGiven : Bool = false
var votesForA : Int = 0
var votesForB : Int = 0
if votes.characters.count == votesExpected {
    
    // Count the votes
    for vote in votes.characters {
        
        // See what type of votes this is, and track accordingly
        if vote == "A" {
            votesForA += 1
        } else if vote == "B" {
            votesForB += 1
        } else {
            invalidVotesGiven = true
            break                       // stop counting votes, bad input given
        }
        
    }
    
} else {
    
    // Problem with votes provided
    invalidVotesGiven = true
    
}

/*
 
 OUTPUT
 
 Here is where you report the results of the 'process' section above.
 
 Make use of your test plan and algorithm to ensure your code is complete.
 
 */

// Add 'output' code below... replace what is here as needed.
if invalidVotesGiven == true {
    print("Error")
} else {
    if votesForA == votesForB {
        print("Tie")
    } else if votesForA > votesForB {
        print("A")
    } else {
        print("B")
    }
}


