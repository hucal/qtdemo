import QtQuick 2.4
import QtQuick.Controls 2.0
import QtQuick.Extras 1.4
import QtQuick.Controls.Material 2.0
import QtQuick.Layouts 1.3

Item {
    id: item1
    property alias login_button: login_button
    property alias username_field: username_field
    property alias password_field: password_field
    property alias server_field: server_field

    GridLayout {
        id: gridLayout1
        width: 400
        columnSpacing: 15
        rowSpacing: 10
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        columns: 2
        anchors.horizontalCenter: parent.horizontalCenter



        Text {
            id: username_text
            text: "Username:"
            font.pointSize: 14
        }

        TextField {
            id: username_field
            Layout.fillWidth: true
            placeholderText: "username"
            font.pointSize: 14
        }


        Text {
            id: password_text
            text: "Password:"
            font.pointSize: 14
        }

        TextField {
            id: password_field
            Layout.fillWidth: true
            placeholderText: "password"
            echoMode: TextInput.Password
            font.pointSize: 14
        }


        Text {
            id: text1
            text: qsTr("Server address:")
            font.pointSize: 14
        }

        TextField {
            id: server_field
            Layout.fillWidth: true
            font.pointSize: 12
            placeholderText: "IP"
        }



        Item {
            id: item2
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.columnSpan: 2

            Button {
                id: login_button
                text: qsTr("Login")
                enabled: false
                anchors.horizontalCenterOffset: 0
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 0
                Layout.columnSpan: 2
            }
        }

    }
}
