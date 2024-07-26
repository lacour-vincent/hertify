import Toybox.Application;
import Toybox.Lang;
import Toybox.WatchUi;

using Toybox.System;

class App extends AppBase {

    function initialize() {
        AppBase.initialize();
    }

    function getInitialView() as [Views] or [Views, InputDelegates] {
        var factory = new PageIndicatorFactory();
        var loop = new WatchUi.ViewLoop(factory, {:page => 0, :color => Graphics.COLOR_WHITE });
        return [loop, new PageIndicatorDelegate(loop)];
    }

    function getGlanceView() as [GlanceView] or [GlanceView, GlanceViewDelegate] or Null {
        return [new WidgetView(), new WidgetViewDelegate()];
    }

    function onStart(state as Dictionary?) as Void {}
    function onStop(state as Dictionary?) as Void {}
}

function getApp() as App {
    return Application.getApp() as App;
}