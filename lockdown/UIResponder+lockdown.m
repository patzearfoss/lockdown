//
//  UIResponder+lockdown.m
//  lockdown
//
//  Created by Patrick Zearfoss on 5/19/13.
//  Copyright (c) 2013 pzearfoss. All rights reserved.
//

BOOL checkAction(SEL action)
{
    SEL copy = @selector(copy:);
    SEL cut = @selector(cut:);
    SEL paste = @selector(paste:);
    
    if (action == copy ||
        action == cut ||
        action == paste)
    {
        return NO;
    }
    
    return YES;

}

#import "UIResponder+lockdown.h"

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wobjc-protocol-method-implementation"

@implementation UITextField (lockdown)

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
    return checkAction(action);
}

@end

@implementation UITextView (lockdown)

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
    return checkAction(action);
}

@end

@implementation UISearchBar (lockdown)

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
    return checkAction(action);
}

@end

#pragma clang diagnostic pop
