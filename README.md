#Provider 
provider is one of the most popular state management packages for Flutter, designed by the Flutter team community. It offers a simple and efficient way to manage and share application state (data) across widgets.

Instead of passing data down the widget tree manually with constructors (prop drilling), provider allows you to expose state at a higher level in the widget tree, making it easy for any child widget to access and update shared data.
<hr/>
provider uses ChangeNotifier to notify listeners (widgets) about state changes.
