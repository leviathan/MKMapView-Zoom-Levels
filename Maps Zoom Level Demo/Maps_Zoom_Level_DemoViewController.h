//
//  Maps_Zoom_Level_DemoViewController.h
//  Maps Zoom Level Demo
//
//  Created by colins on 30/08/11.
//  Copyright 2011 mobile melting GmbH. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface Maps_Zoom_Level_DemoViewController : UIViewController {
    NSInteger zoom;
}

@property (nonatomic, retain) IBOutlet MKMapView *mapView;
@property (nonatomic, retain) IBOutlet UIButton *zoomIn;
@property (nonatomic, retain) IBOutlet UIButton *zoomOut;
@property (nonatomic, retain) IBOutlet UILabel *currentZoom;

- (IBAction)zoomInAction:(id)sender;
- (IBAction)zoomOutAction:(id)sender;

- (void) updateCurrentZoomLabel:(NSInteger)zoomLevel;

@end
