//
//  ViewController.m
//  KVODemo
//
//  Created by leon on 2018/4/24.
//  Copyright © 2018年 com.suning.com. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (nonatomic,copy) NSString *kovNoti;

@end

@implementation ViewController

//@synthesize kovNoti;

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    NSString *key = @"kovNoti";
    
//    [self addObserver:self forKeyPath:key options:NSKeyValueObservingOptionNew context:nil];
    
    [self addObserver:self forKeyPath:@"_kovNoti" options:NSKeyValueObservingOptionNew context:nil];

//    [self willChangeValueForKey:@"_kovNoti"];
//    [self didChangeValueForKey:@"_kovNoti"];
    
    [self setValue:@"33" forKey:@"_kovNoti"];
    
}


-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
    
    if ([keyPath isEqualToString:@"_kovNoti"]) {
        NSLog(@"_kovNoti");
    }
    if ([keyPath isEqualToString:@"kovNoti"]) {
        NSLog(@"kovNoti");
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
