Class {
	#name : #PenEventBinding,
	#superclass : #Object,
	#instVars : [
		'source',
		'callback'
	],
	#category : #'Penfeld-Events'
}

{ #category : #factory }
PenEventBinding class >> for: aSymbol do: aBlock [
	^ PenSimpleEventBinding new
		symbol: aSymbol;
		callback: (PenEventBlockCallback new block: aBlock);
		yourself
]

{ #category : #factory }
PenEventBinding class >> for: anEventSymbol perform: aSymbol on: aReceiver [
	^ PenSimpleEventBinding new
		symbol: anEventSymbol;
		callback: (PenEventFunctionCallback new
			symbol: aSymbol;
			receiver: aReceiver);
		yourself
]

{ #category : #factory }
PenEventBinding class >> forAll: aList do: aBlock [
	^ PenCompositeEventBinding new
		symbols: aList;
		callback: aBlock;
		yourself
]

{ #category : #factory }
PenEventBinding class >> forAll: aList perform: aSymbol on: aReceiver [
	^ PenCompositeEventBinding new
		symbols: aList;
		callback: (PenEventFunctionCallback new
			symbol: aSymbol;
			performer: aReceiver);
		yourself
]

{ #category : #accessing }
PenEventBinding >> callback [
	^ callback
]

{ #category : #accessing }
PenEventBinding >> callback: aBlock [
	callback := aBlock
]

{ #category : #accessing }
PenEventBinding >> executeCallback [
	self source isDisabled ifTrue: [ ^ self ].
	[ self callback executeCallback ] fork.
]

{ #category : #accessing }
PenEventBinding >> executeCallback: anEvent [
	self source isDisabled ifTrue: [ ^ self ].
	[ self callback executeCallback: anEvent ] fork.
]

{ #category : #testing }
PenEventBinding >> isCompositeEvent [
	^ false
]

{ #category : #testing }
PenEventBinding >> isSimpleEvent [
	^ false
]

{ #category : #accessing }
PenEventBinding >> source [
	^ source
]

{ #category : #accessing }
PenEventBinding >> source: anObject [
	source := anObject
]

{ #category : #testing }
PenEventBinding >> symbolMatches: aSymbol [
	self subclassResponsibility 
]
