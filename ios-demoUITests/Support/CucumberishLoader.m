//
//  CucumberishLoader.m
//  ios-demoUITests
//
//  Created by Nabil Shaikh on 13/01/21.
//

#import <Foundation/Foundation.h>
#import "ios-demoUITests-Swift.h"

void CucumberishInit(void);

__attribute__((constructor))
void CucumberishInit() {
    
    [CucumberishInitializer setupCucumberish];
    
}

