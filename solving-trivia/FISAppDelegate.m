//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}
//South Dakota is the only one! 
-(NSString *)solveTrivia
{
    NSDictionary *stateAndCapital = @{
                                      
                                      @"Alabama":@"Montgomery",
                                      @"Alaska":@"Juneau",
                                      @"Arizona":@"Phoenix",
                                      @"Arkansas":@"Little Rock",
                                      @"California":@"Sacramento",
                                      @"Colorado":@"Denver",
                                      @"Connecticut":@"Hartford",
                                      @"Delaware":@"Dover",
                                      @"Florida":@"Tallahassee",
                                      @"Georgia":@"Atlanta",
                                      @"Hawaii":@"Honolulu",
                                      @"Idaho":@"Boise",
                                      @"Illinois":@"Springfield",
                                      @"Indiana":@"Indianapolis",
                                      @"Iowa":@"Des Moines",
                                      @"Kansas":@"Topeka",
                                      @"Kentucky":@"Frankfort",
                                      @"Louisiana":@"Baton Rouge",
                                      @"Maine":@"Augusta",
                                      @"Maryland":@"Annapolis",
                                      @"Massachusetts":@"Boston",
                                      @"Michigan":@"Lansing",
                                      @"Minnesota":@"St. Paul",
                                      @"Mississippi":@"Jackson",
                                      @"Missouri":@"Jefferson City",
                                      @"Montana":@"Helena",
                                      @"Nebraska":@"Lincoln",
                                      @"Nevada":@"Carson City",
                                      @"New Hampshire":@"Concord",
                                      @"New Jersey":@"Trenton",
                                      @"New Mexico":@"Santa Fe",
                                      @"New York":@"Albany",
                                      @"North Carolina":@"Raleigh",
                                      @"North Dakota":@"Bismarck",
                                      @"Ohio":@"Columbus",
                                      @"Oklahoma":@"Oklahoma City",
                                      @"Oregon":@"Salem",
                                      @"Pennsylvania":@"Harrisburg",
                                      @"Rhode Island":@"Providence",
                                      @"South Carolina":@"Columbia",
                                      @"South Dakota":@"Pierre",
                                      @"Tennessee":@"Nashville",
                                      @"Texas":@"Austin",
                                      @"Utah":@"Salt Lake City",
                                      @"Vermont":@"Montpelier",
                                      @"Virginia":@"Richmond",
                                      @"Washington":@"Olympia",
                                      @"West Virginia":@"Charleston",
                                      @"Wisconsin":@"Madison",
                                      @"Wyoming":@"Cheyenne"
                                      
                                      };


    
        //Iterate over your dictionary to separate the state from the capital and put them into other strings
    for (NSString *state in stateAndCapital)
    {
        NSString *newCapital = stateAndCapital[state];
        NSString *newState = state;
        NSUInteger counter = 0; 
        NSMutableArray *newStateArray = [[NSMutableArray alloc]init];
        NSMutableArray *newCapitalArray = [[NSMutableArray alloc]init];
    
        //Go ahead and take out all the spaces in the states and the capitals
        NSString *noSpaceCapital = [newCapital stringByReplacingOccurrencesOfString:@" " withString:@""];
        NSString *noSpaceState = [newState stringByReplacingOccurrencesOfString:@" " withString:@""];

        //Now make sure they are all lowercase
        NSString *newNoSpaceCapital = [noSpaceCapital lowercaseString];
        NSString *newNoSpaceState = [noSpaceState lowercaseString];
        
        //Now make sure that you break them into substrings, which will result in chars but you can use stringWithFormat to convert them into strings (also objects) so that you can put them into arrays
        for(NSUInteger i = 0; i < [newNoSpaceState length]; i++)
        
        {
            unichar comparisonFirst = [newNoSpaceState characterAtIndex:i];
            
            NSString *newStateString = [NSString stringWithFormat:@"%C",comparisonFirst];
            
            [newStateArray addObject:newStateString];
            
            for(NSUInteger p = 0; p < [newNoSpaceCapital length]; p++)
            
            {
                unichar comparisonSecond = [newNoSpaceCapital characterAtIndex:p];
                
                NSString *newCapitalString = [NSString stringWithFormat:@"%C",comparisonSecond];
                
                [newCapitalArray addObject:newCapitalString];
                

                for (NSUInteger m = 0; m < [newStateArray count]; m++)
                {
                    for(NSUInteger n =0; n < [newCapitalArray count]; n++)
                    {
                    
                        if ([newStateArray[m] isEqualToString:newCapitalArray[n]])
                        {
                            counter++; 
                        }
                    }
                
                }
            }
            
        }
        if(counter == 0)
        {
            return newState;
        }
    }
    return @"";
}

@end
