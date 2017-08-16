//
//  ViewController.m
//  ZZChainDemo
//
//  Created by cooper Cher on 2017/8/15.
//  Copyright © 2017年 Celnet Technology Co.,Ltd. All rights reserved.
//

#import "ViewController.h"

#import "CHChainHeader.h"



@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   
    UIView.zzNew().zzOrigin(20,100).zzSize(100,100).zzBgColor(UIColor.red()).zzInToView(self.view);
    
    UILabel.zzNew().zzText(@"hello").zzTextColor(ZZHexC(@"082323")).zzFontNum(18).zzFrame(10,20,100,20).zzInToView(self.view);
    
    UIImageView.zzNew().zzImageName(@"ts.png").zzFrame(100,200,100,100).zzInToView(self.view).zzBgColor(UIColor.black());
    
    UITextField.zzNew().zzFontNum(15).zzTextColor(ZZComRgbC(51)).zzReturnKeyType(UIReturnKeyDone).zzDelegate(self).zzClearButtonMode(UITextFieldViewModeAlways).zzBorderStyle(UITextBorderStyleNone).w(100).h(44).zzInToView(self.view).zzCenter(self.view.center).zzUITextField().zzPlaceholder(@"请输入内容");
    
    UIButton.zzNew(UIButtonTypeRoundedRect).zzFontNum(18).zzBgColor(UIColor.blue()).zzFrame(100,400,100,44).zzCornerRadius(5).zzUIButton().zzTitleState(@"commmit",UIControlStateNormal).zzTitleColorNormal(ZZHexC(@"082323")).zzInToView(self.view);
    
    UITextView.zzNew().zzTextColor(ZZHexC(@"eed092")).zzFontNum(20).zzText(@"yqdjskdjsjskinksk").x(220).y(60).w(100).h(80).zzBgColor(ZZComRgbC(239)).zzInToView(self.view);
    
#warning 提示:当参数出现中文的时候会出现链式语法失效  解决方案 出现中文的参数单独设置
    //eg
    UIButton *sender = UIButton.zzNew(UIButtonTypeRoundedRect).zzTitleColorNormal(ZZHexC(@"082323")).zzTitleColorSelected(ZZHexC(@"082323")).zzFontNum(18).zzBgColor(UIColor.blue()).zzFrame(220,400,100,44).zzCornerRadius(5).zzInToView(self.view).zzUIButton();
    sender.zzTitleNormal(@"提交".zzAdd(@"😆🙄"));
    sender.zzTitleHighlighted(@"高亮👌");
    sender.zzTitleSelected(@"选择了");

    
    [sender addTarget:self action:@selector(tap:) forControlEvents:UIControlEventTouchUpInside];
}


- (void)tap:(UIButton *)sender{
    sender.selected = !sender.selected;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
