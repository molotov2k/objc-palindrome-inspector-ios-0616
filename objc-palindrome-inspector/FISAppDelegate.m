//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (NSString *) stringByReversingString:(NSString *)string {
    
    NSString *result = @"";
    
    for (NSUInteger i = [string length]; i > 0; i--) {
        NSUInteger index = i - 1;
        unichar c = [string characterAtIndex:index];
        result = [result stringByAppendingFormat:@"%c", c];
    }
    
    return result;
}

- (BOOL) stringIsPalindrome:(NSString *)string {
    
    string = [string lowercaseString];
    
    NSArray *punctuations = @[@" ", @".", @",", @"!", @"?", @":", @";", @"-"];
    for (NSUInteger i = 0; i < [punctuations count]; i++) {
        NSString *punctuation = punctuations[i];
        string = [string stringByReplacingOccurrencesOfString:punctuation withString:@""];
    }
    
    NSString *reverse = [self stringByReversingString:string];
    
    return [string isEqualToString:reverse];
}

@end
