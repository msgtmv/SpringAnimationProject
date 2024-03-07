//
//  DataManager.swift
//  SpringAnimationProject
//
//  Created by Муслим Гаппаров on 3/4/24.
//

import Foundation
import SpringAnimation


class DataManager {
    static let shared = DataManager()
    
    func getPresets() -> [AnimationPreset] {
        AnimationPreset.allCases
    }
    func getCurves() -> [AnimationCurve] {
        AnimationCurve.allCases
    }
    
    private init() {}
}
