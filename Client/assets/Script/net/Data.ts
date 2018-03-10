const { ccclass, property } = cc._decorator;
import IM from "./IM";
import Buffer from "./Buffer";
import Global from "../utils/Global";
import Protocol from "./Protocol";
import Table from "./Table";
import Window from "../utils/Window";
import { Beans } from "./Bean";

@ccclass
export default class Data {
    public static it: Data = new Data();
    im: IM;
    tables: Array<Table<any>> = [];
    userId: number;
    name: string = "data1234";
    index: number;
    roomCode: number;
    onConnent: Function;

    constructor() {
    }

    Connent(host: string, onConnent: Function) {
        this.onConnent = onConnent;
        this.im = new IM(this, "ws://" + host + ":8080/Server/websocket2");
    }

    onOpen(event) {
        //有可能不回调
        console.log("连接成功" + this.name);
    }

    onError(event) {
        new Window("Tips", "连接失败！");
    }

    onClose(event) {
        new Window("Tips", "连接断开！");
    }

    onServerTime(time, str) {
        this.onConnent();
        console.log("TIME:" + time + " " + str);
    }

    onUserData(buffer: Buffer) {
        console.log("onUserData()");
        Global.KeyEvent();
        Global.GotoScene("Hall");
    }

    onLogin(buffer: Buffer) {
        this.userId = buffer.getInt();
        this.im.Call(Protocol.LOGIN_USER_DATA, this.onUserData, this);
    }

    Login(passId) {
        cc.sys.localStorage.setItem('passId', passId);
        console.log("passId:", passId);
        this.im.Call(Protocol.LOGIN, this.onLogin, this, "ssss", 19, passId, 456);
    }

    Init(buffer) {
        var hc = buffer.getUByte();
        var name = buffer.getUTF();
        var table: Table<any> = Beans[name].table;
        table.Init(hc, buffer);
        this.tables[hc] = table;
        console.log("Init:", name, hc);
    }

    Insert(buffer) {
        var hc = buffer.getUByte();
        var table = this.tables[hc];
        if (table != null) {
            table.Insert(buffer);
        }
        console.log("Insert:", hc);
    }

    Delete(buffer) {
        var hc = buffer.getUByte();
        var table = this.tables[hc];
        if (table != null) {
            table.Delete(buffer);
        }
    }

    Update(buffer) {
        var hc = buffer.getUByte();
        var table = this.tables[hc];
        if (table != null) {
            table.Update(buffer);
        }
    }
}
