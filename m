Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C74FEB2440
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Sep 2019 18:40:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:Message-ID:From:To:MIME-Version:References:In-Reply-To:Date:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KHsobKjLhRst/NKk5VCMuqSR0sq2nbBSOa3kH+VpJ1M=; b=f7qEJW5Xlj/LkZR+8fK/2uA+u
	q4yy9TI8ivvXZeRCKyEn3W2ffR9W4A2x/IUVELwLNWvoxFjjlkch5ueJKtkQzWFFfGMlenHwF8gND
	2Ux7sYu8zUfZQWdF9tsmhjy1r2Lgds1vBvQ+pun4G2pnSELrhCMB1dF67gYgBzckD/RbNH5n3jgiG
	s8F6BM5HeRZPOY7R2bZUiN2ZKP3+QE1LPgExThIw4TqP0HqZXYv7RK/0tfO9bVEbOFZKjWe6viAEm
	fHSTX6QCVz8zAyyZeorG8AbnPKD8FZVrtQJksohTNowA92dB3zZKDytF0bXLsDLVHyh10FHjY2ljH
	r/V6FTuSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8ocC-0007PJ-2E; Fri, 13 Sep 2019 16:40:08 +0000
Received: from forward102p.mail.yandex.net ([77.88.28.102])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8obq-0007OT-CP
 for openwrt-devel@lists.openwrt.org; Fri, 13 Sep 2019 16:39:51 +0000
Received: from forward102q.mail.yandex.net (forward102q.mail.yandex.net
 [IPv6:2a02:6b8:c0e:1ba:0:640:516:4e7d])
 by forward102p.mail.yandex.net (Yandex) with ESMTP id 2A38B1D40B0F;
 Fri, 13 Sep 2019 19:39:35 +0300 (MSK)
Received: from mxback1q.mail.yandex.net (mxback1q.mail.yandex.net
 [IPv6:2a02:6b8:c0e:39:0:640:25b3:aea5])
 by forward102q.mail.yandex.net (Yandex) with ESMTP id 25DB97F20010;
 Fri, 13 Sep 2019 19:39:35 +0300 (MSK)
Received: from vla5-9cb0c276d29e.qloud-c.yandex.net
 (vla5-9cb0c276d29e.qloud-c.yandex.net [2a02:6b8:c18:3588:0:640:9cb0:c276])
 by mxback1q.mail.yandex.net (nwsmtp/Yandex) with ESMTP id tbrGM8htGT-dYqu3O7I; 
 Fri, 13 Sep 2019 19:39:34 +0300
Received: by vla5-9cb0c276d29e.qloud-c.yandex.net (nwsmtp/Yandex) with ESMTPSA
 id GkNEdfiYbB-dXJ84udw; Fri, 13 Sep 2019 19:39:33 +0300
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (Client certificate not present)
Date: Fri, 13 Sep 2019 18:39:33 +0200
User-Agent: K-9 Mail for Android
In-Reply-To: <0d4db010-5c0e-3019-3839-527fc92470ba@basmevissen.nl>
References: <0d4db010-5c0e-3019-3839-527fc92470ba@basmevissen.nl>
MIME-Version: 1.0
To: openwrt-devel@lists.openwrt.org,Bas Mevissen <abuse@basmevissen.nl>
From: Yaroslav Petrov <info@lank.me>
Message-ID: <E4FC739E-4F81-4286-BB37-A033DB5CCBC8@lank.me>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_093946_788713_481235FE 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [77.88.28.102 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
Subject: Re: [OpenWrt-Devel] Errors running make xconfig
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
Content-Type: multipart/mixed; boundary="===============6714105816267388065=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============6714105816267388065==
Content-Type: multipart/alternative; boundary="----9M8VSH5UTTZUU6RW01J4HCD7GVFIC8"
Content-Transfer-Encoding: 7bit

------9M8VSH5UTTZUU6RW01J4HCD7GVFIC8
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Bas,=20

Maybe it can help you ?=20

https://github=2Ecom/Lankaster/qt5-openwrt

https://github=2Ecom/petrov-adg/qt5-openwrt

Best regards
Yaro

Am 13=2E September 2019 12:39:02 MESZ schrieb Bas Mevissen <abuse@basmevis=
sen=2Enl>:
>Hi all,
>
>I'm trying to configure my openwrt project with xconfig=2E This fails
>with=20
>the errors pasted to https://pastebin=2Ecom/LJvsAhab (too long to add,=20
>summary below)=2E
>
>System is Mint 9=2E2 (Ubuntu Bionic based) with relevant Qt5 stuff=20
>installed, including libqt5* (I installed all of them=2E=2E=2E) and
>qtbase5-dev=2E
>
>I used OpenWrt latest master, head of openwrt_19=2E07 branch and v18=2E06=
=2E4
>
>with the same result=2E I tried to figure out whether the configuration=
=20
>did function as designed:
>
>(from scripts/config/Makefile)
>
>$ pkg-config --exists Qt5Core && echo Ok
>Ok
>
>$ pkg-config --cflags Qt5Core Qt5Gui Qt5Widgets
>-I/usr/include/x86_64-linux-gnu/qt5/QtWidgets=20
>-I/usr/include/x86_64-linux-gnu/qt5=20
>-I/usr/include/x86_64-linux-gnu/qt5/QtGui=20
>-I/usr/include/x86_64-linux-gnu/qt5=20
>-I/usr/include/x86_64-linux-gnu/qt5/QtCore=20
>-I/usr/include/x86_64-linux-gnu/qt5
>
>$ pkg-config --libs Qt5Core Qt5Gui Qt5Widgets
>-lQt5Widgets -lQt5Gui -lQt5Core
>
>$ pkg-config --variable=3Dhost_bins Qt5Core
>/usr/lib/qt5/bin
>
>So it selects Qt5 and finds the required stuff:
>
>$ cat scripts/config/=2Etmp_qtcheck
>KC_QT_CFLAGS=3D-std=3Dc++11 -fPIC=20
>-I/usr/include/x86_64-linux-gnu/qt5/QtWidgets=20
>-I/usr/include/x86_64-linux-gnu/qt5=20
>-I/usr/include/x86_64-linux-gnu/qt5/QtGui=20
>-I/usr/include/x86_64-linux-gnu/qt5=20
>-I/usr/include/x86_64-linux-gnu/qt5/QtCore=20
>-I/usr/include/x86_64-linux-gnu/qt5
>KC_QT_LIBS=3D-lQt5Widgets -lQt5Gui -lQt5Core
>KC_QT_MOC=3D/usr/lib/qt5/bin/moc
>
>$ gcc --version
>gcc (Ubuntu 7=2E4=2E0-1ubuntu1~18=2E04=2E1) 7=2E4=2E0
>Copyright (C) 2017 Free Software Foundation, Inc=2E
>This is free software; see the source for copying conditions=2E  There is
>
>NO warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR=20
>PURPOSE=2E
>
>So it seems the configuration goes fine and everything should be
>available=2E
>
>Shortened version of the error:
>
>make[1]: Entering directory=20
>'/home/bas/Workspace/playground/openwrt/scripts/config'
>   CHECK   qt
>qconf=2Eo: In function `ConfigList::metaObject() const':
>qconf=2Ecc:(=2Etext+0x3ed): undefined reference to=20
>`QObjectData::dynamicMetaObject() const'
>qconf=2Eo: In function `ConfigList::qt_metacast(char const*)':
>qconf=2Ecc:(=2Etext+0x446): undefined reference to=20
>`QTreeWidget::qt_metacast(char const*)'
>qconf=2Eo: In function `ConfigList::qt_metacall(QMetaObject::Call, int,=
=20
>void**)':
>qconf=2Ecc:(=2Etext+0x474): undefined reference to=20
>`QTreeWidget::qt_metacall(QMetaObject::Call, int, void**)'
>qconf=2Eo: In function `ConfigList::menuChanged(menu*)':
>qconf=2Ecc:(=2Etext+0x522): undefined reference to=20
>`QMetaObject::activate(QObject*, QMetaObject const*, int, void**)'
>qconf=2Eo: In function `ConfigList::menuSelected(menu*)':
>qconf=2Ecc:(=2Etext+0x590): undefined reference to=20
>`QMetaObject::activate(QObject*, QMetaObject const*, int, void**)'
>qconf=2Eo: In function `ConfigList::parentSelected()':
>qconf=2Ecc:(=2Etext+0x5d1): undefined reference to=20
>`QMetaObject::activate(QObject*, QMetaObject const*, int, void**)'
>qconf=2Eo: In function `ConfigList::gotFocus(menu*)':
>qconf=2Ecc:(=2Etext+0x62a): undefined reference to=20
>`QMetaObject::activate(QObject*, QMetaObject const*, int, void**)'
>qconf=2Eo: In function `ConfigLineEdit::metaObject() const':
>qconf=2Ecc:(=2Etext+0x695): undefined reference to=20
>`QObjectData::dynamicMetaObject() const'
>qconf=2Eo: In function `ConfigLineEdit::qt_metacast(char const*)':
>qconf=2Ecc:(=2Etext+0x6ee): undefined reference to=20
>`QLineEdit::qt_metacast(char const*)'
>qconf=2Eo: In function `ConfigLineEdit::qt_metacall(QMetaObject::Call,=20
>int, void**)':
>qconf=2Ecc:(=2Etext+0x71c): undefined reference to=20
>`QLineEdit::qt_metacall(QMetaObject::Call, int, void**)'
>qconf=2Eo: In function `ConfigView::metaObject() const':
>qconf=2Ecc:(=2Etext+0x9f7): undefined reference to=20
>`QObjectData::dynamicMetaObject() const'
>qconf=2Eo: In function `ConfigView::qt_metacast(char const*)':
>qconf=2Ecc:(=2Etext+0xa50): undefined reference to=20
>`QWidget::qt_metacast(char const*)'
>(=2E=2E=2E)
>qconf=2Eo: In function `ConfigList::~ConfigList()':
>qconf=2Ecc:(=2Etext=2E_ZN10ConfigListD2Ev[_ZN10ConfigListD5Ev]+0x42):=20
>undefined reference to `QPalette::~QPalette()'
>qconf=2Ecc:(=2Etext=2E_ZN10ConfigListD2Ev[_ZN10ConfigListD5Ev]+0x54):=20
>undefined reference to `QPalette::~QPalette()'
>qconf=2Ecc:(=2Etext=2E_ZN10ConfigListD2Ev[_ZN10ConfigListD5Ev]+0x66):=20
>undefined reference to `QPixmap::~QPixmap()'
>qconf=2Ecc:(=2Etext=2E_ZN10ConfigListD2Ev[_ZN10ConfigListD5Ev]+0x78):=20
>undefined reference to `QPixmap::~QPixmap()'
>qconf=2Ecc:(=2Etext=2E_ZN10ConfigListD2Ev[_ZN10ConfigListD5Ev]+0x8a):=20
>undefined reference to `QPixmap::~QPixmap()'
>qconf=2Ecc:(=2Etext=2E_ZN10ConfigListD2Ev[_ZN10ConfigListD5Ev]+0x9c):=20
>undefined reference to `QPixmap::~QPixmap()'
>qconf=2Ecc:(=2Etext=2E_ZN10ConfigListD2Ev[_ZN10ConfigListD5Ev]+0xae):=20
>undefined reference to `QPixmap::~QPixmap()'
>qconf=2Eo:qconf=2Ecc:(=2Etext=2E_ZN10ConfigListD2Ev[_ZN10ConfigListD5Ev]+=
0xc0):
>
>more undefined references to `QPixmap::~QPixmap()' follow
>qconf=2Eo: In function `ConfigList::~ConfigList()':
>qconf=2Ecc:(=2Etext=2E_ZN10ConfigListD2Ev[_ZN10ConfigListD5Ev]+0xfc):=20
>undefined reference to `QTreeWidget::~QTreeWidget()'
>qconf=2Eo:(=2Edata=2Erel=2Ero=2E_ZTV14ConfigSettings[_ZTV14ConfigSettings=
]+0x10):
>
>undefined reference to `QSettings::metaObject() const'
>qconf=2Eo:(=2Edata=2Erel=2Ero=2E_ZTV14ConfigSettings[_ZTV14ConfigSettings=
]+0x18):
>
>undefined reference to `QSettings::qt_metacast(char const*)'
>qconf=2Eo:(=2Edata=2Erel=2Ero=2E_ZTV14ConfigSettings[_ZTV14ConfigSettings=
]+0x20):
>
>undefined reference to `QSettings::qt_metacall(QMetaObject::Call, int,=20
>void**)'
>qconf=2Eo:(=2Edata=2Erel=2Ero=2E_ZTV14ConfigSettings[_ZTV14ConfigSettings=
]+0x38):
>
>undefined reference to `QSettings::event(QEvent*)'
>qconf=2Eo:(=2Edata=2Erel=2Ero=2E_ZTV14ConfigSettings[_ZTV14ConfigSettings=
]+0x40):
>
>undefined reference to `QObject::eventFilter(QObject*, QEvent*)'
>qconf=2Eo:(=2Edata=2Erel=2Ero=2E_ZTV14ConfigSettings[_ZTV14ConfigSettings=
]+0x48):
>
>undefined reference to `QObject::timerEvent(QTimerEvent*)'
>qconf=2Eo:(=2Edata=2Erel=2Ero=2E_ZTV14ConfigSettings[_ZTV14ConfigSettings=
]+0x50):
>
>undefined reference to `QObject::childEvent(QChildEvent*)'
>qconf=2Eo:(=2Edata=2Erel=2Ero=2E_ZTV14ConfigSettings[_ZTV14ConfigSettings=
]+0x58):
>
>undefined reference to `QObject::customEvent(QEvent*)'
>qconf=2Eo:(=2Edata=2Erel=2Ero=2E_ZTV14ConfigSettings[_ZTV14ConfigSettings=
]+0x60):
>
>undefined reference to `QObject::connectNotify(QMetaMethod const&)'
>qconf=2Eo:(=2Edata=2Erel=2Ero=2E_ZTV14ConfigSettings[_ZTV14ConfigSettings=
]+0x68):
>
>undefined reference to `QObject::disconnectNotify(QMetaMethod const&)'
>qconf=2Eo: In function `ConfigSettings::~ConfigSettings()':
>qconf=2Ecc:(=2Etext=2E_ZN14ConfigSettingsD2Ev[_ZN14ConfigSettingsD5Ev]+0x=
26):
>
>undefined reference to `QSettings::~QSettings()'
>qconf=2Eo:(=2Edata=2Erel=2Ero=2E_ZTI16ConfigMainWindow[_ZTI16ConfigMainWi=
ndow]+0x10):
>
>undefined reference to `typeinfo for QMainWindow'
>qconf=2Eo:(=2Edata=2Erel=2Ero=2E_ZTI18ConfigSearchWindow[_ZTI18ConfigSear=
chWindow]+0x10):
>
>undefined reference to `typeinfo for QDialog'
>qconf=2Eo:(=2Edata=2Erel=2Ero=2E_ZTI14ConfigInfoView[_ZTI14ConfigInfoView=
]+0x10):
>
>undefined reference to `typeinfo for QTextBrowser'
>qconf=2Eo:(=2Edata=2Erel=2Ero=2E_ZTI10ConfigView[_ZTI10ConfigView]+0x10):=
=20
>undefined reference to `typeinfo for QWidget'
>qconf=2Eo:(=2Edata=2Erel=2Ero=2E_ZTI14ConfigLineEdit[_ZTI14ConfigLineEdit=
]+0x10):
>
>undefined reference to `typeinfo for QLineEdit'
>qconf=2Eo:(=2Edata=2Erel=2Ero=2E_ZTI10ConfigItem[_ZTI10ConfigItem]+0x10):=
=20
>undefined reference to `typeinfo for QTreeWidgetItem'
>qconf=2Eo:(=2Edata=2Erel=2Ero=2E_ZTI10ConfigList[_ZTI10ConfigList]+0x10):=
=20
>undefined reference to `typeinfo for QTreeWidget'
>qconf=2Eo:(=2Edata=2Erel=2Ero=2E_ZTI14ConfigSettings[_ZTI14ConfigSettings=
]+0x10):
>
>undefined reference to `typeinfo for QSettings'
>collect2: error: ld returned 1 exit status
>Makefile:45: recipe for target 'qconf' failed
>make[1]: *** [qconf] Error 1
>make[1]: Leaving directory=20
>'/home/bas/Workspace/playground/openwrt/scripts/config'
>/home/bas/Workspace/playground/openwrt/include/toplevel=2Emk:108: recipe=
=20
>for target 'scripts/config/qconf' failed
>make: *** [scripts/config/qconf] Error 2
>
>Any help would be welcome=2E
>
>Regards,
>
>Bas=2E
>
>
>
>
>_______________________________________________
>openwrt-devel mailing list
>openwrt-devel@lists=2Eopenwrt=2Eorg
>https://lists=2Eopenwrt=2Eorg/mailman/listinfo/openwrt-devel

--=20
Diese Nachricht wurde von meinem Android-Ger=C3=A4t mit K-9 Mail gesendet=
=2E
------9M8VSH5UTTZUU6RW01J4HCD7GVFIC8
Content-Type: text/html;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body>Hi Bas, <br><br>Maybe it can help you ? <br><br><a=
 href=3D"https://github=2Ecom/Lankaster/qt5-openwrt">https://github=2Ecom/L=
ankaster/qt5-openwrt</a><br><br><a href=3D"https://github=2Ecom/petrov-adg/=
qt5-openwrt">https://github=2Ecom/petrov-adg/qt5-openwrt</a><br><br>Best re=
gards<br>Yaro<br><br><div class=3D"gmail_quote">Am 13=2E September 2019 12:=
39:02 MESZ schrieb Bas Mevissen &lt;abuse@basmevissen=2Enl&gt;:<blockquote =
class=3D"gmail_quote" style=3D"margin: 0pt 0pt 0pt 0=2E8ex; border-left: 1p=
x solid rgb(204, 204, 204); padding-left: 1ex;">
<pre class=3D"k9mail">Hi all,<br><br>I'm trying to configure my openwrt pr=
oject with xconfig=2E This fails with <br>the errors pasted to <a href=3D"h=
ttps://pastebin=2Ecom/LJvsAhab">https://pastebin=2Ecom/LJvsAhab</a> (too lo=
ng to add, <br>summary below)=2E<br><br>System is Mint 9=2E2 (Ubuntu Bionic=
 based) with relevant Qt5 stuff <br>installed, including libqt5* (I install=
ed all of them=2E=2E=2E) and qtbase5-dev=2E<br><br>I used OpenWrt latest ma=
ster, head of openwrt_19=2E07 branch and v18=2E06=2E4 <br>with the same res=
ult=2E I tried to figure out whether the configuration <br>did function as =
designed:<br><br>(from scripts/config/Makefile)<br><br>$ pkg-config --exist=
s Qt5Core &amp;&amp; echo Ok<br>Ok<br><br>$ pkg-config --cflags Qt5Core Qt5=
Gui Qt5Widgets<br>-I/usr/include/x86_64-linux-gnu/qt5/QtWidgets <br>-I/usr/=
include/x86_64-linux-gnu/qt5 <br>-I/usr/include/x86_64-linux-gnu/qt5/QtGui =
<br>-I/usr/include/x86_64-linux-gnu/qt5 <br>-I/usr/include/x86_64-linux-gnu=
/qt5/QtCore <br>-I/usr/include/x86_64-linux-gnu/qt5<br><br>$ pkg-config --l=
ibs Qt5Core Qt5Gui Qt5Widgets<br>-lQt5Widgets -lQt5Gui -lQt5Core<br><br>$ p=
kg-config --variable=3Dhost_bins Qt5Core<br>/usr/lib/qt5/bin<br><br>So it s=
elects Qt5 and finds the required stuff:<br><br>$ cat scripts/config/=2Etmp=
_qtcheck<br>KC_QT_CFLAGS=3D-std=3Dc++11 -fPIC <br>-I/usr/include/x86_64-lin=
ux-gnu/qt5/QtWidgets <br>-I/usr/include/x86_64-linux-gnu/qt5 <br>-I/usr/inc=
lude/x86_64-linux-gnu/qt5/QtGui <br>-I/usr/include/x86_64-linux-gnu/qt5 <br=
>-I/usr/include/x86_64-linux-gnu/qt5/QtCore <br>-I/usr/include/x86_64-linux=
-gnu/qt5<br>KC_QT_LIBS=3D-lQt5Widgets -lQt5Gui -lQt5Core<br>KC_QT_MOC=3D/us=
r/lib/qt5/bin/moc<br><br>$ gcc --version<br>gcc (Ubuntu 7=2E4=2E0-1ubuntu1~=
18=2E04=2E1) 7=2E4=2E0<br>Copyright (C) 2017 Free Software Foundation, Inc=
=2E<br>This is free software; see the source for copying conditions=2E  The=
re is <br>NO warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTIC=
ULAR <br>PURPOSE=2E<br><br>So it seems the configuration goes fine and ever=
ything should be available=2E<br><br>Shortened version of the error:<br><br=
>make[1]: Entering directory <br>'/home/bas/Workspace/playground/openwrt/sc=
ripts/config'<br>   CHECK   qt<br>qconf=2Eo: In function `ConfigList::metaO=
bject() const':<br>qconf=2Ecc:(=2Etext+0x3ed): undefined reference to <br>`=
QObjectData::dynamicMetaObject() const'<br>qconf=2Eo: In function `ConfigLi=
st::qt_metacast(char const*)':<br>qconf=2Ecc:(=2Etext+0x446): undefined ref=
erence to <br>`QTreeWidget::qt_metacast(char const*)'<br>qconf=2Eo: In func=
tion `ConfigList::qt_metacall(QMetaObject::Call, int, <br>void**)':<br>qcon=
f=2Ecc:(=2Etext+0x474): undefined reference to <br>`QTreeWidget::qt_metacal=
l(QMetaObject::Call, int, void**)'<br>qconf=2Eo: In function `ConfigList::m=
enuChanged(menu*)':<br>qconf=2Ecc:(=2Etext+0x522): undefined reference to <=
br>`QMetaObject::activate(QObject*, QMetaObject const*, int, void**)'<br>qc=
onf=2Eo: In function `ConfigList::menuSelected(menu*)':<br>qconf=2Ecc:(=2Et=
ext+0x590): undefined reference to <br>`QMetaObject::activate(QObject*, QMe=
taObject const*, int, void**)'<br>qconf=2Eo: In function `ConfigList::paren=
tSelected()':<br>qconf=2Ecc:(=2Etext+0x5d1): undefined reference to <br>`QM=
etaObject::activate(QObject*, QMetaObject const*, int, void**)'<br>qconf=2E=
o: In function `ConfigList::gotFocus(menu*)':<br>qconf=2Ecc:(=2Etext+0x62a)=
: undefined reference to <br>`QMetaObject::activate(QObject*, QMetaObject c=
onst*, int, void**)'<br>qconf=2Eo: In function `ConfigLineEdit::metaObject(=
) const':<br>qconf=2Ecc:(=2Etext+0x695): undefined reference to <br>`QObjec=
tData::dynamicMetaObject() const'<br>qconf=2Eo: In function `ConfigLineEdit=
::qt_metacast(char const*)':<br>qconf=2Ecc:(=2Etext+0x6ee): undefined refer=
ence to <br>`QLineEdit::qt_metacast(char const*)'<br>qconf=2Eo: In function=
 `ConfigLineEdit::qt_metacall(QMetaObject::Call, <br>int, void**)':<br>qcon=
f=2Ecc:(=2Etext+0x71c): undefined reference to <br>`QLineEdit::qt_metacall(=
QMetaObject::Call, int, void**)'<br>qconf=2Eo: In function `ConfigView::met=
aObject() const':<br>qconf=2Ecc:(=2Etext+0x9f7): undefined reference to <br=
>`QObjectData::dynamicMetaObject() const'<br>qconf=2Eo: In function `Config=
View::qt_metacast(char const*)':<br>qconf=2Ecc:(=2Etext+0xa50): undefined r=
eference to <br>`QWidget::qt_metacast(char const*)'<br>(=2E=2E=2E)<br>qconf=
=2Eo: In function `ConfigList::~ConfigList()':<br>qconf=2Ecc:(=2Etext=2E_ZN=
10ConfigListD2Ev[_ZN10ConfigListD5Ev]+0x42): <br>undefined reference to `QP=
alette::~QPalette()'<br>qconf=2Ecc:(=2Etext=2E_ZN10ConfigListD2Ev[_ZN10Conf=
igListD5Ev]+0x54): <br>undefined reference to `QPalette::~QPalette()'<br>qc=
onf=2Ecc:(=2Etext=2E_ZN10ConfigListD2Ev[_ZN10ConfigListD5Ev]+0x66): <br>und=
efined reference to `QPixmap::~QPixmap()'<br>qconf=2Ecc:(=2Etext=2E_ZN10Con=
figListD2Ev[_ZN10ConfigListD5Ev]+0x78): <br>undefined reference to `QPixmap=
::~QPixmap()'<br>qconf=2Ecc:(=2Etext=2E_ZN10ConfigListD2Ev[_ZN10ConfigListD=
5Ev]+0x8a): <br>undefined reference to `QPixmap::~QPixmap()'<br>qconf=2Ecc:=
(=2Etext=2E_ZN10ConfigListD2Ev[_ZN10ConfigListD5Ev]+0x9c): <br>undefined re=
ference to `QPixmap::~QPixmap()'<br>qconf=2Ecc:(=2Etext=2E_ZN10ConfigListD2=
Ev[_ZN10ConfigListD5Ev]+0xae): <br>undefined reference to `QPixmap::~QPixma=
p()'<br>qconf=2Eo:qconf=2Ecc:(=2Etext=2E_ZN10ConfigListD2Ev[_ZN10ConfigList=
D5Ev]+0xc0): <br>more undefined references to `QPixmap::~QPixmap()' follow<=
br>qconf=2Eo: In function `ConfigList::~ConfigList()':<br>qconf=2Ecc:(=2Ete=
xt=2E_ZN10ConfigListD2Ev[_ZN10ConfigListD5Ev]+0xfc): <br>undefined referenc=
e to `QTreeWidget::~QTreeWidget()'<br>qconf=2Eo:(=2Edata=2Erel=2Ero=2E_ZTV1=
4ConfigSettings[_ZTV14ConfigSettings]+0x10): <br>undefined reference to `QS=
ettings::metaObject() const'<br>qconf=2Eo:(=2Edata=2Erel=2Ero=2E_ZTV14Confi=
gSettings[_ZTV14ConfigSettings]+0x18): <br>undefined reference to `QSetting=
s::qt_metacast(char const*)'<br>qconf=2Eo:(=2Edata=2Erel=2Ero=2E_ZTV14Confi=
gSettings[_ZTV14ConfigSettings]+0x20): <br>undefined reference to `QSetting=
s::qt_metacall(QMetaObject::Call, int, <br>void**)'<br>qconf=2Eo:(=2Edata=
=2Erel=2Ero=2E_ZTV14ConfigSettings[_ZTV14ConfigSettings]+0x38): <br>undefin=
ed reference to `QSettings::event(QEvent*)'<br>qconf=2Eo:(=2Edata=2Erel=2Er=
o=2E_ZTV14ConfigSettings[_ZTV14ConfigSettings]+0x40): <br>undefined referen=
ce to `QObject::eventFilter(QObject*, QEvent*)'<br>qconf=2Eo:(=2Edata=2Erel=
=2Ero=2E_ZTV14ConfigSettings[_ZTV14ConfigSettings]+0x48): <br>undefined ref=
erence to `QObject::timerEvent(QTimerEvent*)'<br>qconf=2Eo:(=2Edata=2Erel=
=2Ero=2E_ZTV14ConfigSettings[_ZTV14ConfigSettings]+0x50): <br>undefined ref=
erence to `QObject::childEvent(QChildEvent*)'<br>qconf=2Eo:(=2Edata=2Erel=
=2Ero=2E_ZTV14ConfigSettings[_ZTV14ConfigSettings]+0x58): <br>undefined ref=
erence to `QObject::customEvent(QEvent*)'<br>qconf=2Eo:(=2Edata=2Erel=2Ero=
=2E_ZTV14ConfigSettings[_ZTV14ConfigSettings]+0x60): <br>undefined referenc=
e to `QObject::connectNotify(QMetaMethod const&amp;)'<br>qconf=2Eo:(=2Edata=
=2Erel=2Ero=2E_ZTV14ConfigSettings[_ZTV14ConfigSettings]+0x68): <br>undefin=
ed reference to `QObject::disconnectNotify(QMetaMethod const&amp;)'<br>qcon=
f=2Eo: In function `ConfigSettings::~ConfigSettings()':<br>qconf=2Ecc:(=2Et=
ext=2E_ZN14ConfigSettingsD2Ev[_ZN14ConfigSettingsD5Ev]+0x26): <br>undefined=
 reference to `QSettings::~QSettings()'<br>qconf=2Eo:(=2Edata=2Erel=2Ero=2E=
_ZTI16ConfigMainWindow[_ZTI16ConfigMainWindow]+0x10): <br>undefined referen=
ce to `typeinfo for QMainWindow'<br>qconf=2Eo:(=2Edata=2Erel=2Ero=2E_ZTI18C=
onfigSearchWindow[_ZTI18ConfigSearchWindow]+0x10): <br>undefined reference =
to `typeinfo for QDialog'<br>qconf=2Eo:(=2Edata=2Erel=2Ero=2E_ZTI14ConfigIn=
foView[_ZTI14ConfigInfoView]+0x10): <br>undefined reference to `typeinfo fo=
r QTextBrowser'<br>qconf=2Eo:(=2Edata=2Erel=2Ero=2E_ZTI10ConfigView[_ZTI10C=
onfigView]+0x10): <br>undefined reference to `typeinfo for QWidget'<br>qcon=
f=2Eo:(=2Edata=2Erel=2Ero=2E_ZTI14ConfigLineEdit[_ZTI14ConfigLineEdit]+0x10=
): <br>undefined reference to `typeinfo for QLineEdit'<br>qconf=2Eo:(=2Edat=
a=2Erel=2Ero=2E_ZTI10ConfigItem[_ZTI10ConfigItem]+0x10): <br>undefined refe=
rence to `typeinfo for QTreeWidgetItem'<br>qconf=2Eo:(=2Edata=2Erel=2Ero=2E=
_ZTI10ConfigList[_ZTI10ConfigList]+0x10): <br>undefined reference to `typei=
nfo for QTreeWidget'<br>qconf=2Eo:(=2Edata=2Erel=2Ero=2E_ZTI14ConfigSetting=
s[_ZTI14ConfigSettings]+0x10): <br>undefined reference to `typeinfo for QSe=
ttings'<br>collect2: error: ld returned 1 exit status<br>Makefile:45: recip=
e for target 'qconf' failed<br>make[1]: *** [qconf] Error 1<br>make[1]: Lea=
ving directory <br>'/home/bas/Workspace/playground/openwrt/scripts/config'<=
br>/home/bas/Workspace/playground/openwrt/include/toplevel=2Emk:108: recipe=
 <br>for target 'scripts/config/qconf' failed<br>make: *** [scripts/config/=
qconf] Error 2<br><br>Any help would be welcome=2E<br><br>Regards,<br><br>B=
as=2E<hr>openwrt-devel mailing list<br>openwrt-devel@lists=2Eopenwrt=2Eorg<=
br><a href=3D"https://lists=2Eopenwrt=2Eorg/mailman/listinfo/openwrt-devel"=
>https://lists=2Eopenwrt=2Eorg/mailman/listinfo/openwrt-devel</a><br></pre>=
</blockquote></div><br>-- <br>Diese Nachricht wurde von meinem Android-Ger=
=C3=A4t mit K-9 Mail gesendet=2E</body></html>
------9M8VSH5UTTZUU6RW01J4HCD7GVFIC8--


--===============6714105816267388065==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6714105816267388065==--

