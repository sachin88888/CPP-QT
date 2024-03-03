import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Property Binding Demo")

    Rectangle {
        id: redRectId
        width: 50
        height: width * 1.5
        color: "red"
    }

    Rectangle {
        id: blueRectId
        color: "blue"
        width: 100
        height: 100
        anchors.bottom : parent.bottom

        MouseArea {
            anchors.fill: parent
            onClicked:{
                redRectId.width = redRectId.width + 10
            }
        }
    }

    Rectangle {
        id: greenRectId
        color: "green"
        width: 100
        height: 100
        anchors.bottom: parent.bottom
        anchors.left: blueRectId.right

        MouseArea {
            anchors.fill: parent
            onClicked: {
                //redRectId.height = 100 //property binding break whenever we bind two property together
                redRectId.height = Qt.binding(function(){ // This notifies Qt systems about the binding
                    return redRectId.width * 2
                })
            }
        }
    }
}
