import QtQuick 2.10
//import QtQuick.Window 2.10
import QtQuick.Controls 2.4
ApplicationWindow {
    title: qsTr("Hello World")
    width: 640
    height: 480
    visible: true

    Item {
        id: container
        width: 300; height: 300

        Rectangle {
            id: rect
            width: 100; height: 100
            color: "red"

            MouseArea {
                id: mouseArea
                anchors.fill: parent
            }

            states: State {
                name: "resized"
                when: mouseArea.pressed
                PropertyChanges {
                    target: rect
                    color: "blue"
                    height: container.height
                }
            }
        }
    }



    //    Rectangle {
    //        id: flashingblob
    //        width: 75; height: 75
    //        color: "blue"
    //        opacity: 1.0

    //        MouseArea {
    //            anchors.fill: parent
    //            onClicked: {
    //                animateColor.start()
    //                animateOpacity.start()
    //            }
    //        }

    ////        PropertyAnimation {
    ////            id: animateColor
    ////            target: flashingblob
    ////            properties: "color"
    ////            to: "green"
    ////            duration: 100
    ////        }

    //        NumberAnimation {
    //            id: animateOpacity
    //            target: flashingblob
    //            properties: "opacity"
    ////            from: 0.0
    //            to: 0.0
    //            loops: Animation.Infinite
    //            easing {type: Easing.OutBack; overshoot: 500}
    //        }
    //    }
    //    StackView {
    //        id: stack
    //        initialItem: mainView
    //        anchors.fill: parent
    //    }

    //    Component {
    //        id: mainView

    //        Row {
    //            spacing: 10

    //            Button {
    //                text: "Push"
    //                onClicked: stack.push(mainView)
    //            }
    //            Button {
    //                text: "Pop"
    //                enabled: stack.depth > 1
    //                onClicked: stack.pop()

    //            }
    //            Text {
    //                text: stack.depth
    //            }
    //        }
    //    }

}
