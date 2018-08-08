import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.VirtualKeyboard 2.2
import QtQuick.Controls 2.2
import QtQuick.Dialogs 1.2
ApplicationWindow {
    id:mainWindow
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
    AnimatedImage{
        visible: false
        id:demoGif
        source: "../Downloads/imageQt/banana.gif"
        width: parent.width
        height: parent.height
        MouseArea {
            anchors.fill: parent
            onClicked: {
                mainWindow.show()
                demoGif.visible = false
                txtPassword.visible = true
            }
        }
    }
    TextField {
        id:txtPassword
        width: parent.width *0.3
        anchors.centerIn: parent
        placeholderText: qsTr("Enter Password")
        onAccepted: {
            checkLogin(txtPassword.text)
             ApplicationWindow.close = true
        }
        onFocusChanged: {
            passwordKeyboard.visible = true
        }

    }

    // vitrual keyboad
    InputPanel {
        id: passwordKeyboard
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        visible: false
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
    MessageDialog {
        visible: false
        id: messageErrors
        title: "Login filed!!!"
        text: "Click 'OK' to quit application!"
        onAccepted: {
            Qt.quit()
        }
    }

    function checkLogin(nameCheck)
    {

        if(dbManager.personExists(nameCheck))
        {
            swipeView.visible = true
            tabBar.visible = true
            txtPassword.visible = false
            passwordKeyboard.visible = false
        }
        else
        {
            messageErrors.visible = true;
        }
    }
}


