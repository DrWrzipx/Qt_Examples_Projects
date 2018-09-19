import QtQuick 2.9
import QtQuick.Controls 1.1

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Action {
        id: quitActionId
        text: qsTr("Exit")
        onTriggered: Qt.quit()
    }

    menuBar: MenuBar {
        Menu {
            title: qsTr("File")
            MenuItem {
                action: quitActionId
            }
        }
    }
}
