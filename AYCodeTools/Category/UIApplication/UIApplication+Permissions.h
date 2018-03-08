//
//  UIApplication+Permissions.h
//  AYCodeTools
//
//  Created by AYJk on 2018/3/8.
//  Copyright © 2018年 AYJk. All rights reserved.
//

#import <UIKit/UIKit.h>
@import CoreLocation;

typedef enum {
    PermissionTypeBluetoothLE,
    PermissionTypeCalendar,
    PermissionTypeContacts,
    PermissionTypeLocation,
    PermissionTypeMicrophone,
    PermissionTypeMotion,
    PermissionTypePhotos,
    PermissionTypeReminders,
} PermissionType;

typedef enum {
    PermissionAccessDenied,             // 用户拒绝权限申请
    PermissionAccessGranted,            // 用户同意权限申请
    PermissionAccessRestricted,         // 由家长控制或系统设置导致的权限申请失败
    PermissionAccessUnknown,            // 未知
    PermissionAccessUnsupported,        // 设备不支持
    PermissionAccessMissingFramework,   // 开发者未导入相关的Framework
} PermissionAccess;
@interface UIApplication (Permissions)
//Check permission of service. Cannot check microphone or motion without asking user for permission
- (PermissionAccess)hasAccessToBluetoothLE;
- (PermissionAccess)hasAccessToCalendar;
- (PermissionAccess)hasAccessToContacts;
- (PermissionAccess)hasAccessToLocation;
- (PermissionAccess)hasAccessToPhotos;
- (PermissionAccess)hasAccessToReminders;

//Request permission with callback
- (void)requestAccessToCalendarWithSuccess:(void(^)(void))accessGranted andFailure:(void(^)(void))accessDenied;
- (void)requestAccessToContactsWithSuccess:(void(^)(void))accessGranted andFailure:(void(^)(void))accessDenied;
- (void)requestAccessToMicrophoneWithSuccess:(void(^)(void))accessGranted andFailure:(void(^)(void))accessDenied;
- (void)requestAccessToPhotosWithSuccess:(void(^)(void))accessGranted andFailure:(void(^)(void))accessDenied;
- (void)requestAccessToRemindersWithSuccess:(void(^)(void))accessGranted andFailure:(void(^)(void))accessDenied;

//Instance methods
- (void)requestAccessToLocationWithSuccess:(void(^)(void))accessGranted andFailure:(void(^)(void))accessDenied;

//No failure callback available
- (void)requestAccessToMotionWithSuccess:(void(^)(void))accessGranted;

@end
