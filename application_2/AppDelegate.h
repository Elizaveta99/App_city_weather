//
//  AppDelegate.h
//  application_2
//
//  Created by Lizaveta Rudzko on 2/12/1398 AP.
//  Copyright © 1398 Lizaveta Rudzko. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

