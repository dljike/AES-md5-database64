//
//  ViewController.m
//  AESEncryption
//
//  Created by changxin on 14-11-27.
//  Copyright (c) 2014年 changxin. All rights reserved.
//

#import "ViewController.h"
#import "Encryption.h"
#define DecodeOrEncode_Key 	@"abc" //加密解密用的Key

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//加密
- (IBAction)encryBtnClicked:(id)sender {
    NSString *encryStr = self.encryField.text;
    NSString *decryStr = [Encryption AES128Encrypt:encryStr key:DecodeOrEncode_Key];
    NSLog(@"加密以后的数据是：%@",decryStr);
    self.decryTextView.text = decryStr;
 
}

//解密
- (IBAction)decryBtnClicked:(id)sender {
    NSString *encryStr = self.encryField.text;
   // encryStr = @"SrkqQeFZ2+YGWk5U1vOBZIXxP+wGQjfgN/Kd0ZcICdY=";
    NSLog(@"解密数据：%@",encryStr);
    NSString *decryStr = [Encryption AES128Decrypt:encryStr key:DecodeOrEncode_Key];
    self.decryTextView.text = decryStr;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}
@end
