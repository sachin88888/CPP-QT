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

    property var aNumber: 100
    property var aBool: false
    property var aString: "Hello world!"
    property var anotherString: String("#FF008800")
    property var aColor: Qt.rgba(0.2, 0.3, 0.4, 0.5) //rgba -> Red, Green, Blue and last parameter is opacity
    property var aRect: Qt.rect(10, 10, 10, 10)
    property var aPoint: Qt.point(10, 10)
    property var aSize: Qt.size(10, 10)
    property var aVector3d: Qt.vector3d(100, 100, 100)
    property var anArray: [1, 2, 3, "four", "five", (function() { return "six"; })]
    property var anObject: { "foo": 10, "bar": 20 }
    property var aFunction: (function() { return "one"; })
    property var aFont : Qt.font({family: "Consolas", pointSize: 30, bold:true})
    property date  mDate: "2000-01-01"

    Rectangle {
        id: rectId1
        width: 200
        height: 100 + mInt
        //color: "yellow"
        color: aColor
        anchors.centerIn: parent

        Text {
            id: mTextId
            anchors.centerIn: parent
            text: mString
            //font.bold: isEighteen ? true : false
            font: aFont
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


        // ********* Playing with var data types *************
        console.log("The value of aNumber is : ", aNumber)
        console.log("The value of aBool is : ", aBool)
        console.log("The value of aString is : ", aString)
        console.log("The value of another string is : ", anotherString)

        console.log("The components of aRect are : x:", aRect.x," y: ",aRect.y," width : ", aRect.width , " Height:" , aRect.height)
        console.log("The components of aPoint are : x: ",aPoint.x, " y :", aPoint.y)

        console.log("The length of the array is : ", anArray.length)

        /* For each loop
        anArray.forEach(function(value, index){
            if(index === 5)
                console.log(value())
            else
                console.log(value)
        })
        */
        // For loop
        for(var i = 0; i< anArray.length; i++){
            if(i === 5){
                console.log(anArray[i]())
            }
            else
                console.log(anArray[i])
        }

       console.log("The date is : ",mDate)

       console.log("The function value is: ", aFunction())
    }
}

