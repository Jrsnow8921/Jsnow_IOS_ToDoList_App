//
//  XYZToDoItem.h
//  ToDoList
//
//  Created by Justin Snow on 02/07/15.
//  Copyright (c) 2015 Justin Snow. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYZToDoItem : NSObject <NSCoding>

@property NSString *itemName;
@property BOOL completed;
@property (readonly) NSDate *creationDate;
@property NSDate *reminderDate;

@end
