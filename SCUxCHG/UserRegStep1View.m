//
//  UserRegStep1View.m
//  SCUxCHG
//
//  Created by 杨京蕾 on 6/1/16.
//  Copyright © 2016 yang. All rights reserved.
//

#import "UserRegStep1View.h"

@interface UserRegStep1View (){
    //phone number grid
    UIImageView *_vPhoneIcon;
    UITextField *_vPhoneText;
    UILabel *_vPhoneGridUnderline;
    
    //password grid
    UIImageView *_vPwdIcon;
    UITextField *_vPwdText;
    UILabel *_vPwdGridUnderline;
    
    //button grid
    UIButton *_vRegisterBtn;
}

@end
@implementation UserRegStep1View

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (!self) {
        return nil;
    }
    
    self.backgroundColor = kColorWhite;
    
    UIView* _vPhoneGrid = [[UIView alloc] init];
    UIView* _vPwdGrid = [[UIView alloc] init];
    UIView* _vButtonGrid = [[UIView alloc] init];
    
    [self addSubview:_vPhoneGrid];
    [self addSubview:_vPwdGrid];
    [self addSubview:_vButtonGrid];
    
    [_vPhoneGrid mas_makeConstraints:^(MASConstraintMaker* make){
        make.left.equalTo(self).with.offset(8);
        make.right.equalTo(self).with.offset(-8);
        make.top.equalTo(self).with.offset(8);
        make.height.mas_equalTo(45);
    }];
    
    [_vPwdGrid mas_makeConstraints:^(MASConstraintMaker* make){
        make.left.equalTo(_vPhoneGrid);
        make.right.equalTo(_vPhoneGrid);
        make.top.equalTo(_vPhoneGrid.mas_bottom);
        make.height.equalTo(_vPhoneGrid.mas_height);
    }];
    
    [_vButtonGrid mas_makeConstraints:^(MASConstraintMaker* make){
        make.left.equalTo(_vPhoneGrid);
        make.right.equalTo(_vPhoneGrid);
        make.top.equalTo(_vPwdGrid.mas_bottom);
        make.height.mas_equalTo(300);   //height 300
    }];
    
    _vPhoneIcon = [[UIImageView alloc] init];
    _vPhoneIcon.image = [UIImage imageNamed:@"icon_account"];
    [_vPhoneGrid addSubview:_vPhoneIcon];
    [_vPhoneIcon mas_makeConstraints:^(MASConstraintMaker* make){
        make.left.equalTo(_vPhoneGrid);
        make.centerY.equalTo(_vPhoneGrid);
        make.width.mas_equalTo(20);
        make.height.mas_equalTo(20);
    }];
    
    _vPhoneText = [[UITextField alloc] init];
    _vPhoneText.placeholder = @"手机号";
    _vPhoneText.keyboardType = UIKeyboardTypePhonePad;
    [_vPhoneGrid addSubview:_vPhoneText];
    [_vPhoneText mas_makeConstraints:^(MASConstraintMaker* make){
        make.left.equalTo(_vPhoneIcon.mas_right).with.offset(10);
        make.centerY.equalTo(_vPhoneGrid);
        make.right.equalTo(_vPhoneGrid);
    }];
    
    _vPhoneGridUnderline = [[UILabel alloc] init];
    _vPhoneGridUnderline.backgroundColor = kColorGray;
    [_vPhoneGrid addSubview:_vPhoneGridUnderline];
    [_vPhoneGridUnderline mas_makeConstraints:^(MASConstraintMaker* make){
        make.left.equalTo(_vPhoneGrid);
        make.right.equalTo(_vPhoneGrid);
        make.top.equalTo(_vPhoneGrid.mas_baseline);
        make.height.mas_equalTo(1);
    }];
    
    _vPwdIcon = [[UIImageView alloc] init];
    _vPwdIcon.image = [UIImage imageNamed:@"icon_lock"];
    [_vPwdGrid addSubview:_vPwdIcon];
    [_vPwdIcon mas_makeConstraints:^(MASConstraintMaker* make){
        make.left.equalTo(_vPwdGrid);
        make.centerY.equalTo(_vPwdGrid);
        make.width.mas_equalTo(20);
        make.height.mas_equalTo(20);
    }];
    
    _vPwdText = [[UITextField alloc] init];
    _vPwdText.placeholder = @"密码";
    _vPwdText.secureTextEntry = YES;
    _vPwdText.keyboardType = UIKeyboardTypeAlphabet;
    [_vPwdGrid addSubview:_vPwdText];
    [_vPwdText mas_makeConstraints:^(MASConstraintMaker* make){
        make.left.equalTo(_vPwdIcon.mas_right).with.offset(10);
        make.centerY.equalTo(_vPwdGrid);
        make.right.equalTo(_vPhoneGrid);
    }];
    
    _vPwdGridUnderline = [[UILabel alloc] init];
    _vPwdGridUnderline.backgroundColor = kColorGray;
    [_vPwdGrid addSubview:_vPwdGridUnderline];
    [_vPwdGridUnderline mas_makeConstraints:^(MASConstraintMaker* make){
        make.left.equalTo(_vPwdGrid);
        make.right.equalTo(_vPwdGrid);
        make.top.equalTo(_vPwdGrid.mas_baseline);
        make.height.mas_equalTo(1);
    }];
    
    _vRegisterBtn = [[UIButton alloc] init];
    [_vRegisterBtn setTitle:@"注册" forState:UIControlStateNormal];
    [_vRegisterBtn setTitleColor:kColorWhite forState:UIControlStateNormal];
    [_vRegisterBtn setBackgroundColor:kColorMainRed];
    [_vButtonGrid addSubview:_vRegisterBtn];
    [_vRegisterBtn mas_makeConstraints:^(MASConstraintMaker* make){
        make.left.equalTo(_vButtonGrid);
        make.right.equalTo(_vButtonGrid);
        make.top.equalTo(_vButtonGrid).with.offset(20);
    }];
    
    //  bind event to buttons
    [_vRegisterBtn addTarget:self action:@selector(clickRegBtn) forControlEvents:UIControlEventTouchUpInside];
    
    return self;
}

#pragma mark - Action

- (void)clickRegBtn{
    [self.delegate doClickRegBtnStep1WithPhone:_vPhoneText.text andPassword:_vPwdText.text];
}
@end
