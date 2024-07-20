import Toybox.Lang;
import Toybox.WatchUi;


class PageIndicatorDelegate extends ViewLoopDelegate {
    private var _loop as ViewLoop;

    function initialize(loop as ViewLoop) {
        ViewLoopDelegate.initialize(loop);
        _loop = loop;
    }

    function onNextView() {
        _loop.changeView(WatchUi.ViewLoop.DIRECTION_PREVIOUS);
        return true;
    }

    function onPreviousView() {
        _loop.changeView(WatchUi.ViewLoop.DIRECTION_NEXT);
        return true;
    }
}