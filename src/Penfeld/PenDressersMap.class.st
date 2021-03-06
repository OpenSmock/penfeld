Class {
	#name : #PenDressersMap,
	#superclass : #Object,
	#instVars : [
		'value',
		'map'
	],
	#category : #'Penfeld-Abstracts'
}

{ #category : #'actions api' }
PenDressersMap class >> new [
	self shouldNotImplement 
]

{ #category : #accessing }
PenDressersMap >> dresserFor: aModelClass [
	^ map at: aModelClass
]

{ #category : #accessing }
PenDressersMap >> engine [
	^ #Bloc
]

{ #category : #initialization }
PenDressersMap >> initMap [
	^ self subclassResponsibility 
]

{ #category : #initialization }
PenDressersMap >> initialize [
	map := Dictionary new.
	self initMap
]
