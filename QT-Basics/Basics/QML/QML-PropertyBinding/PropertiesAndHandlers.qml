import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Properties and Signal Handlers Demo")

    property string mFirstName : "Sachin"

    onMFirstNameChanged: {
        console.log("The name is changed to ", mFirstName)
    }

    Rectangle{
        width: 300
        height: 100
        color: "greenyellow"
        anchors.centerIn: parent

        MouseArea{
            anchors.fill: parent
            onClicked:{
                mFirstName = "nihcaS"
                console.log("Name changed")
            }
        }
    }
    Component.onCompleted:{
        console.log("The first name is :", mFirstName)
    }
}
