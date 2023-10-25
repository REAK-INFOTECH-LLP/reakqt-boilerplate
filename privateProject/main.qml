import QtQuick 2.5
import QtQuick.Controls 2.2
import QtQuick.Window 2.2

import "qrc:/qtlegal/"  //QTLEGAL LGPL WIDGET

Window {
    id: window
    visible: true
    width: 320
    height: 480

    // Demo code goes here

    Component{
        id:licenseBrowser //QTLEGAL LGPL WIDGET
        LicenseBrowser{
            extraLicenseText:"<p>"+qsTr("CREDITS")+"</p><p>" +
"<p>Dianiux Innova SL <p><a  href=\"https://www.dianiuxinnova.com\">https://www.dianiuxinnova.com</a></p>"

            urlBinaries:"https://github.com/dianiux-innova/qtlgplapptemplateExamples" //"qrc:/release.zip"
            onBack:stackView.pop() //back button
        }
    }



}
