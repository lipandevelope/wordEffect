//
//  main.m
//  LHL Jan11 Assignment WordEffect
//
//  Created by Li Pan on 2016-01-11.
//  Copyright © 2016 Li Pan. All rights reserved.
//

#import <Foundation/Foundation.h>


int main(int argc, const char * argv[]) {

    char inputChar[255];
    
    
    printf("Your Sentence\n>");
    //sscanf("%s\n", inputChar);
    fgets(inputChar, 225, stdin);
    
    int selection;
    
    while (selection <7) {
    //printf("%s", inputChar);
    printf("1.Make it Louder\n2.Lower Case\n3.Numberize\n4.Canadianize\n5.Respond\n6.De-Space-It\nHow do you want to manipulate this string?\n>");
    
    scanf("%d", &selection);
        
    NSString *inputString = [NSString stringWithUTF8String:inputChar];
    NSLog(@"%@", inputString);

    
        if (selection == 1) {
            inputString = [inputString uppercaseString];
            NSLog(@"%@", inputString);
        
        }
        else if (selection == 2) {
            inputString = [inputString lowercaseString];
            NSLog(@"%@", inputString);
        }
        else if (selection == 3) {
            int value = [inputString intValue];
            NSLog(@"%d", value);
        }
        else if (selection == 4) {
            inputString = [inputString stringByAppendingString:@", eh?"];
            NSLog(@"%@", inputString);
        }
        else if (selection == 5) {
            if ([inputString containsString:@"?"]) {
                NSLog(@"I don't know.");
            }
            else if ([inputString containsString:@"!"])
                NSLog(@"Whoa, calm down!");
        }
        else if (selection == 6) {
            NSString *newString = [inputString stringByReplacingOccurrencesOfString:@" " withString:@"-"];
            NSLog(@"%@", newString);
        }
    }
    return 0;
}
