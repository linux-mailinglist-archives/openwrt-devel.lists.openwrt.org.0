Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 836A41D211B
	for <lists+openwrt-devel@lfdr.de>; Wed, 13 May 2020 23:34:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PClXpmlbekeczkybYuFWaIHWLjd9Oct32PkI4P5A6JI=; b=p9NlisDmRCjeyWOdO4oHOo4QA
	IlGkdP3MeMwZjRiAMW+8X6QmMCgDkP312u1d0XpYWWl6urROYGDOK6sseDiNXL73rFBbiLfuQLesl
	4j8ZDFEYG+BP4rNI/a4dR+QNypAilvfBKrHkrUy9tdP7pYPrW31U4flS4siH4MOtSHH9csqopD5NO
	sKsHBnzFKyN7+Ti27/O1w/5ZV7Z8GW8WFYdAffmcxyndA/X8GAN+bpImjEqa1fn7EznyWuFVv2VwP
	+AXpD3xuPZM5ShCX8YXtoIIYgC4UmpmXTEjlIcp4Ac4AUDtQ8jmyhqRGxv0MBwejtwT+5P8XcDtTW
	NRv3bGD7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYz18-0004Bk-8p; Wed, 13 May 2020 21:34:18 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYz0w-00045e-21
 for openwrt-devel@lists.openwrt.org; Wed, 13 May 2020 21:34:09 +0000
Received: by mail-qk1-x743.google.com with SMTP id 190so995387qki.1
 for <openwrt-devel@lists.openwrt.org>; Wed, 13 May 2020 14:34:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=meshplusplus-com.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version; bh=C+H/7qVYQ1PniKrzHZClvNADBeKjLUAgbZ7z7QUvviQ=;
 b=VNqSqu1/ZPogEpJM56BnzGJIbFKqf6uYYBZbxEScD0Run863ViMHgpa4PlWHIjcP1y
 QlLxvgiEd7y6u3cPHQUK7bsQAqWnmLHwp1ny2CMs0xjU0tNyVvxzDqNm2yWN2XM3pKid
 wtIPLz/v5YmxDnAjgunJ3vTB+sFy6OJsXAeLo98x7AQybv+HtQSzPiWAfO7LgfD97Iqa
 0Cr6PLJonhRMBsHGu/aEQroq2KPNzkHx9LAZWTeQqxAFx/LxWjKIGlqZwZId4d1/xDRW
 cG4bI/6Fkj99/CuG3OXTINLZyQZMhoXTRiQSc7mnAasbYSoj1FYV/HKsPSID2bZ0mmcI
 nk6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version;
 bh=C+H/7qVYQ1PniKrzHZClvNADBeKjLUAgbZ7z7QUvviQ=;
 b=c2WP45I6lAEnNTLGM7t8deag5DEBaMbsrlPgw2o6CU/vKHhI1W2gOamjhUkB2XsRXw
 GvMZriZOgwg4pnkjOYdWSETqqK2od5j0oUOCypxhpeLE0RedwgGTTtp0Dm0xi92qFfxT
 xYgiCxyZY+EUZYfrDNceQK+O7alMwkvrXDIdsZ7a2JcSTQE6Z2ap8gF2iuzRaSxYUrVv
 NXH9dV7tmX75bOlPyNQWpp3r8HYON61Pu2iX7HWMsrBcRAMVx1uv5r62w/+mFr0oGsSW
 hJghMEjENoIyv5YF6b9hiINy+4esSfiIqquxwxY+Y6JYMUQSlbR6mE252BUbwyl55xE4
 aHQw==
X-Gm-Message-State: AOAM530LHU6g6RdMMDjy0SrJfUIfxtVdsL8CAdoZzMQc/eSl5sUwxyhW
 GiZVsizynRD2j2eB2snhdGfcTQ==
X-Google-Smtp-Source: ABdhPJwy8fIlDhDwStTQknsbaTlU1OEZw9gsmzXAUGq+mNVhdiple5o3QbOim9HCWqWoRny/SeHFtw==
X-Received: by 2002:a05:620a:809:: with SMTP id
 s9mr1722651qks.91.1589405642212; 
 Wed, 13 May 2020 14:34:02 -0700 (PDT)
Received: from localhost (c-98-213-55-3.hsd1.il.comcast.net. [98.213.55.3])
 by smtp.gmail.com with ESMTPSA id y28sm824492qtc.62.2020.05.13.14.34.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 May 2020 14:34:01 -0700 (PDT)
Date: Wed, 13 May 2020 16:33:57 -0500
From: Alex Ballmer <alexb@meshplusplus.com>
To: Aleksander Morgado <aleksander@aleksander.es>
Message-ID: <20200513163357.5e2f924b@meshplusplus.com>
In-Reply-To: <CAAP7uc+Tyfg8nmk=3qrPK4xeCOMx-m62JKMSdgxpbwA5h_4+6Q@mail.gmail.com>
References: <20200511185653.1f81ee9c@meshplusplus.com>
 <CAAP7uc+Tyfg8nmk=3qrPK4xeCOMx-m62JKMSdgxpbwA5h_4+6Q@mail.gmail.com>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="MP_/gpprePRfxQhVqJzebaowvN8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_143406_173873_7BA3B733 
X-CRM114-Status: GOOD (  12.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Quectel RM500Q failing to get ip address
 assignment with netifd and modemmanager
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
Cc: "ModemManager \(development\)" <modemmanager-devel@lists.freedesktop.org>,
 openwrt-devel <openwrt-devel@lists.openwrt.org>
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--MP_/gpprePRfxQhVqJzebaowvN8
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

On Tue, 12 May 2020 10:41:36 +0200
Aleksander Morgado <aleksander@aleksander.es> wrote:

> Hey,
> 
> >
> > root@localhost:~# mmcli -b 2
> >   --------------------------------
> >   General            |  dbus path:
> > /org/freedesktop/ModemManager1/Bearer/2
> >                      |       type: default
> >   --------------------------------
> >   Status             |  connected: yes
> >                      |  suspended: no
> >                      |  interface: wwan0
> >                      | ip timeout: 20
> >   --------------------------------
> >   Properties         |    roaming: allowed
> >   --------------------------------
> >   IPv4 configuration |     method: dhcp
> 
> This is the issue here. It shouldn't say DHCP, it should say "static",
> because the WWAN network interface of all the new 5G modules are
> always in raw-ip instead of 802.3, and therefore MM should fallback to
> request static IP addressing instead of DHCP.
> 
> Please try to backport the following fix:
> https://gitlab.freedesktop.org/mobile-broadband/ModemManager/-/commit/a8fd33ebaa80a0844c375fdb39173736d18f71cb
> 
> I really haven't spent much time backporting 5G related fixes to the
> 1.12 branch, because they will all be released together in 1.14 soon.
> 

I found it easier to switch my own setup to use the libqmi master
branch and modemmanager from the commit you mentioned. It works just
fine so far, wwan0 gets the correct address and the modem can ping fine
now. 

I attached the makefiles and patches I used for my openwrt build if
anyone needs them. In order to build the master branch, I also needed
to add 

https://github.com/autoconf-archive/autoconf-archive

as a build dependency. 

--MP_/gpprePRfxQhVqJzebaowvN8
Content-Type: text/x-makefile
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename=Makefile

#
# Copyright (C) 2016 Velocloud Inc.
# Copyright (C) 2016 Aleksander Morgado <aleksander@aleksander.es>
#
# This is free software, licensed under the GNU General Public License v2.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=libqmi
PKG_VERSION:=master
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_VERSION:=cabe90c3f9f067db464b085333aaa824ed19758a
PKG_SOURCE_URL:=git://anongit.freedesktop.org/libqmi

PKG_MAINTAINER:=Nicholas Smith <nicholas.smith@telcoantennas.com.au>

PKG_INSTALL:=1
PKG_BUILD_PARALLEL:=1
PKG_BUILD_DEPENDS:=autoconf-archive/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/nls.mk

define Package/libqmi
  SECTION:=libs
  CATEGORY:=Libraries
  DEPENDS:=+libmbim
  TITLE:=Helper library to talk to QMI enabled modems
  URL:=https://www.freedesktop.org/wiki/Software/libqmi
  LICENSE:=LGPL-2.0-or-later
  LICENSE_FILES:=COPYING.LIB
endef

define Package/libqmi/description
  Helper library talk to QMI enabled modems.
  Add qmi-utils for extra utilities.
endef

define Package/qmi-utils
  SECTION:=utils
  CATEGORY:=Utilities
  DEPENDS:=+libqmi
  TITLE:=Utilities to talk to QMI enabled modems
  URL:=https://www.freedesktop.org/wiki/Software/libqmi
  LICENSE:=GPL-2.0-or-later
  LICENSE_FILES:=COPYING
endef

define Package/libqmi-utils/description
  Utils to talk to QMI enabled modems
endef

CONFIGURE_ARGS += \
	--disable-static \
	--disable-gtk-doc \
	--disable-gtk-doc-html \
	--disable-gtk-doc-pdf \
	--disable-silent-rules \
	--enable-firmware-update \
	--enable-mbim-qmux \
	--enable-more-warnings=yes \
	--without-udev \
	--without-udev-base-dir


define Build/Prepare
	$(call Build/Prepare/Default)
	( cd $(PKG_BUILD_DIR); env NOCONFIGURE=1 ./autogen.sh )
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) \
		$(PKG_INSTALL_DIR)/usr/include/libqmi-glib \
		$(1)/usr/include/

	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) \
		$(PKG_INSTALL_DIR)/usr/lib/libqmi*.so* \
		$(1)/usr/lib/

	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) \
		$(PKG_INSTALL_DIR)/usr/lib/pkgconfig/qmi-glib.pc \
		$(1)/usr/lib/pkgconfig
endef

define Package/libqmi/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) \
		$(PKG_INSTALL_DIR)/usr/lib/libqmi*.so.* \
		$(1)/usr/lib/

	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/lib/qmi-proxy $(1)/usr/lib/
endef

define Package/qmi-utils/install
	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/qmicli $(1)/usr/bin/
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/qmi-network $(1)/usr/bin/
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/qmi-firmware-update $(1)/usr/bin/
endef

$(eval $(call BuildPackage,libqmi))
$(eval $(call BuildPackage,qmi-utils))

--MP_/gpprePRfxQhVqJzebaowvN8
Content-Type: text/x-makefile
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename=Makefile

#
# Copyright (C) 2016 Velocloud Inc.
# Copyright (C) 2016 Aleksander Morgado <aleksander@aleksander.es>
#
# This is free software, licensed under the GNU General Public License v2.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=modemmanager
PKG_VERSION:=1.12.10
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_VERSION:=a8fd33ebaa80a0844c375fdb39173736d18f71cb
PKG_SOURCE_URL:=https://gitlab.freedesktop.org/mobile-broadband/ModemManager.git
PKG_MIRROR_HASH:=3953a7a03d7d816860101ee331b8a485b6f98a23d97abff5a0a86fd743c3a0b0
PKG_BUILD_DIR:=$(BUILD_DIR)/modemmanager-$(PKG_VERSION)

PKG_MAINTAINER:=Nicholas Smith <nicholas.smith@telcoantennas.com.au>
PKG_LICENSE:=GPL-2.0-or-later
PKG_LICENSE_FILES:=COPYING
PKG_FIXUP:=autoreconf
PKG_INSTALL:=1
PKG_BUILD_PARALLEL:=1
PKG_BUILD_DEPENDS:=glib2/host libxslt/host resolveip autoconf-archive/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/nls.mk

define Package/modemmanager/config
  source "$(SOURCE)/Config.in"
endef

define Package/modemmanager
  SECTION:=net
  CATEGORY:=Network
  TITLE:=Control utility for any kind of mobile broadband modem
  URL:=https://www.freedesktop.org/wiki/Software/ModemManager
  DEPENDS:= \
	$(INTL_DEPENDS) \
	+glib2 \
	+dbus \
	+ppp \
	+MODEMMANAGER_WITH_MBIM:libmbim \
	+MODEMMANAGER_WITH_QMI:libqmi
endef

define Package/modemmanager/description
  ModemManager is a D-Bus-activated service which allows controlling mobile
  broadband modems. Add kernel modules for your modems as needed.
  Select Utilities/usb-modeswitch if needed.
endef

CONFIGURE_ARGS += \
	--without-polkit \
	--without-udev \
	--without-systemdsystemunitdir \
	--disable-rpath \
	--disable-gtk-doc

ifdef CONFIG_MODEMMANAGER_WITH_MBIM
  CONFIGURE_ARGS += --with-mbim
else
  CONFIGURE_ARGS += --without-mbim
endif

ifdef CONFIG_MODEMMANAGER_WITH_QMI
  CONFIGURE_ARGS += --with-qmi
else
  CONFIGURE_ARGS += --without-qmi
endif


define Build/Prepare
	$(call Build/Prepare/Default)
	( cd $(PKG_BUILD_DIR); env NOCONFIGURE=1 ./autogen.sh )
	( cd "$(PKG_BUILD_DIR)"; \
		printf "all:\ninstall:\n" >po/Makefile.in.in; \
	)
	$(SED) 's|^\(GLIB_MKENUMS\)=.*|\1=$(STAGING_DIR_HOSTPKG)/bin/glib-mkenums|' \
		$(PKG_BUILD_DIR)/configure.ac
	$(SED) 's|^\(GDBUS_CODEGEN\)=.*|\1=$(STAGING_DIR_HOSTPKG)/bin/gdbus-codegen|' \
		$(PKG_BUILD_DIR)/configure.ac
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include/ModemManager
	$(CP) $(PKG_INSTALL_DIR)/usr/include/ModemManager/*.h $(1)/usr/include/ModemManager
	$(INSTALL_DIR) $(1)/usr/include/libmm-glib
	$(CP) $(PKG_INSTALL_DIR)/usr/include/libmm-glib/*.h $(1)/usr/include/libmm-glib
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libmm-glib.so* $(1)/usr/lib
	$(INSTALL_DIR) $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/ModemManager.pc $(1)/usr/lib/pkgconfig
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig/mm-glib.pc $(1)/usr/lib/pkgconfig
endef

define Package/modemmanager/install
	$(INSTALL_DIR) $(1)/lib/udev/rules.d
	$(INSTALL_DATA) $(PKG_INSTALL_DIR)/lib/udev/rules.d/*.rules $(1)/lib/udev/rules.d

	$(INSTALL_DIR) $(1)/usr/sbin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/sbin/ModemManager $(1)/usr/sbin

	$(INSTALL_DIR) $(1)/usr/bin
	$(INSTALL_BIN) $(PKG_INSTALL_DIR)/usr/bin/mmcli $(1)/usr/bin

	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/libmm-glib.so.* $(1)/usr/lib

	$(INSTALL_DIR) $(1)/usr/lib/ModemManager
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/ModemManager/libmm-shared-*.so* $(1)/usr/lib/ModemManager
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/ModemManager/libmm-plugin-*.so* $(1)/usr/lib/ModemManager

	$(INSTALL_DIR) $(1)/etc/dbus-1/system.d
	$(INSTALL_CONF) $(PKG_INSTALL_DIR)/etc/dbus-1/system.d/org.freedesktop.ModemManager1.conf $(1)/etc/dbus-1/system.d

	$(INSTALL_DIR) $(1)/usr/share/dbus-1/system-services
	$(INSTALL_DATA) $(PKG_INSTALL_DIR)/usr/share/dbus-1/system-services/org.freedesktop.ModemManager1.service $(1)/usr/share/dbus-1/system-services

	$(INSTALL_DIR) $(1)/usr/share/ModemManager
	$(INSTALL_DATA) $(PKG_INSTALL_DIR)/usr/share/ModemManager/*.conf $(1)/usr/share/ModemManager
	$(INSTALL_DATA) ./files/modemmanager.common $(1)/usr/share/ModemManager

	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_BIN) ./files/modemmanager.init $(1)/etc/init.d/modemmanager

	$(INSTALL_DIR) $(1)/etc/hotplug.d/usb
	$(INSTALL_DATA) ./files/25-modemmanager-usb $(1)/etc/hotplug.d/usb

	$(INSTALL_DIR) $(1)/etc/hotplug.d/net
	$(INSTALL_DATA) ./files/25-modemmanager-net $(1)/etc/hotplug.d/net

	$(INSTALL_DIR) $(1)/etc/hotplug.d/tty
	$(INSTALL_DATA) ./files/25-modemmanager-tty $(1)/etc/hotplug.d/tty

	$(INSTALL_DIR) $(1)/lib/netifd/proto
	$(INSTALL_BIN) ./files/modemmanager.proto $(1)/lib/netifd/proto/modemmanager.sh
endef

$(eval $(call BuildPackage,modemmanager))

--MP_/gpprePRfxQhVqJzebaowvN8
Content-Type: text/x-patch
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename=010-fix-autoconf.patch

Index: modemmanager-1.12.10/configure.ac
===================================================================
--- modemmanager-1.12.10.orig/configure.ac
+++ modemmanager-1.12.10/configure.ac
@@ -69,7 +69,6 @@ dnl All message protocol structs are pac
 DISABLED_WARNINGS="${DISABLED_WARNINGS} -Wno-packed"
 
 dnl Setup compiler checks
-AX_COMPILER_FLAGS()
 AX_COMPILER_FLAGS_CFLAGS(,,,[${DISABLED_WARNINGS}])
 
 dnl Specify gnu89 mode

--MP_/gpprePRfxQhVqJzebaowvN8
Content-Type: text/x-patch
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment; filename=010-fix-autoconf.patch

Index: libqmi-master/configure.ac
===================================================================
--- libqmi-master.orig/configure.ac
+++ libqmi-master/configure.ac
@@ -62,7 +62,6 @@ dnl All message protocol structs are pac
 DISABLED_WARNINGS="${DISABLED_WARNINGS} -Wno-packed"
 
 dnl Setup compiler checks
-AX_COMPILER_FLAGS()
 AX_COMPILER_FLAGS_CFLAGS(,,,[${DISABLED_WARNINGS}])
 
 dnl Specify gnu89 mode

--MP_/gpprePRfxQhVqJzebaowvN8
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--MP_/gpprePRfxQhVqJzebaowvN8--

