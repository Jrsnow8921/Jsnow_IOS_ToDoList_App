//
//  XYZToDoItem.m
//  ToDoList
//
//  Created by Justin Snow on 02/07/15.
//  Copyright (c) 2015 Justin Snow. All rights reserved.
//

#import "XYZToDoItem.h"

@implementation XYZToDoItem
- (id)init
{
    self = [super init];
    if (self) {
        _completed = NO;
        _creationDate = [NSDate date];
    }
    
    return self;
}

- (id)initWithCoder:(NSCoder *)coder
{
    self = [super init];
    if (self) {
        _itemName = [coder decodeObjectForKey:@"itemName"];
        _completed = [coder decodeBoolForKey:@"completed"];
        _creationDate = [coder decodeObjectForKey:@"creationDate"];
        _reminderDate = [coder decodeObjectForKey:@"reminderDate"];
        _itemQty = [coder decodeObjectForKey:@"itemQty"];
    }
    
    return self;
}

- (void)encodeWithCoder:(NSCoder *)coder
{
    [coder encodeObject:self.itemName forKey:@"itemName"];
    [coder encodeBool:self.completed forKey:@"completed"];
    [coder encodeObject:self.creationDate forKey:@"creationDate"];
    [coder encodeObject:self.reminderDate forKey:@"reminderDate"];
    [coder encodeObject:self.itemQty forKey:@"itemQty"];

}


@end
