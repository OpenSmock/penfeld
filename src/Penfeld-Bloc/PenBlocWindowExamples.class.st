Class {
	#name : #PenBlocWindowExamples,
	#superclass : #Object,
	#category : #'Penfeld-Bloc-Examples'
}

{ #category : #examples }
PenBlocWindowExamples class >> example [
	self window1 open
]

{ #category : #examples }
PenBlocWindowExamples class >> exampleBorderlessWindow [
	self window1
		borderless: true;
		open
]

{ #category : #examples }
PenBlocWindowExamples class >> exampleFullscreenBorderlessWindow [
	(PenWindow
		withDisplayComponent: PenBlocWidgetsSample new displayComponent)
		borderless: true;
		fullscreen: true;
		open
]

{ #category : #examples }
PenBlocWindowExamples class >> exampleFullscreenWindow [
	self window1
		fullscreen: true;
		open
]

{ #category : #testing }
PenBlocWindowExamples class >> isDeprecated [ 
	^ true
]

{ #category : #examples }
PenBlocWindowExamples class >> window1 [
	| container label button window |
	label := PenLabel new 
		text: (String loremIpsum: 30);
		position: 40@40.
	
	button := PenButton new
		text: 'New Window';
		position: 230@40.
		
	container := PenContainer new 
		addElement: label;
		addElement: button.
	
	window := PenWindow withDisplayComponent: container.
	window size: 400@250.
	window title: self class name.
	
	button onActionDo: [ self window2 open. window close. ].
	
	^ window
]

{ #category : #examples }
PenBlocWindowExamples class >> window2 [
	| container label window |
	label := PenLabel new 
		text: (String loremIpsum: 60);
		position: 40@40;
		yourself.
		
	container := PenContainer new 
		addElement: label;
		size: 400@250
		yourself.
	
	window := PenWindow withDisplayComponent: container.
	window title: self className.
	^ window
]

{ #category : #'see class side' }
PenBlocWindowExamples >> seeClassSide [ 
]
