//
//  ViewController.m
//  Fontsmoothing
//
//  Created by Heiko Witte on 12.12.17.
//  Copyright © 2017 fournova Software GmbH. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet NSOutlineView *outlineView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.outlineView.selectionHighlightStyle = NSTableViewSelectionHighlightStyleSourceList;
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

#pragma mark - NSOutlineViewDelegate

- (NSView *)outlineView:(NSOutlineView *)outlineView viewForTableColumn:(NSTableColumn *)tableColumn item:(id)item {
    NSTableCellView *view = [self.outlineView makeViewWithIdentifier:tableColumn.identifier owner:self.outlineView];
    view.textField.stringValue = @"Fontsmoothing";
    return view;
}

#pragma mark - NSOutlineViewDataSource

- (CGFloat)outlineView:(NSOutlineView *)outlineView heightOfRowByItem:(id)item {
    return 20.0;
}

- (NSInteger)outlineView:(NSOutlineView *)outlineView numberOfChildrenOfItem:(id)item {
    if (!item) {
        return 10;
    }

    return 0;
}

- (id)outlineView:(NSOutlineView *)outlineView child:(NSInteger)index ofItem:(id)item {
    if (!item) {
        return @"Dummy";
    }

    return nil;
}

- (id)outlineView:(NSOutlineView *)outlineView objectValueForTableColumn:(NSTableColumn *)tableColumn byItem:(id)item {
    return @"Dummy";
}

- (BOOL)outlineView:(NSOutlineView *)outlineView isItemExpandable:(id)item {
    return NO;
}

@end
