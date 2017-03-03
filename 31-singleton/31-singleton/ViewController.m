//
//  ViewController.m
//  31-singleton(单例模式)
//
//  Created by XSUNT45 on 16/1/12.
//  Copyright (c) 2016年 XSUNT45. All rights reserved.
//

#import "ViewController.h"
#import "WSMovieTool.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
//    WSMovieTool *movieTool1 = [[WSMovieTool alloc] init];
//    WSMovieTool *movieTool2 = [[WSMovieTool alloc] init];
//    WSMovieTool *movieTool3 = [WSMovieTool shareMovieTool];
//    WSMovieTool *movieTool4 = [movieTool3 copy];
    
    WSMovieTool *movieTool1 = [WSMovieTool shareMovieTool];
    WSMovieTool *movieTool2 = [[WSMovieTool alloc] init];
    WSMovieTool *movieTool3 = [WSMovieTool shareMovieTool];
    WSMovieTool *movieTool4 = [movieTool3 copy];
    
    
    NSLog(@"movietool1----%p",movieTool1);
    NSLog(@"movietool1----%p",movieTool2);
    NSLog(@"movietool1----%p",movieTool3);
    NSLog(@"movietool1----%p",movieTool4);
    
    
}

@end
