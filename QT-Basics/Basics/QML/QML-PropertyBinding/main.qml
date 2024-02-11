import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id: rootID
    width: 640
    height: 480
    visible: true
    title: qsTr("Welcome to QT/QML")

    property string textToShow: "Hello"
    Row{
        id: rowId
        spacing: 20
        anchors.centerIn: parent
        Rectangle{
            id: blueRectId
            width: 100
            height: 100
            radius: 20
            color: "blue"
            Text{
                text: "Blue"
                anchors.centerIn: parent
            }

            MouseArea{
                anchors.fill: parent
                onClicked: {
                    textToShow = "BLUE"
                    console.log("blue rectangle")
                }
            }
        }
        Rectangle{
            id: redRectId
            width: 100
            height: 100
            radius: 20
            color: "red"
            Text{
                text: "Red"
                anchors.centerIn: parent
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    textToShow = "RED"
                    console.log("red rectangle")
                }
            }
        }
        Rectangle{
            id: greenRectId
            width: 100
            height: 100
            radius: 20
            color: "green"
            Text{
                text: "Green"
                anchors.centerIn: parent
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    textToShow = "GREEN"
                    console.log("green rectangle")
                }
            }
        }
        Rectangle{
            id: greyCircleId
            width: 100
            height: 100
            radius: 100
            color: "grey"
            Text{
                id: textId
                text: textToShow
                anchors.centerIn: parent
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    console.log("grey Circle")
                    // To break the loop
                    textId.text = "Loop Breaked"
                }
            }
        }
    }
}
