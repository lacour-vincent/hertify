import Toybox.Lang;
import Toybox.WatchUi;

class ViewDelegate extends BehaviorDelegate {

    function initialize() {
        BehaviorDelegate.initialize();
    }

    function onSelect() as Boolean {
        return false;
    }
}