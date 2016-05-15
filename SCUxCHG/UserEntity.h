//
//  UserEntity.h
//  SCUxCHG
//
//  Created by 杨京蕾 on 5/13/16.
//  Copyright © 2016 yang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "BaseEntity.h"

@interface UserEntity : BaseEntity

@property (nonatomic, copy) NSString* userName; //用户名
@property (nonatomic, copy) NSString* userPwd;  //密码
@property (nonatomic, copy) NSString* userPhone; //手机号
@property (nonatomic, copy) NSString* userCampus;   //校区
@property (nonatomic, copy) NSString* userAvatar;   //头像
@property (nonatomic, copy) NSString* regDate;  //注册日期
@property (nonatomic, copy) NSNumber* userLevel;  //等级  int
@end