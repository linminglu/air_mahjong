const { ccclass, property } = cc._decorator;

import Window from "../utils/Window";
import Protocol from "../net/Protocol";
import Data2 from "../net/Data";
import IWindow from "../utils/IWindow";
import { Beans } from "../net/Bean";

@ccclass
export default class DataView extends IWindow {

    start() {
        var layout = this.node.getChildByName("Layout");
        var item = layout.children[0];
        for (var key in Beans) {
            var o = cc.instantiate(item);
            var label = o.getComponent<cc.Label>(cc.Label);
            label.string = key;
            o.parent = layout;
            o.name = key;
            o.on(cc.Node.EventType.TOUCH_START, function (event) {
                console.log(event.target.name + "---==");
                new Window("TableView", event.target.name);
            }, this);
        }
        item.destroy();
    }

    init() {

    }
    // called every frame, uncomment this function to activate update callback
    // update: function (dt) {

    // },

    close() {
        this.node.destroy();
    }
}
