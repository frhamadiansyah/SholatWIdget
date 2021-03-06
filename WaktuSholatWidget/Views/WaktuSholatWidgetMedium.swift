//
//  WaktuSholatWidgetMedium.swift
//  WaktuSholatWidgetExtension
//
//  Created by Fandrian Rhamadiansyah on 25/10/20.
//

import SwiftUI
import WidgetKit

struct WaktuSholatWidgetMedium: View {
    let entry : WaktuSholatEntry
    
    var body: some View {
        ZStack {
            ProgressBar(duration: entry.sholatTime.whatSholat.duration, remainingTime: entry.sholatTime.whatSholat.remainingTime)
                .padding()
            
            VStack(alignment: .center) {
                Text("Waktu Sholat \(entry.sholatTime.whatSholat.currentSholat.rawValue)")
                    .font(.subheadline)
                    .padding()
                Text(entry.sholatTime.whatSholat.nextSholatTime, style: .relative)
                    .font(.footnote)
                    .multilineTextAlignment(.center)
//                    .frame(width: .infinity, alignment: .center)
                

            }
        }
    }
}

struct WaktuSholatWidgetMedium_Previews: PreviewProvider {
    static var previews: some View {
        WaktuSholatWidgetMedium(entry: WaktuSholatEntry.stub).previewContext(WidgetPreviewContext(family: .systemMedium))
    }
}
