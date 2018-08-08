import QtQuick 2.4
GroundFloorForm {
    //property bool isClose: false
    id:groundFloors
    //    Rectangle {
    //    id: root
    //    }

    Timer{
        id:timer
        interval: 10000; running: true; repeat: true
        onTriggered:{
           console.log("Lock Screen")

            //==== show other page
            //               swipeView.visible = false
            //               var component = Qt.createComponent("LockScreen.qml")
            //               var demo = component.createObject(root)
            //               demo.show()
            //====/show other page


          groundFloors.visible = true
          mainWindow.show()
          demoGif.visible = true
          swipeView.visible = false
          txtPassword.visible = false
          txtPassword.text = ""
          passwordKeyboard.visible = false
        }
    }
    Component.onCompleted: {
        console.log("run component")
    }

    //window kitchen
    slider1.onValueChanged: {
        var closeUrl = "../Downloads/imageQt/window-white.png"
        var openUrl = "../Downloads/imageQt/window-blue.png"
        changeBackground(windowIcon,closeUrl,openUrl,slider1,windowStatus)
    }
    table.onClicked: {
        var enableUrl = "../Downloads/imageQt/lamp-blue.png"
        var disableUrl = "../Downloads/imageQt/lamp-white.png"
        toggleBtn(table,tableKitChenIcon,enableUrl,disableUrl,undefined,1)
    }
    //ceiling kitchen
    ceilingKitChen.onClicked: {
        var enableUrl = "../Downloads/imageQt/ceiling-blue.png"
        var disableUrl = "../Downloads/imageQt/ceiling-white.png"
        toggleBtn(table,ceilingKitChenIcon,enableUrl,disableUrl,undefined,2)
    }
    //fence kitchen
    fence.onClicked: {
        var enableUrl = "../Downloads/imageQt/fence-blue.png"
        var disableUrl = "../Downloads/imageQt/fence-white.png"
        toggleBtn(fence,fenceIcon,enableUrl,disableUrl)
    }
    //controlUp
    table2.onClicked: {
        var enableUrl = "../Downloads/imageQt/fence-blue.png"
        var disableUrl = "../Downloads/imageQt/fence-white.png"
        toggleBtn(table2,table2KitchenIcon,enableUrl,disableUrl)
    }
    //table living
    slider.onValueChanged: {
        var closeUrl = "../Downloads/imageQt/restaurant_white.png"
        var openUrl = "../Downloads/imageQt/restaurant_blue.png"
        changeBackground(livingTempIcon,closeUrl,openUrl,slider)
    }
    //window living
    slider2.onValueChanged: {
        var closeUrl = "../Downloads/imageQt/window-white.png"
        var openUrl = "../Downloads/imageQt/window-blue.png"
        changeBackground(livingWindowIcon,closeUrl,openUrl,slider2,livingWindowStatus)
    }
    door1Living.onClicked: {
        var enableUrl = "../Downloads/imageQt/fence-blue.png"
        var disableUrl = "../Downloads/imageQt/fence-white.png"
        toggleBtn(door1Living,door1LivingIcon,enableUrl,disableUrl)
    }
    door2Living.onClicked: {
        var enableUrl = "../Downloads/imageQt/fence-blue.png"
        var disableUrl = "../Downloads/imageQt/fence-white.png"
        toggleBtn(door2Living,door2LivingIcon,enableUrl,disableUrl)
    }

    //window bath
    slider3.onValueChanged: {
        var closeUrl = "../Downloads/imageQt/window-white.png"
        var openUrl = "../Downloads/imageQt/window-blue.png"
        changeBackground(windowBathRoom2Icon,closeUrl,openUrl,slider3,windowBathRoom2Status)
    }
    ceilingBath.onClicked: {
        var enableUrl = "../Downloads/imageQt/ceiling-blue.png"
        var disableUrl = "../Downloads/imageQt/ceiling-white.png"
        toggleBtn(ceilingBath,ceilingBathIcon,enableUrl,disableUrl)
    }
    bathDoor1.onClicked:{
        var enableUrl = "../Downloads/imageQt/fence-blue.png"
        var disableUrl = "../Downloads/imageQt/fence-white.png"
        toggleBtn(bathDoor1,bathDoor1Icon,enableUrl,disableUrl)
    }
    bathDoor2.onClicked:{
        var enableUrl = "../Downloads/imageQt/fence-blue.png"
        var disableUrl = "../Downloads/imageQt/fence-white.png"
        toggleBtn(bathDoor2,bathDoor2Icon,enableUrl,disableUrl)
    }
    mirrorBathRoom2.onClicked: {
        var enableUrl = "../Downloads/imageQt/wc-blue.png"
        var disableUrl = "../Downloads/imageQt/wc-white.png"
        toggleBtn(mirrorBathRoom2,mirrorBathRoom2Icon,enableUrl,disableUrl)
    }

    //Corridor
    corridorLight.onClicked: {
        var enableUrl = "../Downloads/imageQt/chandelier-blue.png"
        var disableUrl = "../Downloads/imageQt/chandelier-white.png"
        toggleBtn(corridorLight,corridorLightIcon,enableUrl,disableUrl)
    }
    corridorTree.onClicked: {
        var enableUrl = "../Downloads/imageQt/tree-blue.png"
        var disableUrl = "../Downloads/imageQt/tree-white.png"
        toggleBtn(corridorTree,corridorTreeIcon,enableUrl,disableUrl)
    }
    corridorFence.onClicked: {
        var enableUrl = "../Downloads/imageQt/fence-blue.png"
        var disableUrl = "../Downloads/imageQt/fence-white.png"
        toggleBtn(corridorFence,corridorFenceIcon,enableUrl,disableUrl)
    }
    frontDoor.onClicked: {
        var enableUrl = "../Downloads/imageQt/door-blue.png"
        var disableUrl = "../Downloads/imageQt/door-white.png"
        toggleBtn(frontDoor,frontDoorIcon,enableUrl,disableUrl,frontDoorStatus)

    }
    allLights.onClicked: {
        var enableUrlLight = "../Downloads/imageQt/chandelier-blue.png"
        var disableUrlLight = "../Downloads/imageQt/chandelier-white.png"
        var enableUrlTree = "../Downloads/imageQt/tree-blue.png"
        var disableUrlTree = "../Downloads/imageQt/tree-white.png"
        var enableUrlFence = "../Downloads/imageQt/tree-blue.png"
        var disableUrlFence = "../Downloads/imageQt/tree-white.png"
        if(allLights.state == "off")
        {
            allLights.state = "on"
            corridorLightIcon.source = disableUrlLight
            corridorLightIcon.opacity = 0.2
            corridorTreeIcon.source  = disableUrlTree
            corridorTreeIcon.opacity = 0.2
            corridorFenceIcon.source = disableUrlFence
            corridorFenceIcon.opacity = 0.2
            allLightsLabel.text = qsTr("TURN ALL ON")
        }
        else
        {
            allLights.state = "off"
            corridorLightIcon.source = enableUrlLight
            corridorLightIcon.opacity = 1
            corridorTreeIcon.source  = enableUrlTree
            corridorTreeIcon.opacity = 1
            corridorFenceIcon.source = enableUrlFence
            corridorFenceIcon.opacity = 1
            allLightsLabel.text = qsTr("TURN ALL OFF")
        }
    }



    function changeBackground(id,closeUrl,openUrl,item,status)
    {
        if(item.value == item.to){
            id.source = openUrl
            id.opacity = 1
            if(typeof(status) == "object"){
                status.text = "Open"
            }
            timer.restart()

        }
        else if(item.value == 0)
        {
            id.source = closeUrl
            id.opacity = 0.2
            if(typeof(status) == "object"){
                status.text = "Close"
            }
            timer.restart()
        }
        else if(item.value == (item.to)/2)
        {
            id.source = closeUrl
            id.opacity = 0.2
            if(typeof(status) == "object"){
                status.text = "Half"
            }
            timer.restart()
        }
        else
        {
           id.opacity = 0.2
           id.source = closeUrl
           if(typeof(status) == "object"){
                var ratio = Math.round((item.value/item.to)*100)
                status.text = ratio + " %"
           }
           timer.restart()
        }
    }


    function toggleBtn(id,item,enableUrl,disableUrl,status,gpio)
    {
        if(id.checkable)
        {
            id.checkable = false
            item.source = enableUrl
            item.opacity = 1
            if(typeof(status) == "object")
            {
                status.text = "Open"
            }
            //controll gpio
            if(typeof(gpio) != "undefined")
            {
                 console.log(backgroundChanger.demo2(gpio))

            }
            timer.restart()
        }
        else
        {
            id.checkable = true
            item.source = disableUrl
            item.opacity = 0.2
            if(typeof(status) == "object")
            {
                status.text = "Close"
            }
            //controll gpio
            if(typeof(gpio) != "undefined")
            {
                console.log(backgroundChanger.demo2(gpio))
            }
            timer.restart()
        }
    }
}
