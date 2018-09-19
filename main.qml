import QtQuick 2.9
import QtQuick.Controls 1.1
import QtQuick.Dialogs 1.2

ApplicationWindow {
    property string baseAppName: qsTr("Dialog demo")
    property string folderToOpenUrl: " "
    visible: true
    width: 640
    height: 480
    title: baseAppName + " " + folderToOpenUrl

    Action {
        id: quitActionId
        text: qsTr("Exit")
        iconSource: "Images/help.png"
        onTriggered: Qt.quit()
    }
    Action {
        id: folderOpenActionId
        text: "Open Folder..."
        iconSource: "Images/open-archive.png"
        onTriggered: folderDialogId.open()
    }

    menuBar: MenuBar {
        Menu {
            title: qsTr("File")
            MenuItem {
                action: quitActionId
            }
        }
    }

    toolBar: ToolBar {
        Row {
            ToolButton {
                action: quitActionId
            }
            ToolButton {
                action: folderOpenActionId
            }
        }
    }

    FileDialog {
        id: folderDialogId
        selectFolder: true
        title: baseAppName
        modality: Qt.WindowModal
        onAccepted: folderToOpenUrl = fileUrl
        onRejected: folderToOpenUrl = "folder not selected"
    }
}
