# Pre-work - *TipCalCodePath*

TipCalCodePath is a tip calculator application for iOS.

Submitted by: Mohammad Nazmuz Salehin

Time spent: 3 hours spent in total

## User Stories

The following **required** functionality is complete:

* [X ] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [X ] Settings page to change the default tip percentage.



The following **additional** features are implemented:

- [X] Split amount based on party members

## Video Walkthrough 

Here's a walkthrough of implemented user stories:

<img src='http://imgur.com/a/qYjhw' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Project Analysis

As part of your pre-work submission, please reflect on the app and answer the following questions below:

**Question 1**: "What are your reactions to the iOS app development platform so far? How would you describe outlets and actions to another developer? Bonus: any idea how they are being implemented under the hood? (It might give you some ideas if you right-click on the Storyboard and click Open As->Source Code")

**Answer:** If any developer get used to with Xcode and has frontend development experience can easily start with iOS development now. Because swift already eliminated the main blocker on learning curve. 
Actions are functions that can associated with any event on the components. Where Outlets can be considered as representing variables for the components. They are implemented in XML with identifier and associated events and destinations. 



Question 2: "Swift uses [Automatic Reference Counting](https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/AutomaticReferenceCounting.html#//apple_ref/doc/uid/TP40014097-CH20-ID49) (ARC), which is not a garbage collector, to manage memory. Can you explain how you can get a strong reference cycle for closures? (There's a section explaining this concept in the link, how would you summarize as simply as possible?)"

**Answer:**  ARC assign memory when the instances are in use and frees up the memory when instances are not in use. To make sure it will have memory for instances for future potential use it checks references of variables, constants and properties. 


## License

    Copyright [yyyy] [name of copyright owner]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
