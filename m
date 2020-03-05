Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D82E17AEFD
	for <lists+openwrt-devel@lfdr.de>; Thu,  5 Mar 2020 20:35:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iCBPEaHbmycTujtsnbD7vKSqZ3SwPL5eX9jgOcIHyz0=; b=dk4zF6Ksz6MPbc
	7TD35cunmotnSAUn6CdG7yDjh268prPvtN2o+NyknKBuZRrQ/W8IiKHAxbWthNNjnmGp/xJPDTKXr
	wf0as+8B/MGBECyrEnzpaKEafUYYKgOd4HrZlo04xBj/HjwDW6/+90hXByhg0VoPdROQ/xztTqehc
	optAT5v2mb5JBOT8CdFWiSfx8+DiaMZcqW4bbQtJMYEqZvgNo4WJxtaiMPKVFcydONWI9I/NSIub/
	IXEo2DWJ5Xn78X0Mqoxuc3V3oGNzSHlBe8AnyrfCH5bMlSQ+ryMZYwiOeA4GsJ2SitUCaBeChseYn
	cuIcie1lMuncOd55KgfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9wGf-0003re-P8; Thu, 05 Mar 2020 19:34:49 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9wGW-0003qw-FF
 for openwrt-devel@lists.openwrt.org; Thu, 05 Mar 2020 19:34:42 +0000
Received: by mail-wm1-x342.google.com with SMTP id a25so7798046wmm.0
 for <openwrt-devel@lists.openwrt.org>; Thu, 05 Mar 2020 11:34:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kresin-me.20150623.gappssmtp.com; s=20150623;
 h=from:to:subject:date:message-id;
 bh=kBYRj3Jxbd+CACBWpIPEpZP01IzArFS1Ua+h4/ZPqWU=;
 b=C5Q7GIRkRno/T5MLrSuptJZm2ugrRScdtgN7ofKSoP5xH+a2QH+60Gj2bJaxGQfJCS
 g4xgTEe1IJOqR2uoph7VUM63t/YZ302tnHvlg8Yk/nSorimLQ0jFCaJ4zWvofeIXBjlD
 Xqq+RchSvzLp4fHP4R2rTI/RYSzFtSaF6XuPsJ3lqLQ6hn0oO7r0RS69+0tVSJJAxvvY
 F+XIn2sHR19EUsrU9YcRhYOjyHvqLFjycMV3GftLOD41fCPlHJgUIKoMVXN5u2DpDEoM
 ABAVCnMkgwbsKlZK3K6/DQqIQIMJomjN6sRZfM09Sxx7WEkj9LtYQWay67ihFwnY+FXC
 hxdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=kBYRj3Jxbd+CACBWpIPEpZP01IzArFS1Ua+h4/ZPqWU=;
 b=qcuBsUAQYP8xBRJufNE+EbQd50Cu9t3DyQaksdsgKGGnYM6w0PvdRGCf+agfZGr1+k
 07rneHGccUiDxwyo5RvwkpX1EztaUWnwJEdcz2ysi/qq4kRi/SPKfUVOovB3d/uUgkVL
 2EwtvpnJvciJsA17yiPAzbtCc+vO3M+/dm9+zBcexYb3/z1Cfcth6OweoaCU/RFeVp78
 bTF06aqAWuw1ofyBPMrCeA2kfQJh/DDBtl9o/3qXcrQpMJKRc6a1D5TeD5RbZ7b6xVvJ
 PoJCkyTb7NHRxSiemkLKRl/8MOwt4qQEKgql7m11QeuvEOJMrkMw8WuEMuLE31xU2PJC
 LSmw==
X-Gm-Message-State: ANhLgQ2dt14VUEmz88iAzT0Oo1aWNs63wCCXLeSu6LjZpmXNrGthmd9R
 5FwzpzbyWNvh++MusQtvruBwed0K9zM=
X-Google-Smtp-Source: ADFU+vvAST+pqy2W0sXr8ERXpM/m1A/A4e6xuV43Edvdq/TmoW/AqTsrbyLJ2GY3HrPFov1VXPQHLg==
X-Received: by 2002:a7b:ca52:: with SMTP id m18mr371396wml.168.1583436873055; 
 Thu, 05 Mar 2020 11:34:33 -0800 (PST)
Received: from desktop.wvd.kresin.me
 (p200300EC2F0EF800F138A4CC89916236.dip0.t-ipconnect.de.
 [2003:ec:2f0e:f800:f138:a4cc:8991:6236])
 by smtp.gmail.com with ESMTPSA id w8sm11773514wmm.0.2020.03.05.11.34.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 Mar 2020 11:34:32 -0800 (PST)
From: Mathias Kresin <dev@kresin.me>
To: openwrt-devel@lists.openwrt.org,
	alin.nastac@gmail.com
Date: Thu,  5 Mar 2020 20:34:27 +0100
Message-Id: <20200305193427.17434-1-dev@kresin.me>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_113440_831072_4CC9C211 
X-CRM114-Status: UNSURE (   8.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] iproute2: revert add libcap support,
 enabled in ip-full
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This reverts commit a6da3f9ef746101b84a6f530f5a40de28341b69a.

The libcap isn't as optional as the commit messages suggests. A hard
dependency to the libcap package is added, which is only available in
the external packages feed. Therefore it is impossible to package
ip-full without having the external packages feed up and running, which
is a regression to the former behaviour.

Signed-off-by: Mathias Kresin <dev@kresin.me>
---
 package/network/utils/iproute2/Makefile | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/package/network/utils/iproute2/Makefile b/package/network/utils/iproute2/Makefile
index 34b768a906..cff582283c 100644
--- a/package/network/utils/iproute2/Makefile
+++ b/package/network/utils/iproute2/Makefile
@@ -47,7 +47,7 @@ $(call Package/iproute2/Default)
  VARIANT:=full
  PROVIDES:=ip
  ALTERNATIVES:=300:/sbin/ip:/usr/libexec/ip-full
- DEPENDS:=+libnl-tiny +libelf +(PACKAGE_devlink||PACKAGE_rdma):libmnl +libcap
+ DEPENDS:=+libnl-tiny +libelf +(PACKAGE_devlink||PACKAGE_rdma):libmnl
 endef
 
 define Package/tc
@@ -55,43 +55,43 @@ $(call Package/iproute2/Default)
   TITLE:=Traffic control utility
   VARIANT:=tc
   PROVIDES:=tc
-  DEPENDS:=+kmod-sched-core +libxtables +libelf +(PACKAGE_devlink||PACKAGE_rdma):libmnl +PACKAGE_ip-full:libcap
+  DEPENDS:=+kmod-sched-core +libxtables +libelf +(PACKAGE_devlink||PACKAGE_rdma):libmnl
 endef
 
 define Package/genl
 $(call Package/iproute2/Default)
   TITLE:=General netlink utility frontend
-  DEPENDS:=+libnl-tiny +(PACKAGE_devlink||PACKAGE_rdma):libmnl +(PACKAGE_tc||PACKAGE_ip-full):libelf +PACKAGE_ip-full:libcap
+  DEPENDS:=+libnl-tiny +(PACKAGE_devlink||PACKAGE_rdma):libmnl +(PACKAGE_tc||PACKAGE_ip-full):libelf
 endef
 
 define Package/ip-bridge
 $(call Package/iproute2/Default)
   TITLE:=Bridge configuration utility from iproute2
-  DEPENDS:=+libnl-tiny +(PACKAGE_devlink||PACKAGE_rdma):libmnl +(PACKAGE_tc||PACKAGE_ip-full):libelf +PACKAGE_ip-full:libcap
+  DEPENDS:=+libnl-tiny +(PACKAGE_devlink||PACKAGE_rdma):libmnl +(PACKAGE_tc||PACKAGE_ip-full):libelf
 endef
 
 define Package/ss
 $(call Package/iproute2/Default)
   TITLE:=Socket statistics utility
-  DEPENDS:=+libnl-tiny +(PACKAGE_devlink||PACKAGE_rdma):libmnl +(PACKAGE_tc||PACKAGE_ip-full):libelf +PACKAGE_ip-full:libcap
+  DEPENDS:=+libnl-tiny +(PACKAGE_devlink||PACKAGE_rdma):libmnl +(PACKAGE_tc||PACKAGE_ip-full):libelf
 endef
 
 define Package/nstat
 $(call Package/iproute2/Default)
   TITLE:=Network statistics utility
-  DEPENDS:=+libnl-tiny +(PACKAGE_devlink||PACKAGE_rdma):libmnl +(PACKAGE_tc||PACKAGE_ip-full):libelf +PACKAGE_ip-full:libcap
+  DEPENDS:=+libnl-tiny +(PACKAGE_devlink||PACKAGE_rdma):libmnl +(PACKAGE_tc||PACKAGE_ip-full):libelf
 endef
 
 define Package/devlink
 $(call Package/iproute2/Default)
   TITLE:=Network devlink utility
-  DEPENDS:=+libmnl +(PACKAGE_tc||PACKAGE_ip-full):libelf +PACKAGE_ip-full:libcap
+  DEPENDS:=+libmnl +(PACKAGE_tc||PACKAGE_ip-full):libelf
 endef
 
 define Package/rdma
 $(call Package/iproute2/Default)
   TITLE:=Network rdma utility
-  DEPENDS:=+libmnl +(PACKAGE_tc||PACKAGE_ip-full):libelf +PACKAGE_ip-full:libcap
+  DEPENDS:=+libmnl +(PACKAGE_tc||PACKAGE_ip-full):libelf
 endef
 
 ifeq ($(BUILD_VARIANT),tiny)
@@ -100,7 +100,7 @@ endif
 
 ifeq ($(BUILD_VARIANT),full)
   HAVE_ELF:=y
-  HAVE_CAP:=y
+  HAVE_CAP:=n
 endif
 
 ifeq ($(BUILD_VARIANT),tc)
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
