import QtQuick 2.4
import QtQuick.Controls 2.2

Page {
    id: groundFloors
    width: 1024
    height: 860
    padding: 22
    font.bold: true
    font.capitalization: Font.AllLowercase
    title: "Ground Floor"

    //kitchen
    property alias windowStatus: windowStatus
    property alias windowIcon: windowIcon
    property alias slider1: slider1
    property alias slider: slider
    property alias rectangle: rectangle
    property alias table: table
    property alias tableKitChenIcon: tableKitChenIcon
    property alias ceilingKitChenIcon: ceilingKitChenIcon
    property alias fence: fence
    property alias fenceIcon: fenceIcon
    property alias table2: table2
    property alias table2KitchenIcon: table2KitchenIcon
    //livingf
    property alias livingWindowIcon: livingWindowIcon
    property alias livingRoom1: livingRoom1
    property alias livingWindowStatus: livingWindowStatus
    property alias labelCeiling: labelCeiling
    property alias ceilingKitChen: ceilingKitChen
    property alias titleKitchen: titleKitchen
    property alias livingTempIcon: livingTempIcon
    property alias door1Living: door1Living
    property alias door1LivingIcon: door1LivingIcon
    property alias door2Living: door2Living
    property alias door2LivingIcon: door2LivingIcon
    property alias ceilingBath: ceilingBath
    property alias ceilingBathIcon: ceilingBathIcon
    property alias slider2: slider2
    //bath
    property alias windowBathRoom2Icon: windowBathRoom2Icon
    property alias windowBathRoom2Status: windowBathRoom2Status
    property alias mirrorBathRoom2: mirrorBathRoom2
    property alias mirrorBathRoom2Icon: mirrorBathRoom2Icon
    property alias bathDoor1: bathDoor1
    property alias bathDoor1Icon: bathDoor1Icon
    property alias bathDoor2: bathDoor2
    property alias bathDoor2Icon: bathDoor2Icon
    property alias slider3: slider3
    //Corridor
    property alias corridorLight: corridorLight
    property alias corridorLightIcon: corridorLightIcon
    property alias corridorTree: corridorTree
    property alias corridorTreeIcon: corridorTreeIcon
    property alias corridorFence: corridorFence
    property alias corridorFenceIcon: corridorFenceIcon
    property alias frontDoor: frontDoor
    property alias frontDoorIcon: frontDoorIcon
    property alias frontDoorStatus: frontDoorStatus
    property alias allLights: allLights
    property alias allLightsLabel: allLightsLabel

    //layout 1
    Rectangle {
        id: rectangle
        x: 0
        y: 0
        width: parent.width
        height: parent.height * 0.7
        color: "#000000"
        //kichen
        Rectangle {
            id: kitChen
            y: 0
            x: 0
            width: parent.width * 0.20
            height: parent.height * 0.9
            color: "#ffffff"
            border.width: 6
            border.color: "#000000"
            //title
            Rectangle {
                id: titleKitchen
                x: 0
                y: 0
                width: parent.width
                height: parent.height * 0.2
                color: "#636960"
                border.width: 6
                border.color: "#000000"

                Label {
                    id: labelKitchen
                    color: "#f7a4a4"
                    text: qsTr("Kitchen")
                    font.capitalization: Font.AllUppercase
                    anchors.fill: parent
                    fontSizeMode: Text.VerticalFit
                    topPadding: -2
                    font.weight: Font.ExtraLight
                    font.pixelSize: 16
                    font.family: "Tahoma"
                    verticalAlignment: Text.AlignVCenter
                    transformOrigin: Item.Center
                    font.bold: true
                    renderType: Text.NativeRendering
                    horizontalAlignment: Text.AlignHCenter
                }
            }
            //room1
            Rectangle {
                id: kitChenRoom1
                x: 0
                y: titleKitchen.height
                width: parent.width
                height: parent.height * 0.4
                color: "#ffffff"
                border.width: 6
                //Ceiling
                Button {
                    id: ceilingKitChen
                    x: 0
                    y: 0
                    checkable: true
                    width: parent.width * 1 / 3
                    height: parent.height
                    background: Rectangle {
                        color: "#223344"
                        border.width: 6
                    }
                    Image {
                        id: ceilingKitChenIcon
                        height: 60
                        anchors.leftMargin: 13
                        anchors.topMargin: 34
                        anchors.rightMargin: 13
                        anchors.bottomMargin: 29
                        anchors.fill: parent
                        source: "../Downloads/imageQt/ceiling-white.png"
                        opacity: 0.2
                    }
                    //label ceiling
                    Label {
                        id: labelCeiling
                        x: parent.width * 0.1
                        y: parent.height * 0.3
                        color: "#ffffff"
                        text: qsTr("Ceiling")
                        font.capitalization: Font.Capitalize
                        font.pixelSize: 15
                        font.family: "Times New Roman"
                    }
                }

                Rectangle {
                    id: divecsKitChenRoom2
                    x: ceilingKitChen.width
                    y: 0
                    color: "#333366"
                    border.width: 5
                    width: parent.width * 0.66
                    height: parent.height

                    //Temperature
                    Rectangle {
                        id: temperature
                        x: 0
                        y: 0
                        width: parent.width
                        height: parent.height * 0.5
                        color: "#223344"
                        border.width: 6
                        Image {
                            id: kitchenTempIcon
                            anchors.bottomMargin: 8
                            anchors.leftMargin: 8
                            anchors.rightMargin: 64
                            anchors.topMargin: 8
                            anchors.fill: parent
                            source: "../Downloads/imageQt/tempareture-white.png"
                            opacity: 0.2
                        }
                        //label temperature
                        Label {
                            id: labelTemp
                            x: 25
                            y: 16
                            text: qsTr("Temperature")
                            verticalAlignment: Text.AlignVCenter
                            horizontalAlignment: Text.AlignHCenter
                            font.capitalization: Font.Capitalize
                            font.pixelSize: 14
                            color: "#ffffff"
                        }
                        Label {
                            id: tempNumber
                            x: 35
                            y: 46
                            text: qsTr("22.4°C")
                            verticalAlignment: Text.AlignVCenter
                            horizontalAlignment: Text.AlignHCenter
                            font.capitalization: Font.AllUppercase
                            font.pixelSize: 24
                            color: "#0db9f0"
                        }
                    }

                    //Fence
                    Button {
                        id: fence
                        x: 0
                        y: temperature.height
                        checkable: false
                        width: parent.width * 0.49
                        height: parent.height * 0.5
                        background: Rectangle {
                            color: "#223344"
                            border.color: "#000000"
                            border.width: 6
                        }

                        Image {
                            id: fenceIcon
                            anchors.leftMargin: 13
                            anchors.topMargin: 34
                            anchors.rightMargin: 13
                            anchors.bottomMargin: 21
                            anchors.fill: parent
                            source: "../Downloads/imageQt/fence-blue.png"
                            opacity: 1
                        }
                    }

                    //control up
                    Button {
                        id: table2
                        x: fence.width
                        y: temperature.height
                        checkable: false
                        background: Rectangle {
                            color: "#223344"
                            border.width: 6
                        }

                        width: parent.width * 0.5
                        height: parent.height * 0.5
                        Image {
                            id: table2KitchenIcon
                            anchors.leftMargin: 13
                            anchors.topMargin: 34
                            anchors.rightMargin: 13
                            anchors.bottomMargin: 21
                            anchors.fill: parent
                            source: "../Downloads/imageQt/fence-blue.png"
                            opacity: 1
                        }
                    }
                }
            }
            //room2
            Rectangle {
                id: kitChenRoom2
                x: 0
                y: kitChenRoom1.y + kitChenRoom1.height
                width: parent.width
                height: parent.height * 0.4
                color: "#ffffff"
                //table
                Button {
                    id: table
                    x: 0
                    y: 0
                    width: parent.width * 1 / 3
                    height: parent.height
                    checkable: true
                    background: Rectangle {
                        color: "#223344"
                        border.color: "#000000"
                        border.width: 6
                    }
                    Image {
                        id: tableKitChenIcon
                        height: 60
                        anchors.leftMargin: 13
                        anchors.topMargin: 58
                        anchors.rightMargin: 13
                        anchors.bottomMargin: 77
                        anchors.fill: parent
                        source: "../Downloads/imageQt/lamp-white.png"
                        opacity: 0.2
                    }

                    Label {
                        id: tableKitChenLabel
                        x: 8
                        y: 58
                        width: 49
                        height: 21
                        color: "#ffffff"
                        text: qsTr("Ceiling")
                        font.family: "Times New Roman"
                        font.capitalization: Font.Capitalize
                        font.pixelSize: 15
                    }
                }
                //window
                Rectangle {
                    id: window
                    x: table.width
                    y: 0
                    width: parent.width * 1 / 3
                    height: parent.height
                    color: "#223344"
                    border.width: 6
                    Image {
                        id: windowIcon
                        x: 14
                        y: 58
                        anchors.bottomMargin: 79
                        anchors.leftMargin: 15
                        anchors.rightMargin: 15
                        anchors.topMargin: 57
                        anchors.fill: parent
                        source: "../Downloads/imageQt/window-white.png"
                        opacity: 0.2
                    }

                    Label {
                        id: windowLabel
                        x: 9
                        y: 71
                        width: 46
                        height: 20
                        color: "#e6e6e6"
                        text: qsTr("Window")
                        font.bold: true
                        font.pixelSize: 15
                        font.capitalization: Font.Capitalize
                        font.weight: Font.Normal
                    }

                    Label {
                        id: windowStatus
                        x: 12
                        y: 94
                        color: "#0db9f0"
                        text: qsTr("open")
                        font.bold: true
                        font.weight: Font.ExtraLight
                        font.pixelSize: 15
                    }
                }

                //controll devices
                Rectangle {
                    id: controlDevices
                    x: table.width + window.width
                    y: 0
                    width: parent.width * 1 / 3
                    height: parent.height
                    color: "#223344"
                    border.width: 6
                    border.color: "#000000"

                    Slider {
                        id: slider1
                        x: -42
                        y: 83
                        width: 150
                        stepSize: 0
                        to: 20
                        rotation: -90
                        value: 0
                        background: Rectangle {
                            x: slider1.leftPadding
                            y: slider1.topPadding + slider1.availableHeight / 2 - height / 2
                            implicitWidth: 50
                            implicitHeight: 6
                            width: slider1.availableWidth
                            height: implicitHeight
                            radius: 2
                            color: "#bdbebf"

                            Rectangle {
                                width: slider1.visualPosition * parent.width
                                height: parent.height
                                color: "#0db9f0"
                                radius: 2
                            }
                        }
                    }
                }
            }
        }
        //living
        Rectangle {
            id: living
            x: kitChen.width + parent.width * 0.05
            y: 0
            width: parent.width * 0.50
            height: parent.height * 0.9
            color: "#ffffff"
            //title
            Rectangle {
                id: titleLiving
                x: 0
                y: 0
                width: parent.width
                height: parent.height * 0.2
                color: "#636960"
                border.width: 6
                border.color: "#000000"
                Label {
                    id: labelLiving
                    color: "#23eaea"
                    text: qsTr("Living")
                    padding: 3
                    font.weight: Font.Light
                    font.capitalization: Font.AllUppercase
                    anchors.fill: parent
                    font.family: "Times New Roman"
                    verticalAlignment: Text.AlignVCenter
                    transformOrigin: Item.Center
                    font.pointSize: 12
                    font.bold: true
                    renderType: Text.NativeRendering
                    horizontalAlignment: Text.AlignHCenter
                }
            }

            //room1
            Rectangle {
                id: livingRoom1
                x: 0
                y: titleLiving.height
                width: parent.width * 0.5
                height: parent.height * 0.8
                color: "#223344"
                border.width: 6
                Image {
                    id: livingTempIcon
                    anchors.leftMargin: 47
                    anchors.topMargin: 102
                    anchors.rightMargin: 42
                    anchors.bottomMargin: 104
                    anchors.fill: parent
                    source: "../Downloads/imageQt/restaurant_white.png"
                    opacity: 0.2
                }
                Slider {
                    id: slider
                    y: 173
                    width: 240
                    height: 50
                    to: 20
                    anchors.rightMargin: -9
                    anchors.leftMargin: 9
                    anchors.topMargin: 170
                    anchors.right: parent.right
                    anchors.left: parent.left
                    anchors.top: parent.top
                    stepSize: 0
                    spacing: 1
                    font.letterSpacing: -0.2
                    rotation: -90
                    value: 0
                    font.weight: Font.ExtraLight
                    background: Rectangle {
                        x: slider.leftPadding
                        y: slider.topPadding + slider.availableHeight / 2 - height / 2
                        implicitWidth: 50
                        implicitHeight: 6
                        width: slider.availableWidth
                        height: implicitHeight
                        radius: 2
                        color: "#bdbebf"

                        Rectangle {
                            x: 0
                            y: 0
                            width: slider.visualPosition * parent.width
                            height: parent.height
                            color: "#0db9f0"
                            radius: 2
                        }
                    }
                }

                Label {
                    id: label
                    color: "#ffffff"
                    text: "Table"
                    font.capitalization: Font.Capitalize
                    anchors.bottom: slider.top
                    anchors.right: parent.right
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.bottomMargin: -328
                    anchors.topMargin: parent.height * 0.1
                    verticalAlignment: Text.AlignTop
                    horizontalAlignment: Text.AlignHCenter
                    font.pixelSize: 16
                }
            }
            //room2
            Rectangle {
                id: livingRoom2
                x: livingRoom1.width
                y: titleLiving.height
                color: "#223344"
                width: parent.width * 0.5
                height: parent.height * 0.80
                border.width: 6
                // livingroom2 devices
                Rectangle {
                    id: livingDevice1
                    x: 0
                    y: 0
                    color: "#223344"
                    width: parent.width
                    height: parent.height * 0.5
                    //living tempareture
                    Rectangle {
                        id: livingTemp
                        x: 0
                        y: 0
                        width: parent.width
                        height: parent.height * 0.5
                        color: "#223344"
                        border.width: 6
                        Image {
                            id: tempBG
                            anchors.leftMargin: 23
                            anchors.topMargin: 8
                            anchors.rightMargin: 145
                            anchors.bottomMargin: 8
                            anchors.fill: parent
                            source: "../Downloads/imageQt/tempareture-white.png"
                            opacity: 0.2
                        }

                        Label {
                            id: labelTemp1
                            x: 72
                            y: 17
                            color: "#ffffff"
                            text: qsTr("Temperature")
                            font.capitalization: Font.Capitalize
                            font.pixelSize: 14
                        }

                        Label {
                            id: tempNumber1
                            x: 72
                            y: 46
                            color: "#0db9f0"
                            text: qsTr("22.1°C")
                            font.capitalization: Font.AllUppercase
                            font.pixelSize: 24
                        }
                    }
                    //door living
                    Rectangle {
                        id: doorLiving
                        x: 0
                        y: livingTemp.height
                        width: parent.width
                        height: parent.height * 0.5
                        color: "#223344"
                        border.width: 6
                        //door1 living
                        Button {
                            id: door1Living
                            x: 0
                            y: 0
                            checkable: false
                            width: parent.width * 0.5
                            height: parent.height
                            background: Rectangle {
                                color: "#223344"
                                border.width: 6
                            }

                            Image {
                                id: door1LivingIcon
                                anchors.leftMargin: 13
                                anchors.topMargin: 34
                                anchors.rightMargin: 13
                                anchors.bottomMargin: 21
                                anchors.fill: parent
                                source: "../Downloads/imageQt/fence-blue.png"
                                opacity: 1
                            }
                        }
                        //door 2 living
                        Button {
                            id: door2Living
                            x: door1Living.width
                            y: 0
                            checkable: true
                            width: parent.width * 0.5
                            height: parent.height
                            background: Rectangle {
                                color: "#223344"
                                border.width: 6
                            }

                            Image {
                                id: door2LivingIcon
                                anchors.leftMargin: 13
                                anchors.topMargin: 34
                                anchors.rightMargin: 13
                                anchors.bottomMargin: 21
                                anchors.fill: parent
                                source: "../Downloads/imageQt/fence-white.png"
                                opacity: 0.2
                            }
                        }
                    }
                }
                //living device2
                Rectangle {
                    id: livingDevice2
                    x: 0
                    y: livingDevice1.height
                    color: "#223344"
                    width: parent.width
                    height: parent.height * 0.5
                    //living window
                    Rectangle {
                        id: livingWindow
                        x: 0
                        y: 0
                        width: parent.width * 0.5
                        height: parent.height
                        color: "#223344"
                        border.width: 6
                        Image {
                            id: livingWindowIcon
                            anchors.bottomMargin: 61
                            anchors.leftMargin: 32
                            anchors.rightMargin: 34
                            anchors.topMargin: 71
                            anchors.fill: parent
                            source: "../Downloads/imageQt/window-white.png"
                            opacity: 0.2
                        }

                        Label {
                            id: livingWindowLabel
                            x: 25
                            y: 65
                            width: 46
                            height: 0
                            color: "#e6e6e6"
                            text: qsTr("Window")
                            font.capitalization: Font.Capitalize
                            font.bold: true
                            font.weight: Font.Normal
                            font.pixelSize: 15
                        }

                        Label {
                            id: livingWindowStatus
                            x: 32
                            y: 94
                            color: "#0db9f0"
                            text: qsTr("close")
                            font.bold: true
                            font.pixelSize: 15
                            font.weight: Font.ExtraLight
                        }
                    }
                    //window control
                    Rectangle {
                        id: windowControl
                        y: 0
                        x: livingWindow.width
                        width: parent.width * 0.5
                        height: parent.height
                        color: "#223344"
                        border.width: 6

                        Slider {
                            id: slider2
                            x: -19
                            y: 83
                            width: 150
                            stepSize: 0
                            to: 20
                            value: 0
                            rotation: -90
                            background: Rectangle {
                                x: slider2.leftPadding
                                y: slider2.topPadding + slider2.availableHeight / 2 - height / 2
                                implicitWidth: 50
                                implicitHeight: 6
                                width: slider2.availableWidth
                                height: implicitHeight
                                radius: 2
                                color: "#bdbebf"

                                Rectangle {
                                    width: slider2.visualPosition * parent.width
                                    height: parent.height
                                    color: "#0db9f0"
                                    radius: 2
                                }
                            }
                        }
                    }
                }
            }
        }
        //bath
        Rectangle {
            id: bath
            x: living.width + kitChen.width + parent.width * 0.05 * 2
            y: 0
            width: parent.width * 0.20
            height: parent.height * 0.9
            color: "#ffffff"
            border.width: 6
            border.color: "#000000"
            Rectangle {
                id: titleBath
                x: 0
                y: 0
                width: parent.width
                height: parent.height * 0.2
                color: "#636960"
                border.width: 6
                border.color: "#000000"
                Label {
                    id: labelBath
                    color: "#e866f0"
                    text: qsTr("Bath")
                    font.capitalization: Font.AllUppercase
                    anchors.fill: parent
                    font.family: "Tahoma"
                    verticalAlignment: Text.AlignVCenter
                    transformOrigin: Item.Center
                    font.pointSize: 12
                    font.bold: true
                    renderType: Text.NativeRendering
                    horizontalAlignment: Text.AlignHCenter
                }
            }
            //room1
            Rectangle {
                id: bathRoom1
                x: 0
                y: titleBath.height
                color: "#223344"
                width: parent.width
                height: parent.height * 0.4
                border.width: 6
                //ceiling
                Button {
                    id: ceilingBath
                    x: 0
                    y: 0
                    checkable: false
                    width: parent.width * 1 / 3
                    height: parent.height
                    background: Rectangle {
                        color: "#223344"
                        border.width: 6
                    }

                    Image {
                        id: ceilingBathIcon
                        height: 60
                        anchors.leftMargin: 13
                        anchors.topMargin: 55
                        anchors.rightMargin: 13
                        anchors.bottomMargin: 43
                        anchors.fill: parent
                        source: "../Downloads/imageQt/ceiling-blue.png"
                        opacity: 1
                    }

                    Label {
                        id: labelCeiling1
                        x: 13
                        y: 74
                        width: 39
                        height: 22
                        color: "#ffffff"
                        text: qsTr("Ceiling")
                        font.family: "Times New Roman"
                        font.capitalization: Font.Capitalize
                        font.pixelSize: 14
                    }
                }
                //bath temperature
                Rectangle {
                    id: bathTemp
                    x: ceilingBath.width
                    y: 0
                    height: parent.height * 0.5
                    width: parent.width * 2 / 3
                    color: "#223344"
                    border.width: 6
                    Image {
                        id: bathTempIcon
                        y: 5
                        width: 77
                        height: 87
                        anchors.leftMargin: 18
                        anchors.topMargin: 8
                        anchors.rightMargin: 50
                        anchors.bottomMargin: 15
                        anchors.fill: parent
                        source: "../Downloads/imageQt/tempareture-white.png"
                        opacity: 0.2
                    }

                    Label {
                        id: tempNumber2
                        x: 34
                        y: 49
                        color: "#0db9f0"
                        text: qsTr("21.5°C")
                        font.capitalization: Font.AllUppercase
                        font.pixelSize: 24
                    }

                    Label {
                        id: labelTemp2
                        x: 22
                        y: 26
                        color: "#ffffff"
                        text: qsTr("Temperature")
                        font.capitalization: Font.Capitalize
                        font.pixelSize: 14
                    }
                }
                //bath door
                Rectangle {
                    id: bathDoor
                    x: ceilingBath.width
                    y: bathTemp.height
                    height: parent.height * 0.5
                    width: parent.width * 2 / 3
                    color: "#223344"
                    border.width: 6
                    //bath door1
                    Button {
                        id: bathDoor1
                        x: 0
                        y: 0
                        checkable: true
                        width: parent.width * 0.5
                        height: parent.height
                        background: Rectangle {
                            color: "#223344"
                            border.width: 6
                        }

                        Image {
                            id: bathDoor1Icon
                            anchors.leftMargin: 13
                            anchors.topMargin: 34
                            anchors.rightMargin: 13
                            anchors.bottomMargin: 21
                            anchors.fill: parent
                            source: "../Downloads/imageQt/fence-white.png"
                            opacity: 0.2
                        }
                    }
                    //bath door2
                    Button {
                        id: bathDoor2
                        x: bathDoor1.width
                        y: 0
                        checkable: true
                        width: parent.width * 0.5
                        height: parent.height
                        background: Rectangle {
                            color: "#223344"
                            border.width: 6
                        }
                        Image {
                            id: bathDoor2Icon
                            anchors.leftMargin: 13
                            anchors.topMargin: 34
                            anchors.rightMargin: 13
                            anchors.bottomMargin: 21
                            anchors.fill: parent
                            source: "../Downloads/imageQt/fence-white.png"
                            opacity: 0.2
                        }
                    }
                }
            }
            //room2
            Rectangle {
                id: bathRoom2
                x: 0
                y: titleBath.height + bathRoom1.height
                color: "#223344"
                border.color: "#000000"
                width: parent.width
                height: parent.height * 0.4
                border.width: 6
                //Mirror
                Button {
                    id: mirrorBathRoom2
                    x: 0
                    y: 0
                    checkable: true
                    width: parent.width * 1 / 3
                    height: parent.height
                    background: Rectangle {
                        color: "#223344"
                        border.color: "#000000"
                        border.width: 6
                    }

                    Image {
                        id: mirrorBathRoom2Icon
                        anchors.leftMargin: 13
                        anchors.topMargin: 58
                        anchors.rightMargin: 13
                        anchors.bottomMargin: 55
                        anchors.fill: parent
                        source: "../Downloads/imageQt/wc-white.png"
                        opacity: 0.2
                    }

                    Label {
                        id: labelCeiling2
                        x: 13
                        y: 67
                        width: 39
                        height: 22
                        color: "#ffffff"
                        text: qsTr("Ceiling")
                        font.family: "Times New Roman"
                        font.capitalization: Font.Capitalize
                        font.pixelSize: 14
                    }
                }
                //window bath room2
                Rectangle {
                    id: windowBathRoom2
                    x: mirrorBathRoom2.width
                    y: 0
                    width: parent.width * 1 / 3
                    height: parent.height
                    color: "#223344"
                    border.color: "#000000"
                    border.width: 6
                    Image {
                        id: windowBathRoom2Icon
                        x: 14
                        y: 58
                        anchors.bottomMargin: 79
                        anchors.leftMargin: 15
                        anchors.rightMargin: 15
                        anchors.topMargin: 57
                        anchors.fill: parent
                        source: "../Downloads/imageQt/window-blue.png"
                        opacity: 1
                    }

                    Label {
                        id: windowBathRoom2Status
                        x: 13
                        y: 94
                        color: "#0db9f0"
                        text: qsTr("open")
                        font.bold: true
                        font.weight: Font.ExtraLight
                        font.pixelSize: 13
                    }

                    Label {
                        id: windowBathRoom2Label
                        x: 8
                        y: 65
                        width: 46
                        height: 0
                        color: "#e6e6e6"
                        text: qsTr("Window")
                        font.capitalization: Font.Capitalize
                        font.bold: true
                        font.pixelSize: 12
                        font.weight: Font.Normal
                    }
                }
                //controll bath room2
                Rectangle {
                    id: controlBathRoom2
                    x: mirrorBathRoom2.width + windowBathRoom2.width
                    y: 0
                    width: parent.width * 1 / 3
                    height: parent.height
                    color: "#223344"
                    border.color: "#000000"
                    border.width: 6

                    Slider {
                        id: slider3
                        x: -47
                        y: 83
                        width: 150
                        stepSize: 0
                        to: 20
                        value: 20
                        rotation: -90
                        background: Rectangle {
                            x: slider3.leftPadding
                            y: slider3.topPadding + slider3.availableHeight / 2 - height / 2
                            implicitWidth: 50
                            implicitHeight: 6
                            width: slider3.availableWidth
                            height: implicitHeight
                            radius: 2
                            color: "#bdbebf"

                            Rectangle {
                                width: slider3.visualPosition * parent.width
                                height: parent.height
                                color: "#0db9f0"
                                radius: 2
                            }
                        }
                    }
                }
            }
        }
    }
    //    layout 2
    Rectangle {
        id: layout2
        width: parent.width
        height: parent.height * 0.3
        x: 0
        y: rectangle.height
        color: "#000000"
        //all lights
        Button {
            id: allLights
            width: parent.width * 0.2
            height: parent.height * 0.8
            x: 0
            y: 0
            checkable: true
            background: Rectangle {
                border.color: "#000000"
                border.width: 6
                color: "#ca4e23"
            }

            Label {
                id: allLightsLabel
                color: "#ffffff"
                text: qsTr("TURN ALL OFF")
                font.capitalization: Font.Capitalize
                font.weight: Font.Light
                font.pixelSize: 16
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                anchors.fill: parent
            }
        }
        //Corridor
        Rectangle {
            id: corridor
            width: parent.width * 0.5
            height: parent.height * 0.8
            x: allLights.width + parent.width * 0.05
            y: 0
            border.color: "#000000"
            border.width: 6
            color: "#223344"
            //corridor title
            Rectangle {
                id: corridorTitle
                x: 0
                y: 0
                width: parent.width
                height: parent.height * 0.5
                border.color: "#000000"
                border.width: 6
                color: "#2c333c"

                Label {
                    id: label1
                    width: 490
                    color: "#f07566"
                    text: qsTr("Corridor")
                    font.family: "Tahoma"
                    font.pixelSize: 18
                    font.capitalization: Font.Capitalize
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    anchors.fill: parent
                }
            }
            // corridor devices
            Rectangle {
                id: corridorDevices
                width: parent.width
                height: parent.height * 0.5
                x: 0
                y: corridorTitle.height
                border.color: "#000000"
                border.width: 6
                color: "#223344"
                //light
                Button {
                    id: corridorLight
                    width: parent.width * 0.2
                    height: parent.height
                    x: 0
                    y: 0
                    checkable: false
                    background: Rectangle {
                        border.color: "#000000"
                        border.width: 6
                        color: "#223344"
                    }

                    Image {
                        id: corridorLightIcon
                        anchors.bottomMargin: 26
                        anchors.leftMargin: 25
                        anchors.rightMargin: 22
                        anchors.topMargin: 21
                        anchors.fill: parent
                        source: "../Downloads/imageQt/chandelier-white.png"
                        opacity: 0.2
                    }
                }
                //tree
                Button {
                    id: corridorTree
                    width: parent.width * 0.2
                    height: parent.height
                    checkable: false
                    x: corridorLight.width
                    y: 0
                    background: Rectangle {
                        border.color: "#000000"
                        border.width: 6
                        color: "#223344"
                    }

                    Image {
                        id: corridorTreeIcon
                        anchors.bottomMargin: 26
                        anchors.leftMargin: 25
                        anchors.rightMargin: 22
                        anchors.topMargin: 21
                        anchors.fill: parent
                        source: "../Downloads/imageQt/tree-blue.png"
                        opacity: 1
                    }
                }
                //temperature corridor
                Rectangle {
                    id: corridorTemp
                    width: parent.width * 0.4
                    height: parent.height
                    x: corridorLight.width + corridorTree.width
                    y: 0
                    border.color: "#000000"
                    border.width: 6
                    color: "#223344"
                    Image {
                        id: corridorTempIcon
                        anchors.bottomMargin: 17
                        anchors.leftMargin: 83
                        anchors.rightMargin: 52
                        anchors.topMargin: 14
                        anchors.fill: parent
                        source: "../Downloads/imageQt/tempareture-white.png"
                        opacity: 0.2
                    }

                    Label {
                        id: tempNumber3
                        x: 114
                        y: 36
                        color: "#0db9f0"
                        text: qsTr("20.7°C")
                        font.capitalization: Font.AllUppercase
                        font.pixelSize: 20
                    }

                    Label {
                        id: labelTemp3
                        color: "#ffffff"
                        text: qsTr("Temperature")
                        font.bold: true
                        font.capitalization: Font.Capitalize
                        font.weight: Font.Light
                        font.pixelSize: 14
                        anchors.bottomMargin: 27
                        anchors.leftMargin: 8
                        anchors.rightMargin: 88
                        anchors.topMargin: 27
                        anchors.fill: parent
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignHCenter
                    }
                }
                //fence corridor
                Button {
                    id: corridorFence
                    width: parent.width * 0.2
                    height: parent.height
                    x: corridorLight.width + corridorTree.width + corridorTemp.width
                    y: 0
                    background: Rectangle {
                        border.color: "#000000"
                        border.width: 6
                        color: "#223344"
                    }

                    Image {
                        id: corridorFenceIcon
                        anchors.leftMargin: 13
                        anchors.topMargin: 34
                        anchors.rightMargin: 13
                        anchors.bottomMargin: 21
                        anchors.fill: parent
                        source: "../Downloads/imageQt/fence-white.png"
                        opacity: 0.2
                    }
                }
            }
        }
        //Front Door
        Button {
            id: frontDoor
            width: parent.width * 0.2
            height: parent.height * 0.8
            x: allLights.width + corridor.width + parent.width * 0.05 * 2
            y: 0
            checkable: false
            background: Rectangle {
                border.color: "#000000"
                border.width: 6
                color: "#223344"
            }

            Image {
                id: frontDoorIcon
                height: 60
                anchors.leftMargin: 67
                anchors.topMargin: 34
                anchors.rightMargin: 44
                anchors.bottomMargin: 29
                anchors.fill: parent
                source: "../Downloads/imageQt/door-blue.png"
                opacity: 1
            }

            Label {
                id: frontDoorLabel
                color: "#ffffff"
                text: qsTr("Front Door")
                anchors.rightMargin: 39
                anchors.bottomMargin: 94
                anchors.leftMargin: 67
                anchors.topMargin: 52
                font.capitalization: Font.Capitalize
                font.pixelSize: 14
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                anchors.fill: parent
            }

            Label {
                id: frontDoorStatus
                color: "#0db9f0"
                text: qsTr("open")
                font.pixelSize: 20
                anchors.rightMargin: 44
                anchors.bottomMargin: 53
                anchors.leftMargin: 71
                anchors.topMargin: 77
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                anchors.fill: parent
            }
        }
    }
}
