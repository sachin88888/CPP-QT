import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id: rootID
    width: 640
    height: 480
    visible: true
    title: qsTr("QML datatypes Demo")

    property string mString: "Hello World"
    property int mInt: 45
    property bool isEighteen: false
    property double mdouble: 10.2
    property url murl: "https://www.google.com"
    property string mString2: "https://www.google.com"

    Rectangle {
        id: rectId1
        width: 200
        height: 100 + mInt
        color: "yellow"
        anchors.centerIn: parent

        Text {
            id: mTextId
            anchors.centerIn: parent
            text: mString
            font.bold: isEighteen ? true : false
        }
    }
    Rectangle {
        width: 50; height: 30
        visible: isEighteen
        anchors.centerIn: parent
        anchors.top: rectId1.bottom
        Text {
            id: textNewId
            text: qsTr("Vote")
        }
    }

    Component.onCompleted: {
        //console.log("The value of mString is : ", mString)
        //console.log("The value of mString is : "+ mString)
        print("The value of mString is : "+ mString)
        console.log("The value of mInt is : "+ mInt)
        if(isEighteen){
            console.log("You are eligible to vote")
        }
        else{
            console.log("Not eligible to vote")
        }
        console.log("The value of mDouble is : ", mdouble)
        console.log("The value of url is : ", murl)
        if (mString2 === murl){
            console.log("They are same...")
        }
        else{
            console.log("They are not same...")
        }
        // Strings and url data types are not same
        // == only checks for the value
        // === checks for both value and datatypes
    }
}

