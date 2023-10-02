//
//  PushNotifications.swift
//  Nefture
//
//  Created by Ignacio Juarez on 8/9/23.
//

import Foundation
import UserNotifications

func dispatchNotification() {
    let identifier = "my-morning-notification"
    let title = "⚠️ High Risk alert detected"
    let body = "Simon's Wallet is attempting to make a dangerous transaction"
    
    let notificationCenter = UNUserNotificationCenter.current()
    let content = UNMutableNotificationContent()
    content.title = title
    content.body = body
    content.sound = .default
    
    // Use TimeIntervalNotificationTrigger instead of CalendarNotificationTrigger
    let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 3, repeats: false)
    
    let request = UNNotificationRequest(identifier: identifier, content: content, trigger: trigger)
    notificationCenter.removePendingNotificationRequests(withIdentifiers:[identifier])
    notificationCenter.add(request)
}

func requestNotificationPermission() {
    let center = UNUserNotificationCenter.current()
    center.requestAuthorization(options: [.alert, .sound]) { (granted, error) in
        if granted {
            print("Permission granted!")
        } else {
            print("Permission denied.")
        }
    }
}
