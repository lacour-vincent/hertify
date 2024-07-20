import Toybox.Graphics;
import Toybox.Lang;
import Toybox.WatchUi;

class PageIndicatorFactory extends ViewLoopFactory {
    private const NUM_PAGES = 2;

    function initialize() {
        ViewLoopFactory.initialize();
    }

    function getView(page as Number) as [View] or [View, BehaviorDelegate] {
       switch (page) {
            case 0:
                return [new V02MaxView()];
            case 1:
                return [new HeartZonesView()];
            default:
                return [new V02MaxView()];
        }
    }

    function getSize() {
        return NUM_PAGES;
    }
}