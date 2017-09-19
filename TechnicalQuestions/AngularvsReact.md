# Angular vs React
- Angular is an MVC, React is a just a V
- React has virtual DOM, more like a UI Render rather than full Framework. Three main advatages:
  1. Changes occur by comparing Dom and the virtual DOM, React only changes what is needed in the most optimal way
  2. Browser not needed to test React
  3. The virtual DOM has the ability to connect to other entities. (Electron)


- Angular defaults to using Typescript, React uses vanilla JS
- React incorporates unidirectional data flow
- Angular harder to debug, event driven. code resembles HTML template
- React Debugging - Updates model doing other actions as a result of user events.
- One-way render flow which means there are fewer places to look for bugs and the stack traces have clear distinctions between react code and own code.


Speed

- React: uses one-way data binding. We write code that handles the tracking between the model and the view. Once code is written, the components are fast as we are only chanigng the elements that are changed in the DOM

- Angular: Uses two-way data binding: So if I need to change a value in the DOM, both the view and the model are update. This behavior is possible because each binding requires a watcher; so the bigger your app the bigger impact of those watchers. 
