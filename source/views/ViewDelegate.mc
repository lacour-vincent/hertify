import Toybox.Lang;
import Toybox.WatchUi;

class ViewDelegate extends BehaviorDelegate {

    public function initialize() {
        BehaviorDelegate.initialize();
    }

    public function onSelect() as Boolean {
        return false;
    }
}