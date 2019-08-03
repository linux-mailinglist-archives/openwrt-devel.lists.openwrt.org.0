Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F73C806F7
	for <lists+openwrt-devel@lfdr.de>; Sat,  3 Aug 2019 17:15:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LtGTD9BctTU4oJRhbo2F97cwLG0c6LclWf8nXYYT/OM=; b=QeQ2USBsD+PEkN
	PZnujq4WplrdbvSEQ57OLR7h14HbydeijPxILQoatZ3I9bFU6SGPfo5/I2htAUo4qjQluqMJOyD6h
	n3RmLCXDqn9sxz+enrWWxM2rDOSLJVFbQs6TgUZDEHJI0fE38Pkg01TjcZWvI0jkSmDuLt/Ja+0YH
	TcA6aeUldu1eaK8+7rXfSDJRAdYjYxYnDg3ZWQDYTOAXMkowCfwSYL2LNLBGNSjKjuILfyQ8Ug5sJ
	VNKUwPmwvvtJ/79QFFW9bOn90IZcrjx5JA/4GH23R0IkTpJFTPi1UiVQXKr5e3F6mN7B5VyVBjiJA
	rY/SGjnWiXcqSKGURyFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htvkW-0002wL-R8; Sat, 03 Aug 2019 15:15:12 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htvjn-0002i8-N8
 for openwrt-devel@lists.openwrt.org; Sat, 03 Aug 2019 15:14:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1564845263;
 bh=LhUWdfFxiNY12VeW89Nj2HfXtNux2EyxR2IFMG+ZRYY=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=PHOi2jAP6SX6SYD/2HtPURr3sW4hJb1WGhzpGY3YpPe9Vxq7JsPakHKXa+0rPA6y7
 68iiCG4w00lbK1WwoGxJ/sSWBcLQLXV2YdM9tPqSD7SeyYST2nOMEqUg3zgcXXlC4n
 ReA5R4l6qgMzOK3UUfZDHqa+sls3/e5R4fR21PKs=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from depc0045.ats ([77.181.84.240]) by mail.gmx.com (mrgmx102
 [212.227.17.168]) with ESMTPSA (Nemesis) id 0MBq8p-1i1rxo0Fap-00AkIY; Sat, 03
 Aug 2019 17:14:23 +0200
From: Arnold Schulz <arnysch@gmx.net>
To: jiri@slachta.eu
Date: Sat,  3 Aug 2019 17:13:55 +0200
Message-Id: <20190803151356.18733-2-arnysch@gmx.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190803151356.18733-1-arnysch@gmx.net>
References: <20190803151356.18733-1-arnysch@gmx.net>
MIME-Version: 1.0
X-Provags-ID: V03:K1:jbGPuyibAz/nNQyyjN+YuPG64MvgR4cQGQByQQNl8ZYbazrwcq7
 D5g9/IaZoaKsh9l4pDCuQzumn/CajYLdrzSsML5vSUlXBGUhDwSmLRJ05ToEfbOi9f+ef2/
 nwLIwc8vaVG7GGUwOFjzn1dzYNA7Nej0l1GQ7km4zC9QY+wsQI1U+Cp5oEd+rgcA9uzjZ05
 nWS/hMM0+sZIMuxsskdTQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:lD9J3VoDbBE=:VzoyeiATFHyZdpd5aIIVlH
 RhK5lReSi0+a9D2svYgER4rNQ8BMF6vTudFqFOVC23YO1nSuig0aQmbtEoL62KpBg0ay5Z9kc
 K40q6q0TQBfviw0hqD8xyzYZGsoOge8QWqelZ4rrAEo/PWBo03lzs9DzZm6IQEZ1fAYiTjQlu
 jXnaOsf2w2fnYXT6o8jAD2KaMuLY80j8NFbJqX8DZeza1U5aZN+bvDrun8sKSjBzqL0IZW4jn
 ZVSZ3MPncFZZgeytd9d8soxyACfz29tX3rl2cmMIWqG616ZposBsF8sGw/JXkZ29PJs13bUY2
 abXuv4PyYTDehpPNlPPJs2MNWA34q50uK6AlVebY2HsMSaLF5HFVOBoaO2zCsmfe3exbtri70
 6Njvl3beswZPnMaqYBKg7rC1Cg/ca1yQYIeDscWIzlUGkLKJPBgGqzuRdVKuhPjHMOy6tlSFQ
 cE53KErpIA9rwZeJfMqL+W2r5dYodLIkjqJe75WxS54NYCIfc1DIgq7LfpC2BFxES1LifnvKA
 g9+eXY8UPuhIhFFt8FBYwV8per0Mkfl1kncj+QG7ZkLqM2oqQIAXwAJIGsxGwLEgKEIo1znZq
 SUpJNjSI9JOt8VBl5Eg+vcI+4QRjoR4pqKc+I9aYFlasK1QhrNh9SnQHtDxdq5cdofLLQXI5F
 anhv21MndExWGysZ2mge6ognY6C/JTo6Hu0JCSBUwqTCK9iu+EGs7cugvvYZyxxxQxtJ41fw1
 v7gYcTM8SV5buc6ODhER004KFeOczhElJYkave1zks4zUqFdAbICOrdlcAIt3j4dGx6vyS/UE
 1hqrPbgSUNp8AjOBSwmfjdp7Bplz3q5Ya3JBx1iPgMy2nm77UXwGIQnPKbMVNbhEHmUs3WXNd
 IlNcsrn1mGYatR7aj5FegI9spsWpbefk3LjsrUThCPekcE/WA4VxcbdEDJSz6CeeeWXSMz9KN
 0Ui1ep/Ws9aDTtHM2Ihp1q/eC0sF5/Kzp/AO6KAAwiM2Lw88qIjw4Qgri+cqbd9HjbvLc2UaF
 WFaa6ZDZ9si3Tit+aMrKbPCJI2hz5UbrfOYZjMbbUEr1svEUX22sVMwqca4t76frn8TYLUe+l
 N3Orm2EAzUx/XrBx24Ln1m4jBP/HkwmSGoyHWFbXkmIvN/VjJSP9eVNUw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190803_081428_045198_54192DD9 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (arnysch[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [openwrt/telephony 1/2] asterisk16-chan-lantiq: Use
 upstream sources from 2019-09-03
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
Cc: Arnold Schulz <arnysch@gmx.net>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This solves:
- Fix build failure due to missing telephony.h in kernel 4.19 sources
- OpenWrt specific patch+file removed; this stuff is now in upstream

Signed-off-by: Arnold Schulz <arnysch@gmx.net>
---
 net/asterisk-16.x-chan-lantiq/Makefile        | 16 +++----
 .../files/default.exports                     |  8 ----
 ...-ast_free-instead-of-malloc-and-free.patch | 43 -------------------
 3 files changed, 5 insertions(+), 62 deletions(-)
 delete mode 100644 net/asterisk-16.x-chan-lantiq/files/default.exports
 delete mode 100644 net/asterisk-16.x-chan-lantiq/patches/01-Use-ast_malloc-and-ast_free-instead-of-malloc-and-free.patch

diff --git a/net/asterisk-16.x-chan-lantiq/Makefile b/net/asterisk-16.x-chan-lantiq/Makefile
index 5884673..8210c07 100644
--- a/net/asterisk-16.x-chan-lantiq/Makefile
+++ b/net/asterisk-16.x-chan-lantiq/Makefile
@@ -1,5 +1,5 @@
 #
-# Copyright (C) 2018 OpenWrt.org
+# Copyright (C) 2018-2019 OpenWrt.org
 #
 # This is free software, licensed under the GNU General Public License v2.
 # See /LICENSE for more information.
@@ -8,14 +8,14 @@
 include $(TOPDIR)/rules.mk

 PKG_NAME:=asterisk16-chan-lantiq
-PKG_VERSION:=20180215
-PKG_RELEASE:=2
+PKG_VERSION:=20190803
+PKG_RELEASE:=1

 PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
 PKG_SOURCE_URL:=https://github.com/kochstefan/asterisk_channel_lantiq.git
 PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)
-PKG_SOURCE_VERSION:=c9d68dd06fcd46ac7985df45f8c2b8833e658f8e
-PKG_MIRROR_HASH:=8666c18b24adf9da3ddf12306fcf0a8b4f56860c256b172bd0ba5c2a7a3ab25e
+PKG_SOURCE_VERSION:=1d940b38cde0348dfe129d2b764e6faee440c45b
+PKG_MIRROR_HASH:=ff838ff2a4c5353fadd73806e1513f59f224914582b6ba004165712268bc94e5
 PKG_SOURCE_PROTO:=git

 PKG_LICENSE:=GPL-2.0
@@ -43,12 +43,6 @@ define Package/$(PKG_NAME)/conffiles
 /etc/asterisk/lantiq.conf
 endef

-define Build/Prepare
-	$(call Build/Prepare/Default)
-	$(INSTALL_DATA) ./files/default.exports \
-		$(PKG_BUILD_DIR)/src/channels/chan_lantiq.exports
-endef
-
 define Build/Compile
 	cd $(PKG_BUILD_DIR)/src/channels && \
 	$(TARGET_CC) -o chan_lantiq.o -c chan_lantiq.c -MD -MT chan_lantiq.o \
diff --git a/net/asterisk-16.x-chan-lantiq/files/default.exports b/net/asterisk-16.x-chan-lantiq/files/default.exports
deleted file mode 100644
index 6d9344d..0000000
--- a/net/asterisk-16.x-chan-lantiq/files/default.exports
+++ /dev/null
@@ -1,8 +0,0 @@
-{
-	global:
-		/* See main/asterisk.exports.in for an explanation why this is
-		 * needed. */
-		_IO_stdin_used;
-	local:
-		*;
-};
diff --git a/net/asterisk-16.x-chan-lantiq/patches/01-Use-ast_malloc-and-ast_free-instead-of-malloc-and-free.patch b/net/asterisk-16.x-chan-lantiq/patches/01-Use-ast_malloc-and-ast_free-instead-of-malloc-and-free.patch
deleted file mode 100644
index f913b18..0000000
--- a/net/asterisk-16.x-chan-lantiq/patches/01-Use-ast_malloc-and-ast_free-instead-of-malloc-and-free.patch
+++ /dev/null
@@ -1,43 +0,0 @@
-commit 30f9a094c1c60e0d68e4ea189f48ecb47aebb485
-Author: arny <arnysch@gmx.net>
-Date:   Thu May 2 20:07:28 2019 +0200
-
-    Use ast_malloc and ast_free instead of malloc and free
-    in order to get rid of build errors with asterisk16 in OpenWrt
-
-    Signed-off-by: arny <arnysch@gmx.net>
-
-diff --git a/src/channels/chan_lantiq.c b/src/channels/chan_lantiq.c
-index a8fc869..90002ab 100644
---- a/src/channels/chan_lantiq.c
-+++ b/src/channels/chan_lantiq.c
-@@ -563,9 +563,9 @@ lantiq_dev_binary_buffer_create(const char *path, uint8_t **ppBuf, uint32_t *pBu
- 		goto on_exit;
- 	}
-
--	*ppBuf = malloc(file_stat.st_size);
-+	*ppBuf = ast_malloc(file_stat.st_size);
- 	if (*ppBuf == NULL) {
--		ast_log(LOG_ERROR, "binary file %s memory allocation failed\n", path);
-+		// Message already logged by ast_malloc
- 		goto on_exit;
- 	}
-
-@@ -583,7 +583,7 @@ on_exit:
- 		fclose(fd);
-
- 	if (*ppBuf != NULL && status)
--		free(*ppBuf);
-+		ast_free(*ppBuf);
-
- 	return status;
- }
-@@ -609,7 +609,7 @@ static int32_t lantiq_dev_firmware_download(int32_t fd, const char *path)
- 	}
-
- 	if (firmware != NULL)
--		free(firmware);
-+		ast_free(firmware);
-
- 	return 0;
- }
--
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
