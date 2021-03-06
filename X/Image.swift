//
//  Image.swift
//  X
//
//  Created by Sam Soffes on 4/28/15.
//  Copyright (c) 2015 Sam Soffes. All rights reserved.
//

#if os(iOS)
	import UIKit.UIImage
	public typealias Image = UIImage
 #else
	import AppKit.NSImage
	public typealias Image = NSImage

	extension NSImage {
		public var CGImage: CGImageRef! {
			return CGImageForProposedRect(nil, context: nil, hints: nil)?.takeUnretainedValue()
		}

		// Optional to match UIImage
		public convenience init?(CGImage cgImage: CGImageRef) {
			self.init(CGImage: cgImage, size: CGSizeZero)
		}
	}
 #endif
