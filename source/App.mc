import Toybox.Application;
import Toybox.Lang;
import Toybox.WatchUi;

class App extends AppBase {

    function initialize() {
        AppBase.initialize();
    }

    function onStart(state as Dictionary?) as Void {
    }

    function onStop(state as Dictionary?) as Void {
    }

    function getInitialView() as [Views] or [Views, InputDelegates] {
        return [ new V02MaxView() ];
    }

}

function getApp() as App {
    return Application.getApp() as App;
}