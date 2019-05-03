//
//  ViewController.m
//  application_2
//
//  Created by Lizaveta Rudzko on 2/12/1398 AP.
//  Copyright © 1398 Lizaveta Rudzko. All rights reserved.
//

#import "ViewController.h"
#import "City.h"

NSDictionary* cities = nil;

@interface ViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UILabel *temperatureLabel;
@property (weak, nonatomic) IBOutlet UITextField *temperatureTextField;
@property (weak, nonatomic) IBOutlet UILabel *valueTemperatureLabel;
@property (weak, nonatomic) IBOutlet UILabel *museumNameLabel;
@property (strong, nonatomic) IBOutlet UIImageView *museum_view;
@property (weak, nonatomic) IBOutlet UIButton *button;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    cities = @{@"Minsk" : [[City alloc] initWithParams:@"Great Patriotic War Museum" museum_image:@"museum1.jpg" temperature: @17],
               @"Vitebsk" : [[City alloc] initWithParams:@"Mark Chagall Museum"  museum_image:@"museum2.jpg"temperature: @15],
               @"St.Petersburg" : [[City alloc] initWithParams:@"Hermitage"  museum_image:@"museum3.jpg" temperature: @11],
               @"Moscow" : [[City alloc] initWithParams:@"State Historical Museum" museum_image:@"museum4.jpg" temperature: @-3],
               @"Yerevan" : [[City alloc] initWithParams:@"National Historical Museum"  museum_image: @"museum5.jpg" temperature: @25],
               @"Armavir" : [[City alloc] initWithParams:@"Local Historical Museum"  museum_image:@"museum6.jpg" temperature: @5] };
    
    self.temperatureTextField.delegate = self;

    self.temperatureTextField.contentVerticalAlignment =
    UIControlContentVerticalAlignmentCenter;
    
    [[self temperatureLabel] setTextColor:UIColor.blackColor];
    [[self temperatureLabel] setText:@"Temperature:"];
    [[self valueTemperatureLabel] setText: @"0 C"];
    [[self museumNameLabel] setText: @"Name of the museum"];
    [[self button] setTitle:@"OK" forState:UIControlStateNormal];
    
    //[self refresh:self];
    
}
- (IBAction)refresh:(id)sender {
    NSString* name_city = self.temperatureTextField.text;
    City* city = cities[name_city];
    NSNumber* temperature = city.temperature;
    
    [[self valueTemperatureLabel] setText: [NSString stringWithFormat:@"%@ C", [temperature stringValue]]];
    [[self museumNameLabel] setText: city.museum_name];
    
    if ([temperature intValue] < 0) {
        [[self temperatureLabel] setTextColor:UIColor.blueColor];
    }
    else if ([temperature intValue] <= 15) {
        [[self temperatureLabel] setTextColor:UIColor.yellowColor];
    }
    else {
        [[self temperatureLabel] setTextColor:UIColor.redColor];
    }
    
    UIImage* museum = [UIImage imageNamed: city.museum_image];
    self.museum_view = [[UIImageView alloc] initWithFrame:self.museum_view.frame];
    self.museum_view.contentMode = UIViewContentModeScaleAspectFit;
    self.museum_view.image = museum;
    [self.view addSubview:self.museum_view];
}


@end
