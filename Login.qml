import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.VirtualKeyboard 2.2
import QtQuick.Controls 2.2
ApplicationWindow {
    visible: true
    width: 1024
    height: 860
    title: qsTr("Smart Home")
    Image {
        id:backgroundAnim
        source: "../Downloads/imageQt/background.jpeg"
        width: parent.width
        height: parent.height
    }

    TextField {
        id:txtPassword
        anchors.centerIn: parent
        placeholderText: qsTr("Enter Password")
        onAccepted: {
            checkLogin(txtPassword.text)
        }
    }

    InputPanel {
        id: passwordKeyboard
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.right: parent.right
    }
    SwipeView {
        visible: false
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex
        height: 300
        width: parent.width
        GroundFloor{
        }
        FirstFloor{
        }
    }

    footer: TabBar {
        id: tabBar
        visible: false
        currentIndex: swipeView.currentIndex
        TabButton {
            text: qsTr("Ground")
        }
        TabButton {
            text: qsTr("First")
        }
    }

    function checkLogin(passwordCheck)
    {
        if(passwordCheck == "123456")
        {
            swipeView.visible = true
            tabBar.visible = true
            txtPassword.visible = false
            passwordKeyboard.visible = false
        }
    }
}
