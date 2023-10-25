import QtQuick 2.5
import QtQuick.Controls 2.2
import QtQuick.Window 2.2
import QtQuick.Layouts

import "qrc:/qtlegal/"  //QTLEGAL LGPL WIDGET

Window {
    id: window
    visible: true
    width: 320
    height: 480

    // Demo code goes here
    StackView {
        id: mainLayout
        anchors.fill: parent
        Column {
            anchors.fill: parent

            Rectangle {
                color: 'green'
                implicitWidth: 200
                implicitHeight: 200
            }
            Rectangle {
                color: 'red'
                implicitWidth: 300
                implicitHeight: 200
                MouseArea {
                    anchors.fill: parent
                    onClicked: mainLayout.push(licenseBrowser)
                }
            }
        }
    }

    Component{
        id:licenseBrowser //QTLEGAL LGPL WIDGET
        LicenseBrowser{
            extraLicenseText:"<p>"+qsTr("CREDITS")+"</p><p>" +
"<p>Dianiux Innova SL <p><a  href=\"https://www.dianiuxinnova.com\">https://www.dianiuxinnova.com</a></p>"

            urlBinaries:"https://github.com/dianiux-innova/qtlgplapptemplateExamples" //"qrc:/release.zip"
            onBack: {
                console.log("POP OUT ....")
                // We can pop for depth larger than 1 or use clear if the depth is 1 or lower
                // mainLayout.pop()
                mainLayout.clear() //back button
            }
        }
    }



}
