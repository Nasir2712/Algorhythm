//
//  ViewController.m
//  Algorhythm
//
//  Created by nasir on 1/4/16.
//  Copyright © 2016 nasir. All rights reserved.
//

#import "PlaylistMasterViewController.h"
#import "PlaylistDetailViewController.h"
#import "Playlist.h"

@interface PlaylistMasterViewController ()



@end

@implementation PlaylistMasterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    for (NSUInteger index = 0; index < _playlistImageViews.count ; index++) {
        
        Playlist *playlist = [[Playlist alloc] initWithIndex:index];
        
        UIImageView *playlistImageView = _playlistImageViews[index];
        
        playlistImageView.image = playlist.playlistIcon;
        
        playlistImageView.backgroundColor = playlistImageView.backgroundColor;
    }
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqual:@"showPlaylistDetail"]) {
        
        UIImageView *playlistImageView = (UIImageView *) [sender view];
        
        if ([self.playlistImageViews containsObject:playlistImageView] ) {
            NSUInteger index = [self.playlistImageViews indexOfObject:playlistImageView];
            
            PlaylistDetailViewController *playlistDetailViewController = (PlaylistDetailViewController *) segue.destinationViewController;
            
            playlistDetailViewController.playlist = [[Playlist alloc] initWithIndex:index];
            
        }

    }
}



- (IBAction)showPlaylistDetail:(id)sender {
    
    [self performSegueWithIdentifier:@"showPlaylistDetail" sender:sender];
}




@end
