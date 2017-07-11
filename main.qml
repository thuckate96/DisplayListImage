import QtQuick 2.5
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    ListModel{
        id: myModel
        ListElement{name: "Vi Van Thuc"; portait: "images/13.png"}
        ListElement{name: "Nguyen Song Sac"; portait: "images/abc.jpg"}
        ListElement{name: "Vu Trong Phung"; portait: "images/13.png" }
    }
    GridView{
        width: Screen.width
        height: Screen.height
        model: myModel
        delegate: Column{
            Image{width: 100; height: 150;source: portait;anchors.horizontalCenter: parent.horizontalCenter}
            Text{text: name;anchors.horizontalCenter: parent.horizontalCenter}
        }
    }
}
