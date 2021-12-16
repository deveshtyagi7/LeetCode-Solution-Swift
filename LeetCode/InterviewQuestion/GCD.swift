//
//  GCD.swift
//  LeetCode
//
//  Created by Devesh Tyagi on 15/12/21.
//

import Foundation
/*
GCD provides three main types of queues:
 
Main queue: runs on the main thread and is a serial queue.
 
Global queues: concurrent queues that are shared by the whole system. There are four such queues with different priorities : high, default, low, and background. The background priority queue has the lowest priority and is throttled in any I/O activity to minimize negative system impact.
 
Custom queues: queues that you create which can be serial or concurrent. Requests in these queues actually end up in one of the global queues.
 
When sending tasks to the global concurrent queues, you don’t specify the priority directly. Instead, you specify a Quality of Service (QoS) class property. This indicates the task’s importance and guides GCD in determining the priority to give to the task.
 
 
The QoS classes are:
User-interactive: This represents tasks that must complete immediately in order to provide a nice user experience. Use it for UI updates, event handling and small workloads that require low latency. The total amount of work done in this class during the execution of your app should be small. This should run on the main thread.
User-initiated: The user initiates these asynchronous tasks from the UI. Use them when the user is waiting for immediate results and for tasks required to continue user interaction. They execute in the high priority global queue.
Utility: This represents long-running tasks, typically with a user-visible progress indicator. Use it for computations, I/O, networking, continuous data feeds and similar tasks. This class is designed to be energy efficient. This will get mapped into the low priority global queue.
Background: This represents tasks that the user is not directly aware of. Use it for prefetching, maintenance, and other tasks that don’t require user interaction and aren’t time-sensitive. This will get mapped into the background priority global queue.
 */
