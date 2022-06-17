//
//  DetailsViewController.m
//  Flixter
//
//  Created by Farida Abdelmoneum on 6/16/22.
//

#import "DetailsViewController.h"
#import "UIImageView+AFNetworking.h"

@interface DetailsViewController ()
@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (weak, nonatomic) IBOutlet UIImageView *backDropView;
@property (weak, nonatomic) IBOutlet UIImageView *posterView;
@property (weak, nonatomic) IBOutlet UILabel *synopsis;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@end

@implementation DetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSString *title = self.movieInfo[@"title"];
    NSString *synopsis = self.movieInfo[@"overview"];
    
    self.titleLabel.text = title;
    self.synopsis.text = synopsis;
    
    NSString *backDropPath = self.movieInfo[@"backdrop_path"];
    NSString *backDropImageURLString =@"https://image.tmdb.org/t/p/w500";
    NSString *fullBackdropPath = [backDropImageURLString stringByAppendingString:backDropPath];
    NSURL *backDropImageURL = [NSURL URLWithString:fullBackdropPath];
    [self.backDropView setImageWithURL:backDropImageURL];
    
    
    NSString *posterPath = self.movieInfo[@"poster_path"];
    NSString *posterImageURLString = @"https://image.tmdb.org/t/p/w500";
    NSString *fullPosterPath = [posterImageURLString stringByAppendingString:posterPath];
    NSURL *posterImageURL = [NSURL URLWithString:fullPosterPath];
    [self.posterView setImageWithURL:posterImageURL];
     
}

#pragma mark - Navigation

//In a storyboard-based application, you will often want to do a little preparation before navigation


@end
