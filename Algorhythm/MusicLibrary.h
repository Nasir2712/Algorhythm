//
//  MusicLibrary.h
//  Algorhythm
//
//  Created by nasir on 1/4/16.
//  Copyright © 2016 nasir. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MusicLibrary : NSObject


extern NSString *const kTitle;
extern NSString *const kDescription;
extern NSString *const kIcon;
extern NSString *const kLargeIcon;
extern NSString *const kBackgroundColor;
extern NSString *const kArtists;

@property(strong, nonatomic) NSArray *musicLibrary;


@end
