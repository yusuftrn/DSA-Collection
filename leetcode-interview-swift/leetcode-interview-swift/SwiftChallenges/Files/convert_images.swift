/*
 Challenge 35: Convert images
 Difficulty: Tricky
 Write a function that accepts a path to a directory, then converts to PNGs any JPEGs it finds in there,
 leaving the originals intact. If any JPEG can’t be converted the function should just quietly continue.

 Tip #1: For the purpose of this task, just looking for “.jpg” and “.jpeg” file extensions is sufficient.
 Tip #2: You can write this for iOS or macOS depending on your skills.
 iOS is easy to code but tricky to create a test environment for, and macOS is the opposite.
 If you can solve this on both platforms, I’d rate this Taxing.

 Sample input and output:
 • If your directory exists and is readable, all JPEGs in there should be converted to PNGs.
 • If any JPEGs can’t be read, converted, or written, just continue on quietly.
 */

import Foundation
import Cocoa

//func challenge35iOS(in directory: String) {
//  let fm = FileManager.default
//  let dirURL = URL(fileURLWithPath: directory)
//  guard let files = try? fm.contentsOfDirectory(at: dirURL, includingPropertiesForKeys: nil) else { return }
//  for file in files {
//    guard file.pathExtension == "jpeg" || file.pathExtension == "jpg" else { continue }
//    guard let image = UIImage(contentsOfFile: file.path) else { continue }
//    guard let png = UIImagePNGRepresentation(image) else { continue }
//    let newFilename = file.deletingPathExtension().appendingPathExtension("png")
//    _ = try? png.write(to: newFilename)
//  }
//}

func challenge35(in dir: String) {
  let fm = FileManager.default
  let dirURL = URL(fileURLWithPath: dir)
  guard let files = try? fm.contentsOfDirectory(at: dirURL, includingPropertiesForKeys: nil) else {
    print("ERROR file input")
    return
  }
  for file in files {
    guard file.pathExtension.lowercased() == "jpeg" || file.pathExtension.lowercased() == "jpg" else {
      continue
    }
    guard let image = NSImage(contentsOf: file) else {
      continue
    }
    guard let tiffData = image.tiffRepresentation else {
      continue
    }
    guard let imageRepresentation = NSBitmapImageRep(data: tiffData) else {
      continue
    }
    guard let pngImage = imageRepresentation.representation(using: .png, properties: [:]) else {
      continue
    }
    let newFileName = file.deletingPathExtension().appendingPathExtension("png")
    _ = try? pngImage.write(to: newFileName)
  }
}
