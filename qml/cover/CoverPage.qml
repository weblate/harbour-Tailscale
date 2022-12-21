/*
    Copyright (C) 2022 Andrea Scarpino <andrea@scarpino.dev>
    All rights reserved.

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

import QtQuick 2.0
import Sailfish.Silica 1.0

CoverBackground {

    Connections {
        target: client

        onStatusUpdate: {
            placeholder.text = isUp ? qsTr("Up") : qsTr("Down");
        }
    }

    CoverPlaceholder {
        id: placeholder
        text: client.isUp() ? qsTr("Up") : qsTr("Down");
        icon.source: "/usr/share/icons/hicolor/86x86/apps/harbour-tailscale.png"
    }
}
