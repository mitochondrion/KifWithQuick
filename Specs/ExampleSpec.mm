#import <XCTest/XCTest.h>
#import <Cedar-iOS/Cedar-iOS.h>
#import "ViewController.h"
      

using namespace Cedar::Matchers;
using namespace Cedar::Doubles;

SPEC_BEGIN(ExampleSpec)

/* This is not an exhaustive list of usages.
   For more information, please visit https://github.com/pivotal/cedar */

describe(@"Example specs on NSString", ^{
    __block ViewController *subject;
    
    beforeEach(^{
        subject = [[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateInitialViewController];
        [[UIApplication sharedApplication] keyWindow].rootViewController = subject;
        [[NSRunLoop mainRunLoop] runUntilDate:[NSDate date]];
    });
    
    it(@"have the correct label", ^{
        subject.mySpecialLabel.text should equal(@"OMGWTFBBQ");
    });
});

SPEC_END
