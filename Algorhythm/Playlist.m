//
//  Playlist.m
//  Algorhythm
//
//  Created by nasir on 1/4/16.
//  Copyright © 2016 nasir. All rights reserved.
//

#import "Playlist.h"
#import "MusicLibrary.h"

@implementation Playlist


- (instancetype)initWithIndex:(NSUInteger)index
{
    self = [super init];
    if (self) {
        MusicLibrary *musicLibrary = [[MusicLibrary alloc] init];
        
        NSArray *library = musicLibrary.musicLibrary;
        NSDictionary *playlistDictionary = library[index];
        _playlistTitle = [playlistDictionary objectForKey: kTitle];
        _playlistDescription = [playlistDictionary objectForKey:kDescription];
        _playlistArtists = [NSArray arrayWithArray:[playlistDictionary objectForKey:kArtists]];
        NSString *iconName = [playlistDictionary objectForKey:kIcon];
        _playlistIcon = [UIImage imageNamed:iconName];
        NSString *largeIconName = [playlistDictionary objectForKey:kLargeIcon];
        _playlistLargeIcon = [UIImage imageNamed:largeIconName];
        
        NSDictionary *colorDictionary = [playlistDictionary objectForKey:kBackgroundColor];
        _backgroundColor = [self rgbBackgroundColor:colorDictionary];
        
    }
    return self;
}

-(UIColor *)rgbBackgroundColor: (NSDictionary *) colorDictionary {
    CGFloat red = [[colorDictionary objectForKey:@"red"] doubleValue];
    CGFloat green = [[colorDictionary objectForKey:@"green"] doubleValue];
    CGFloat blue = [[colorDictionary objectForKey:@"blue"] doubleValue];
    CGFloat alpha = [[colorDictionary objectForKey:@"alpha"] doubleValue];
    
    return [UIColor colorWithRed:red/255.0 green:green/255.0 blue:blue/255.0 alpha:alpha];
}

@end
