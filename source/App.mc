import Toybox.Application;
import Toybox.Lang;
import Toybox.WatchUi;

using Toybox.System;

class App extends AppBase {

    function initialize() {
        AppBase.initialize();
    }

    // function getInitialView() as [Views] or [Views, InputDelegates] {
    //     var factory = new PageIndicatorFactory();
    //     var loop = new WatchUi.ViewLoop(factory, {:page => 0, :wrap => true });
    //     return [loop, new PageIndicatorDelegate(loop)];
    // }

    function getInitialView() as [Views] or [Views, InputDelegates] {
        return [new V02MaxView()];
    }


    function onStart(state as Dictionary?) as Void {}
    function onStop(state as Dictionary?) as Void {}
}

function getApp() as App {
    return Application.getApp() as App;
}