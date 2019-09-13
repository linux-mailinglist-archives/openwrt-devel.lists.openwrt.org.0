Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC496B1B9F
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Sep 2019 12:39:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QjB468Zi1K/DKzIlgdH7wwqbjFW0JyxND7spfQ+KpFQ=; b=sD5ofOHqd8/CJT
	AiXLkXYzN5dHSUTzLSPs+l0k6C6/V9nsh3HfwNOOa+otZANrU2HdgfXMnJgouBkMQPKl7JxSnf4Dt
	JrOPPgL0RdW2TsCtRhbhHRVVZhB9temVI6g20svYy//xqMQvjGD4unf3o3sGsmMttBYFuUeQHa+8y
	JI4F8iy9ZHfyFl6rjr5+LF4mOql6CSMQ3xEkj76ffopyVfwp7hPV7oDu47mauo5gD5r1jFcn+OJAe
	ppL1JlHxFz5ucahvq1YCtNhilyluKJbGpKD9klwNwOPdTjbC9RsBvj0aq1FWKVxwTy3w3iG3ywoyO
	F1IqB6+Sa9WpT8k8QNQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8izD-0001Tc-QE; Fri, 13 Sep 2019 10:39:32 +0000
Received: from hosting.emcodev.net ([2a02:348:60:5ca2::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8iyq-0001TF-0j
 for openwrt-devel@lists.openwrt.org; Fri, 13 Sep 2019 10:39:10 +0000
Received: from localhost (localhost [127.0.0.1])
 by hosting.emcodev.net (Postfix) with ESMTP id 4F638212002
 for <openwrt-devel@lists.openwrt.org>; Fri, 13 Sep 2019 12:39:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=basmevissen.nl;
 h=content-transfer-encoding:content-language:content-type
 :content-type:mime-version:user-agent:date:date:message-id
 :subject:subject:from:from; s=default; t=1568371142; x=
 1570185543; bh=oAKJa3XMrLpou2PE1ZZtJOL4DavBtRE+WKPxpR5DGUI=; b=j
 4El3hgVNqdvSa2tlm1Ms1FwkzILrtjfAZapyQnS6vYWILS4f2JSsaDWNK8NacFiz
 jmcG+w1drXTvIUgp5xn8r88sOUDv2cVyt7fs7dmX5pdOUk4M1s5AeFuu6yXypPjs
 62zWnUz0nvUrRvQ96MsbNHyT6K5DiKnpvjKwC90xHCJLk4fO6zsLgSMYi/ZM5bcG
 fVrH4uWdDoTgkzTEWOXXkxfPg4R0c6Sdnei413VhQwhMxuFZc7Lykft+FGAOWHvl
 Ab8rpo2trz43sUCpSGtk43wvEj8QGfu2UUCbFBAN1hTRZ2j1nFSDMIcg4sGdXm21
 PqOImByuGSulRmarMLcn710C0tUENuUVZBzMac08SIGGLLzYOLMU1zE13GhCGmbp
 6/kVRVNDAho7XgiJwu7ASAh58TWRGp89nJMoGu87T+H4bqh0iQwVbBaSHsjKtuW0
 DYOFOWIknyfO61uyKKoHpI6NuZg0FCq39TTUwcoYFz7RmZPDwh4d8lvDKNdvrJfj
 LNQm4WsPUjYxtnqUE7fVx4Vffgji1/4ttQN1IZLZbMeoozK110xwlA2+RZvc5H0Y
 I/6vEbXGZ9GMW7fnBCV0QU8RoPlIDpBbBwcaL836J9YfQujPB58wbTUa5J1l4Cdv
 umugT6qXrOze55w74ReQmulglxuQ4ynXkSPiwBdlBA=
Received: from hosting.emcodev.net ([127.0.0.1])
 by localhost (hosting.emcodev.net [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id N5JnBmULVPUf for <openwrt-devel@lists.openwrt.org>;
 Fri, 13 Sep 2019 12:39:02 +0200 (CEST)
Received: from [192.168.18.127] (unknown [149.6.134.59])
 (Authenticated sender: bas@emcodev.nl)
 by hosting.emcodev.net (Postfix) with ESMTPSA id 93A5A212001
 for <openwrt-devel@lists.openwrt.org>; Fri, 13 Sep 2019 12:39:02 +0200 (CEST)
To: openwrt-devel@lists.openwrt.org
From: Bas Mevissen <abuse@basmevissen.nl>
Message-ID: <0d4db010-5c0e-3019-3839-527fc92470ba@basmevissen.nl>
Date: Fri, 13 Sep 2019 12:39:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_033908_496578_B49326A8 
X-CRM114-Status: GOOD (  10.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] Errors running make xconfig
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi all,

I'm trying to configure my openwrt project with xconfig. This fails with 
the errors pasted to https://pastebin.com/LJvsAhab (too long to add, 
summary below).

System is Mint 9.2 (Ubuntu Bionic based) with relevant Qt5 stuff 
installed, including libqt5* (I installed all of them...) and qtbase5-dev.

I used OpenWrt latest master, head of openwrt_19.07 branch and v18.06.4 
with the same result. I tried to figure out whether the configuration 
did function as designed:

(from scripts/config/Makefile)

$ pkg-config --exists Qt5Core && echo Ok
Ok

$ pkg-config --cflags Qt5Core Qt5Gui Qt5Widgets
-I/usr/include/x86_64-linux-gnu/qt5/QtWidgets 
-I/usr/include/x86_64-linux-gnu/qt5 
-I/usr/include/x86_64-linux-gnu/qt5/QtGui 
-I/usr/include/x86_64-linux-gnu/qt5 
-I/usr/include/x86_64-linux-gnu/qt5/QtCore 
-I/usr/include/x86_64-linux-gnu/qt5

$ pkg-config --libs Qt5Core Qt5Gui Qt5Widgets
-lQt5Widgets -lQt5Gui -lQt5Core

$ pkg-config --variable=host_bins Qt5Core
/usr/lib/qt5/bin

So it selects Qt5 and finds the required stuff:

$ cat scripts/config/.tmp_qtcheck
KC_QT_CFLAGS=-std=c++11 -fPIC 
-I/usr/include/x86_64-linux-gnu/qt5/QtWidgets 
-I/usr/include/x86_64-linux-gnu/qt5 
-I/usr/include/x86_64-linux-gnu/qt5/QtGui 
-I/usr/include/x86_64-linux-gnu/qt5 
-I/usr/include/x86_64-linux-gnu/qt5/QtCore 
-I/usr/include/x86_64-linux-gnu/qt5
KC_QT_LIBS=-lQt5Widgets -lQt5Gui -lQt5Core
KC_QT_MOC=/usr/lib/qt5/bin/moc

$ gcc --version
gcc (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0
Copyright (C) 2017 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is 
NO warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR 
PURPOSE.

So it seems the configuration goes fine and everything should be available.

Shortened version of the error:

make[1]: Entering directory 
'/home/bas/Workspace/playground/openwrt/scripts/config'
   CHECK   qt
qconf.o: In function `ConfigList::metaObject() const':
qconf.cc:(.text+0x3ed): undefined reference to 
`QObjectData::dynamicMetaObject() const'
qconf.o: In function `ConfigList::qt_metacast(char const*)':
qconf.cc:(.text+0x446): undefined reference to 
`QTreeWidget::qt_metacast(char const*)'
qconf.o: In function `ConfigList::qt_metacall(QMetaObject::Call, int, 
void**)':
qconf.cc:(.text+0x474): undefined reference to 
`QTreeWidget::qt_metacall(QMetaObject::Call, int, void**)'
qconf.o: In function `ConfigList::menuChanged(menu*)':
qconf.cc:(.text+0x522): undefined reference to 
`QMetaObject::activate(QObject*, QMetaObject const*, int, void**)'
qconf.o: In function `ConfigList::menuSelected(menu*)':
qconf.cc:(.text+0x590): undefined reference to 
`QMetaObject::activate(QObject*, QMetaObject const*, int, void**)'
qconf.o: In function `ConfigList::parentSelected()':
qconf.cc:(.text+0x5d1): undefined reference to 
`QMetaObject::activate(QObject*, QMetaObject const*, int, void**)'
qconf.o: In function `ConfigList::gotFocus(menu*)':
qconf.cc:(.text+0x62a): undefined reference to 
`QMetaObject::activate(QObject*, QMetaObject const*, int, void**)'
qconf.o: In function `ConfigLineEdit::metaObject() const':
qconf.cc:(.text+0x695): undefined reference to 
`QObjectData::dynamicMetaObject() const'
qconf.o: In function `ConfigLineEdit::qt_metacast(char const*)':
qconf.cc:(.text+0x6ee): undefined reference to 
`QLineEdit::qt_metacast(char const*)'
qconf.o: In function `ConfigLineEdit::qt_metacall(QMetaObject::Call, 
int, void**)':
qconf.cc:(.text+0x71c): undefined reference to 
`QLineEdit::qt_metacall(QMetaObject::Call, int, void**)'
qconf.o: In function `ConfigView::metaObject() const':
qconf.cc:(.text+0x9f7): undefined reference to 
`QObjectData::dynamicMetaObject() const'
qconf.o: In function `ConfigView::qt_metacast(char const*)':
qconf.cc:(.text+0xa50): undefined reference to 
`QWidget::qt_metacast(char const*)'
(...)
qconf.o: In function `ConfigList::~ConfigList()':
qconf.cc:(.text._ZN10ConfigListD2Ev[_ZN10ConfigListD5Ev]+0x42): 
undefined reference to `QPalette::~QPalette()'
qconf.cc:(.text._ZN10ConfigListD2Ev[_ZN10ConfigListD5Ev]+0x54): 
undefined reference to `QPalette::~QPalette()'
qconf.cc:(.text._ZN10ConfigListD2Ev[_ZN10ConfigListD5Ev]+0x66): 
undefined reference to `QPixmap::~QPixmap()'
qconf.cc:(.text._ZN10ConfigListD2Ev[_ZN10ConfigListD5Ev]+0x78): 
undefined reference to `QPixmap::~QPixmap()'
qconf.cc:(.text._ZN10ConfigListD2Ev[_ZN10ConfigListD5Ev]+0x8a): 
undefined reference to `QPixmap::~QPixmap()'
qconf.cc:(.text._ZN10ConfigListD2Ev[_ZN10ConfigListD5Ev]+0x9c): 
undefined reference to `QPixmap::~QPixmap()'
qconf.cc:(.text._ZN10ConfigListD2Ev[_ZN10ConfigListD5Ev]+0xae): 
undefined reference to `QPixmap::~QPixmap()'
qconf.o:qconf.cc:(.text._ZN10ConfigListD2Ev[_ZN10ConfigListD5Ev]+0xc0): 
more undefined references to `QPixmap::~QPixmap()' follow
qconf.o: In function `ConfigList::~ConfigList()':
qconf.cc:(.text._ZN10ConfigListD2Ev[_ZN10ConfigListD5Ev]+0xfc): 
undefined reference to `QTreeWidget::~QTreeWidget()'
qconf.o:(.data.rel.ro._ZTV14ConfigSettings[_ZTV14ConfigSettings]+0x10): 
undefined reference to `QSettings::metaObject() const'
qconf.o:(.data.rel.ro._ZTV14ConfigSettings[_ZTV14ConfigSettings]+0x18): 
undefined reference to `QSettings::qt_metacast(char const*)'
qconf.o:(.data.rel.ro._ZTV14ConfigSettings[_ZTV14ConfigSettings]+0x20): 
undefined reference to `QSettings::qt_metacall(QMetaObject::Call, int, 
void**)'
qconf.o:(.data.rel.ro._ZTV14ConfigSettings[_ZTV14ConfigSettings]+0x38): 
undefined reference to `QSettings::event(QEvent*)'
qconf.o:(.data.rel.ro._ZTV14ConfigSettings[_ZTV14ConfigSettings]+0x40): 
undefined reference to `QObject::eventFilter(QObject*, QEvent*)'
qconf.o:(.data.rel.ro._ZTV14ConfigSettings[_ZTV14ConfigSettings]+0x48): 
undefined reference to `QObject::timerEvent(QTimerEvent*)'
qconf.o:(.data.rel.ro._ZTV14ConfigSettings[_ZTV14ConfigSettings]+0x50): 
undefined reference to `QObject::childEvent(QChildEvent*)'
qconf.o:(.data.rel.ro._ZTV14ConfigSettings[_ZTV14ConfigSettings]+0x58): 
undefined reference to `QObject::customEvent(QEvent*)'
qconf.o:(.data.rel.ro._ZTV14ConfigSettings[_ZTV14ConfigSettings]+0x60): 
undefined reference to `QObject::connectNotify(QMetaMethod const&)'
qconf.o:(.data.rel.ro._ZTV14ConfigSettings[_ZTV14ConfigSettings]+0x68): 
undefined reference to `QObject::disconnectNotify(QMetaMethod const&)'
qconf.o: In function `ConfigSettings::~ConfigSettings()':
qconf.cc:(.text._ZN14ConfigSettingsD2Ev[_ZN14ConfigSettingsD5Ev]+0x26): 
undefined reference to `QSettings::~QSettings()'
qconf.o:(.data.rel.ro._ZTI16ConfigMainWindow[_ZTI16ConfigMainWindow]+0x10): 
undefined reference to `typeinfo for QMainWindow'
qconf.o:(.data.rel.ro._ZTI18ConfigSearchWindow[_ZTI18ConfigSearchWindow]+0x10): 
undefined reference to `typeinfo for QDialog'
qconf.o:(.data.rel.ro._ZTI14ConfigInfoView[_ZTI14ConfigInfoView]+0x10): 
undefined reference to `typeinfo for QTextBrowser'
qconf.o:(.data.rel.ro._ZTI10ConfigView[_ZTI10ConfigView]+0x10): 
undefined reference to `typeinfo for QWidget'
qconf.o:(.data.rel.ro._ZTI14ConfigLineEdit[_ZTI14ConfigLineEdit]+0x10): 
undefined reference to `typeinfo for QLineEdit'
qconf.o:(.data.rel.ro._ZTI10ConfigItem[_ZTI10ConfigItem]+0x10): 
undefined reference to `typeinfo for QTreeWidgetItem'
qconf.o:(.data.rel.ro._ZTI10ConfigList[_ZTI10ConfigList]+0x10): 
undefined reference to `typeinfo for QTreeWidget'
qconf.o:(.data.rel.ro._ZTI14ConfigSettings[_ZTI14ConfigSettings]+0x10): 
undefined reference to `typeinfo for QSettings'
collect2: error: ld returned 1 exit status
Makefile:45: recipe for target 'qconf' failed
make[1]: *** [qconf] Error 1
make[1]: Leaving directory 
'/home/bas/Workspace/playground/openwrt/scripts/config'
/home/bas/Workspace/playground/openwrt/include/toplevel.mk:108: recipe 
for target 'scripts/config/qconf' failed
make: *** [scripts/config/qconf] Error 2

Any help would be welcome.

Regards,

Bas.




_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
