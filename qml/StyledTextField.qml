import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.2
import QtGraphicalEffects 1.0

Item {

    property string label
    property alias echoMode: textField.echoMode
    property alias placeholderText: textField.placeholderText
    property alias text: textField.text
    property alias validator: textField.validator
    property alias horizontalAlignment: textField.horizontalAlignment

    id: textFieldContainer
    height: 50
    implicitHeight: 50
    implicitWidth: parent.width
    Layout.fillWidth: true

    Column {

        Label {
            font.pixelSize: 10
            color: formLabel
            text: textField.text.length > 0 ? textField.placeholderText.valueOf(
                                                  ) : " "
        }

        TextField {
            id: textField
            Layout.topMargin: 10
            Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
            selectByMouse: true
            implicitWidth: textFieldContainer.width
            font.pixelSize: 13
            selectedTextColor: isDark() ? defaultDark : defaultLight
            Keys.onEscapePressed: textField.focus = false
            height: 40
            focus: true
            color: formText
            Material.accent: formText
            placeholderTextColor: formText
            background: Item {
                implicitWidth: parent.width
                implicitHeight: 40
                Rectangle {
                    color: formUnderline
                    height: textField.hovered || textField.activeFocus ? 2 : 1
                    width: parent.width
                    y: 31
                }
            }
        }
    }
}
