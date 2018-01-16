//
//  ZCBLVideoModel.h
//  ZCBLSDK
//
//  Created by Cheer_Harry on 2018/1/12.
//  Copyright © 2018年 Cheer_Harry. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZCBLVideoModel : NSObject

/**
 * 视频查勘所需数据模型
 * 其中 siSurveyNo,phoneNum,longitude,latitude,caseAddress 为必传参数
 * siSurveyNo 查勘号
 * phoneNum 用户登录手机号
 * longitude 经度
 * latitude 纬度
 * caseAddress 事故地点
 * isDebug 环境配置:Debug-> YES, Release->NO, Default NO
 */
@property (nonatomic, copy) NSString *siSurveyNo;
@property (nonatomic, copy) NSString *phoneNum;
@property (nonatomic, copy) NSString *longitude;
@property (nonatomic, copy) NSString *latitude;
@property (nonatomic, copy) NSString *caseAddress;
@property (nonatomic, assign) BOOL isDebug;

@end
