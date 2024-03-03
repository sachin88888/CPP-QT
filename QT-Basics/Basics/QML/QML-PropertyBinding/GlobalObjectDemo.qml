import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Qt Global Object Demo")

    property var fonts: Qt.fontFamilies()

    Rectangle {
        width: 300
        height: 100
        color: "red"
        anchors.centerIn: parent
        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("Quitting the application...")
                Qt.quit()

                //List all the available fonts
                for(var i = 0; i< fonts.length; i++){
                    console.log("[" ,i, "] : ", fonts[i])
                }

                // Hash a string
                var mName = "Sachin Chaurasia"
                var mNameHash = Qt.md5(mName)
                console.log("The hash of the name is : ", mNameHash)

                // Open url Externally
                //Qt.openUrlExternally("https://www.google.com")

                //Open local files with default Program (default program here is default application to open that file)
                Qt.openUrlExternally("file:///Users/sachin/Desktop/C++/QT/QT-Basics/Basics/QML/QML-PropertyBinding/Qml.png")

                //Capture platform Info
                console.log("The platform is : ", Qt.platform.os)
            }

        }
    }
}
