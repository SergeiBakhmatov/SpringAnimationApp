//
//  Animation.swift
//  SpringAnimationApp
//
//  Created by Sergei Bakhmatov on 02.05.2023.
//

struct Animation {
    
    let preset: [String]
    let curve: [String]
    
    static func getPresetList() -> Animation {
        
        let animations = Animation(
            preset: DataStore.shared.presets,
            curve: DataStore.shared.curves
        )
        
        return animations
    }
}
