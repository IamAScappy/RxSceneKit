//
//  Mapper.swift
//  RxSceneKit
//
//  Created by Maxim Volgin on 27/10/2018.
//  Copyright © 2018 Maxim Volgin. All rights reserved.
//

import SceneKit
#if !RX_NO_MODULE
import RxSwift
import RxCocoa
#endif

// MARK: - SCNSceneRendererDelegate

func toEventTime(_ args: [Any]) throws -> EventTime {
    let renderer = try castOrThrow(SCNSceneRenderer.self, args[0])
    let time = try castOrThrow(TimeInterval.self, args[1])
    return (renderer, time)
}

func toEventRender(_ args: [Any]) throws -> EventRender {
    let renderer = try castOrThrow(SCNSceneRenderer.self, args[0])
    let scene = try castOrThrow(SCNScene.self, args[1])
    let time = try castOrThrow(TimeInterval.self, args[2])
    return (renderer, scene, time)
}
