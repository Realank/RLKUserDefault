//
//  ViewController.m
//  CustomUserDefault
//
//  Created by Realank on 16/8/31.
//  Copyright © 2016年 Realank. All rights reserved.
//

#import "ViewController.h"
#import "RLKUserDefault.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        [[RLKUserDefault standardUserDefault] setObject:@[@1,@2,@3] forKey:@"number"];
        [[RLKUserDefault standardUserDefault] setObject:@[@1,@2,@3] forKey:@"number1"];
        [[RLKUserDefault standardUserDefault] setObject:@[@1,@2,@3] forKey:@"number2"];
    });
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^{
        [[RLKUserDefault standardUserDefault] setObject:@[@1,@2,@3] forKey:@"number7"];
        [[RLKUserDefault standardUserDefault] setObject:@[@1,@2,@3] forKey:@"number6"];
        [[RLKUserDefault standardUserDefault] setObject:@[@1,@2,@3] forKey:@"number8"];
    });
    
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_HIGH, 0), ^{
        [[RLKUserDefault standardUserDefault] setObject:@[@1,@2,@3] forKey:@"number9"];
        [[RLKUserDefault standardUserDefault] setObject:@[@1,@2,@3] forKey:@"number10"];
        [[RLKUserDefault standardUserDefault] setObject:@[@1,@2,@3] forKey:@"number11"];
    });
    
    [[RLKUserDefault standardUserDefault] setObject:@[@2,@2,@4] forKey:@"number5"];
    [[RLKUserDefault standardUserDefault] setObject:@[@1,@2,@3] forKey:@"number3"];
    [[RLKUserDefault standardUserDefault] setObject:@[@1,@2,@3] forKey:@"number4"];
    
    [[RLKUserDefault standardUserDefault] synchronize];
    
//    [[RLKUserDefault standardUserDefault] setObject:@[@1,@5,@3] forKey:@"number"];
//    
////    NSLog(@"%d", result);
////    NSArray *array = [[RLKUserDefault standardUserDefault] objectForKey:@"number"];
////    NSLog(@"%@",array);
//    [[RLKUserDefault standardUserDefault] removeAllCache];
//    [[RLKUserDefault standardUserDefault] setObject:@[@1,@5,@3] forKey:@"number"];
//    [[RLKUserDefault standardUserDefault] setObject:@[@1,@2,@3] forKey:@"number4"];
//    [[RLKUserDefault standardUserDefault] setObject:@[@2,@2,@4] forKey:@"number"];
//    [[RLKUserDefault standardUserDefault] setObject:@123 forKey:@"number"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
