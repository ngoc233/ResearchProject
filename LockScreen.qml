import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.VirtualKeyboard 2.2
import QtQuick.Controls 2.2
import QtQuick.Dialogs 1.2


Page{
    id:lockScreen
    visible: true
    width: 1024
    height: 860
    title: qsTr("lock screen")
    AnimatedImage{
        id:demoGif
        source: "../Downloads/imageQt/banana.gif"
        width: parent.width
        height: parent.height
    }
}
