//
//  Maps_Zoom_Level_DemoViewController.m
//  Maps Zoom Level Demo
//
//  Created by colins on 30/08/11.
//  Copyright 2011 mobile melting GmbH. All rights reserved.
//

#import "Maps_Zoom_Level_DemoViewController.h"
#import "MKMapView+ZoomLevel.h"


@implementation Maps_Zoom_Level_DemoViewController

@synthesize mapView, zoomIn, zoomOut, currentZoom;

#define GEORGIA_TECH_LATITUDE 52.504864
#define GEORGIA_TECH_LONGITUDE 13.324962

#define DEFAULT_ZOOM_LEVEL 0
#define MAX_ZOOM_LEVEL 18

- (void) dealloc {
    [mapView release];
    [zoomIn release];
    [zoomOut release];
    [currentZoom release];
    [super dealloc];
}

#pragma mark - View lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    zoom = DEFAULT_ZOOM_LEVEL;
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    CLLocationCoordinate2D centerCoord = { GEORGIA_TECH_LATITUDE, GEORGIA_TECH_LONGITUDE };
    [mapView setCenterCoordinate:centerCoord zoomLevel:DEFAULT_ZOOM_LEVEL animated:NO];
    
    [self updateCurrentZoomLabel:DEFAULT_ZOOM_LEVEL];    
}

- (void)viewDidUnload {
    [super viewDidUnload];
    self.mapView = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)zoomInAction:(id)sender {
    [self updateCurrentZoomLabel:(zoom + 1)];
    
    CLLocationCoordinate2D centerCoord = { GEORGIA_TECH_LATITUDE, GEORGIA_TECH_LONGITUDE };
    [mapView setCenterCoordinate:centerCoord zoomLevel:zoom animated:NO];
}

- (IBAction)zoomOutAction:(id)sender {
    [self updateCurrentZoomLabel:(zoom - 1)];
    
    CLLocationCoordinate2D centerCoord = { GEORGIA_TECH_LATITUDE, GEORGIA_TECH_LONGITUDE };
    [mapView setCenterCoordinate:centerCoord zoomLevel:zoom animated:NO];
}

- (void) updateCurrentZoomLabel:(NSInteger)zoomLevel {
    if (DEFAULT_ZOOM_LEVEL <= zoomLevel && zoomLevel <= MAX_ZOOM_LEVEL) {
        zoom = zoomLevel;
        [currentZoom setText:[NSString stringWithFormat:@"Zoom: %d", zoom]];
    }    
}

@end
