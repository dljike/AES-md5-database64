//
//  ViewController.h
//  AESEncryption
//
//  Created by changxin on 14-11-27.
//  Copyright (c) 2014年 changxin. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *encryField;
@property (strong, nonatomic) IBOutlet UITextView *decryTextView;
- (IBAction)encryBtnClicked:(id)sender;
- (IBAction)decryBtnClicked:(id)sender;

@end
