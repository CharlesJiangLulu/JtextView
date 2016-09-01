//
//  ViewController.m
//  JtextView
//
//  Created by quwanma_pb on 16/9/1.
//  Copyright © 2016年 quwanma. All rights reserved.
//

#import "ViewController.h"
#import "JTextView.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    JTextView *tv = [[JTextView alloc] initWithFrame:CGRectMake(0, 0, 300, 200)];
    tv.center = CGPointMake(self.view.bounds.size.width/2, self.view.bounds.size.height/3);
    tv.backgroundColor = [UIColor lightGrayColor];
    //placeholder的文字
    tv.placeholder = @"这是placeHodler";
    //placeholder的字体大小
    [tv setPlaceholderFont:[UIFont systemFontOfSize:15]];
    //textview 的字体(加粗)
    tv.font = [UIFont boldSystemFontOfSize:15];
    //placeholder的字体颜色
    [tv setPlaceholderColor:[UIColor grayColor]];
    //placeholder的字体透明度
    [tv setPlaceholderOpacity:0.8];
    [self.view addSubview:tv];

    [tv addTextViewBeginEvent:^(JTextView *text) {
        NSLog(@"开始编辑");
    }];
    [tv addTextViewEndEvent:^(JTextView *text) {
        NSLog(@"结束编辑");
    }];

}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
