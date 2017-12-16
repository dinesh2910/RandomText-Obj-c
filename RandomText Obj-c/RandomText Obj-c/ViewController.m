//
//  ViewController.m
//  RandomText Obj-c
//
//  Created by dinesh danda on 7/5/16.
//  Copyright © 2016 dinesh danda. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
- (IBAction)RandomText:(UIButton *)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)RandomText:(UIButton *)sender {
    int randomNumber;
    NSString *textString;
    NSArray *textArray;
    textArray = [NSArray arrayWithObjects:@"one",@"two",@"three",@"four",@"Five",@"dinesh",@"danda",@"rajesh", nil];
    randomNumber = arc4random()%[textArray count];
    textString = [textArray objectAtIndex:randomNumber];
    _label.text = textString;
}
@end
