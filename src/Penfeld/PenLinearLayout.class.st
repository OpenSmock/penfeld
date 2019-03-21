Class {
	#name : #PenLinearLayout,
	#superclass : #Object,
	#instVars : [
		'orientation'
	],
	#category : #'Penfeld-Exp-Layouts'
}

{ #category : #factory }
PenLinearLayout class >> horizontal [
	^ self new initialize: #horizontal
]

{ #category : #factory }
PenLinearLayout class >> vertical [
	^ self new initialize: #vertical
]

{ #category : #initialization }
PenLinearLayout >> initialize: anOrientation [
	orientation := anOrientation 
]

{ #category : #testing }
PenLinearLayout >> isHorizontal [
	^ orientation = #horizontal
]