//
//  ViewController.m
//  火柴人
//
//  Created by wyx on 2019/7/25.
//  Copyright © 2019年 wyx. All rights reserved.
//

#import "ViewController.h"
#import <CoreText/CoreText.h>
#define DegreesToRadian(x) (M_PI * (x) / 180.0)
@interface ViewController()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self test];
    [self text];
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)text{
    CATextLayer *layertext = [CATextLayer layer];
    layertext.frame = CGRectMake(200, 300, 100, 30);
    layertext.backgroundColor = [UIColor redColor].CGColor;
    layertext.string =@"gggg";
    layertext.alignmentMode = kCAAlignmentCenter;
    layertext.fontSize = [UIFont systemFontOfSize:20].pointSize;
    layertext.foregroundColor = [UIColor blackColor].CGColor;
    [self.view.layer addSublayer:layertext];
    
    NSMutableAttributedString *str = [[NSMutableAttributedString alloc]initWithString:@"hello JJ"];
    NSDictionary *attr =  @{(id)kCTForegroundColorAttributeName:(id)[UIColor greenColor].CGColor};
    [str setAttributes:attr range:NSMakeRange(0, 4)];
    layertext.string = str;
    
}
- (void)test{
  
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(75, 100)];
    [path addArcWithCenter:CGPointMake(50, 100) radius:25 startAngle:0 endAngle:2 * M_PI clockwise:YES];
  
    
    [path moveToPoint:CGPointMake(50, 125)];
    
    [path addLineToPoint:CGPointMake(50, 175)];
    
    [path addLineToPoint:CGPointMake(25, 200)];
    [path moveToPoint:CGPointMake(50, 175)];
    
    [path addLineToPoint:CGPointMake(75, 200)];
    [path moveToPoint:CGPointMake(25, 150)];
    [path addLineToPoint:CGPointMake(75, 150)];
    
    
    CAShapeLayer *shaplayer = [CAShapeLayer layer];
    
     shaplayer.path = path.CGPath;
    shaplayer.strokeColor = UIColor.redColor.CGColor;
    shaplayer.lineWidth = 5;
    shaplayer.fillColor = nil;
    shaplayer.lineCap = kCALineCapRound;
    shaplayer.lineJoin = kCALineJoinRound;
    [self.view.layer addSublayer:shaplayer];
}
@end
