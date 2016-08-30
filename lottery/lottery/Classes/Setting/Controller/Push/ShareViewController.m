//
//  ShareViewController.m
//  lottery
//
//  Created by cain on 16/8/29.
//  Copyright © 2016年 cain. All rights reserved.
//

#import "ShareViewController.h"

#import "SettingItem.h"

#import "SettingGroup.h"

#import "SettingCell.h"

#import "SettingArrawItem.h"
#import "SettingSwithItem.h"

#import <MessageUI/MessageUI.h>

@interface ShareViewController ()<MFMessageComposeViewControllerDelegate,MFMailComposeViewControllerDelegate>

@property (nonatomic, assign) int age;

@end

@implementation ShareViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self group0];
}

-(void)group0{
    SettingArrawItem *si1 = [SettingArrawItem itemWithIcon:@"WeiboSina" title:@"新浪分享"];
    SettingItem *si2 = [SettingArrawItem itemWithIcon:@"SmsShare" title:@"短信分享"];
    __weak ShareViewController *share = self;
    si2.option = ^{
        MFMessageComposeViewController *vc = [[MFMessageComposeViewController alloc] init];
        // 设置短信内容
        vc.body = @"吃饭了没？";
        // 设置收件人列表
        vc.recipients = @[@"10010", @"02010010"];
        // 设置代理
        vc.messageComposeDelegate = share;
        
        share.age;
        // 显示控制器
        [share presentViewController:vc animated:YES completion:nil];
    };

    SettingItem *s3 = [SettingArrawItem itemWithIcon:@"MailShare" title:@"邮件分享"];
    
    s3.option = ^{
        // 不能发邮件
        if (![MFMailComposeViewController canSendMail]) return;
        
        MFMailComposeViewController *vc = [[MFMailComposeViewController alloc] init];
        
        // 设置邮件主题
        [vc setSubject:@"会议"];
        // 设置邮件内容
        [vc setMessageBody:@"今天下午开会吧" isHTML:NO];
        // 设置收件人列表
        [vc setToRecipients:@[@"643055866@qq.com"]];
        // 设置抄送人列表
        [vc setCcRecipients:@[@"1234@qq.com"]];
        // 设置密送人列表
        [vc setBccRecipients:@[@"56789@qq.com"]];
        
        
        // 添加附件（一张图片）
        UIImage *image = [UIImage imageNamed:@"阿狸头像"];
        NSData *data = UIImagePNGRepresentation(image);
        [vc addAttachmentData:data mimeType:@"image/png" fileName:@"阿狸头像.png"];
        // 设置代理
        //        vc.mailComposeDelegate = self;
        //        // 显示控制器
        //        [self presentViewController:vc animated:YES completion:nil];
    };
    
    SettingGroup *group0 = [[SettingGroup alloc]init];
    group0.items = @[si1,si2,s3];
    
    [self.dataList addObject:group0];
    
}

-(void)messageComposeViewController:(MFMessageComposeViewController *)controller didFinishWithResult:(MessageComposeResult)result{
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)mailComposeController:(MFMailComposeViewController *)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError *)error{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
