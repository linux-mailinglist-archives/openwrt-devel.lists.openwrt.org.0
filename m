Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FCCD5B7F8
	for <lists+openwrt-devel@lfdr.de>; Mon,  1 Jul 2019 11:25:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:Date:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ADrpAz6Pv7Gkbu4i2n44wTtC6+RVWWML+N0BBY8c5kg=; b=CNGuvBYj/frj9o
	vijjiCQlZ/FJbRxO4JaRzPQqeK/9mzsRYR63EtVFTZrKbd1MfpIQFPnZljeKNeVnr6569eVUpLaff
	w17WOusEWJ4t1qeMWgQxhdJiqA0wPx25Oe3L831TCabgK7NGDmKXrK3vPQPf6YnD23IJBmRNRLY/7
	bbdKY/76D3NpEa5dF494D4jWCeg+rUqkxD9ZeFhl/jyrlE1jhHm2RCik89Fl05MggB8pY3+Z4FRI4
	mH2RBiD5cIxo6kh6vimbKIPzYdFsez5gy7IhK8yxGWAoAor6tV+K/guonAGRnwBgh17PQB0SRRMh6
	oQIFAXMeEWh9Z9nUOwBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhsYl-00030S-M5; Mon, 01 Jul 2019 09:25:15 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhsYO-0002zt-3q
 for openwrt-devel@lists.openwrt.org; Mon, 01 Jul 2019 09:24:53 +0000
Received: by mail-wm1-x343.google.com with SMTP id s15so15043334wmj.3
 for <openwrt-devel@lists.openwrt.org>; Mon, 01 Jul 2019 02:24:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=dehamULQaLkTsvd3zFxFwlmI3HWq45F/TgyxcD6gB2Q=;
 b=JHNfMFuDo3OjRP2KfhpVVae7ygKiGRMpbKjS4tEJDCXuJQOO+/zi7SDDilVW6tz7/5
 CSuyulCyWxJ+m/qtBYQSltSOENxRMmyGCi7P54hmyp6cU3Rw938H6Qx4xYucrQpRq7+B
 JnJuNusLeJ+Uh9FZwzmGVE1xmaE5QTX9apPJU7jDpilkH6IrOOy9pSTGKISG1E6TRfSv
 JD8TGUISDxeu0lgYSzHY6XhxC5oqfgScQ3qLgbKPYLZCHacLQwseSb0+uzpRxAXjlAZw
 RI98HRuTXy4Yy50pjOze5eaPdJQdxjyvIOj0M5VHXDZmb3Ve2TfqDwp8jOW4F6PbOHjT
 BqAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=dehamULQaLkTsvd3zFxFwlmI3HWq45F/TgyxcD6gB2Q=;
 b=S4f26qGggPCk7c68bQWWEu5S/DUt8JArrLrmm6JaQKltwatts+wynXVWySARQHKX/B
 clJq+NwzABQNFtkKTN+UnDzrsNiZ2UDsTcDXZzeiQz3zuHvAQKAj3hlEi/NCoYqFXjF1
 TmvLejgTm3BRHM7QH+fqliWXEV5PC2P6+Hgxpbdjtf+dDWBmq8UN7qpIp02NqTQU6B6n
 EWn+calsVh/fiYw5RDBLK9CG13LndYVr5nveaoY5twYswHdhBKzU2dWbap+nkgxhDcWn
 M73KzsBxRXT3ZY06W7gSHnU2uWdznCdmvQ91dI1zy143AeM4C0NB8oqids1kwJQPZUm1
 ahVQ==
X-Gm-Message-State: APjAAAUxwwe02acdVHYhT1dVjmHvyKIa00cBHJqSVZeFoh72qdO2LqXb
 E5XpO9wZmEiMVdHNRXtrEKY7ZP6p
X-Google-Smtp-Source: APXvYqxUbatr7SSoS81zRcBwcyxEPahmr4qaibtPlL7SX7RPYCIaPp3HMbs03/lftYm+eDuXoYfb/w==
X-Received: by 2002:a7b:c933:: with SMTP id h19mr11781192wml.52.1561973090252; 
 Mon, 01 Jul 2019 02:24:50 -0700 (PDT)
Received: from cplx1037.edegem.eu.thmulti.com
 ([2001:4158:f012:aa0:2a10:7bff:fec5:6f08])
 by smtp.gmail.com with ESMTPSA id r2sm8869490wme.30.2019.07.01.02.24.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 01 Jul 2019 02:24:49 -0700 (PDT)
From: Alin Nastac <alin.nastac@gmail.com>
To: Russell Senior <russell@personaltelco.net>, openwrt-devel@lists.openwrt.org
Date: Mon,  1 Jul 2019 11:24:43 +0200
Message-Id: <1561973083-15926-1-git-send-email-alin.nastac@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_022452_157943_C9EEDEE2 
X-CRM114-Status: GOOD (  11.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (alin.nastac[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] iproute2: add libcap support,
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

Preserve optionality of libcap by having configuration script follow the
HAVE_CAP environment variable, used similarly to the HAVE_ELF variable.

Signed-off-by: Alin Nastac <alin.nastac@gmail.com>
---
 package/network/utils/iproute2/Makefile                | 18 ++++++++++--------
 .../iproute2/patches/150-keep_libcap_optional.patch    | 12 ++++++++++++
 2 files changed, 22 insertions(+), 8 deletions(-)
 create mode 100644 package/network/utils/iproute2/patches/150-keep_libcap_optional.patch

diff --git a/package/network/utils/iproute2/Makefile b/package/network/utils/iproute2/Makefile
index 0f09b79..8792eb9 100644
--- a/package/network/utils/iproute2/Makefile
+++ b/package/network/utils/iproute2/Makefile
@@ -49,7 +49,7 @@ $(call Package/iproute2/Default)
  VARIANT:=full
  PROVIDES:=ip
  ALTERNATIVES:=300:/sbin/ip:/usr/libexec/ip-full
- DEPENDS:=+libnl-tiny +libelf +(PACKAGE_devlink||PACKAGE_rdma):libmnl
+ DEPENDS:=+libnl-tiny +libelf +(PACKAGE_devlink||PACKAGE_rdma):libmnl +libcap
 endef
 
 define Package/tc
@@ -57,43 +57,43 @@ $(call Package/iproute2/Default)
   TITLE:=Traffic control utility
   VARIANT:=tc
   PROVIDES:=tc
-  DEPENDS:=+kmod-sched-core +libxtables +libelf +(PACKAGE_devlink||PACKAGE_rdma):libmnl
+  DEPENDS:=+kmod-sched-core +libxtables +libelf +(PACKAGE_devlink||PACKAGE_rdma):libmnl +PACKAGE_ip-full:libcap
 endef
 
 define Package/genl
 $(call Package/iproute2/Default)
   TITLE:=General netlink utility frontend
-  DEPENDS:=+libnl-tiny +(PACKAGE_devlink||PACKAGE_rdma):libmnl +(PACKAGE_tc||PACKAGE_ip-full):libelf
+  DEPENDS:=+libnl-tiny +(PACKAGE_devlink||PACKAGE_rdma):libmnl +(PACKAGE_tc||PACKAGE_ip-full):libelf +PACKAGE_ip-full:libcap
 endef
 
 define Package/ip-bridge
 $(call Package/iproute2/Default)
   TITLE:=Bridge configuration utility from iproute2
-  DEPENDS:=+libnl-tiny +(PACKAGE_devlink||PACKAGE_rdma):libmnl +(PACKAGE_tc||PACKAGE_ip-full):libelf
+  DEPENDS:=+libnl-tiny +(PACKAGE_devlink||PACKAGE_rdma):libmnl +(PACKAGE_tc||PACKAGE_ip-full):libelf +PACKAGE_ip-full:libcap
 endef
 
 define Package/ss
 $(call Package/iproute2/Default)
   TITLE:=Socket statistics utility
-  DEPENDS:=+libnl-tiny +(PACKAGE_devlink||PACKAGE_rdma):libmnl +(PACKAGE_tc||PACKAGE_ip-full):libelf
+  DEPENDS:=+libnl-tiny +(PACKAGE_devlink||PACKAGE_rdma):libmnl +(PACKAGE_tc||PACKAGE_ip-full):libelf +PACKAGE_ip-full:libcap
 endef
 
 define Package/nstat
 $(call Package/iproute2/Default)
   TITLE:=Network statistics utility
-  DEPENDS:=+libnl-tiny +(PACKAGE_devlink||PACKAGE_rdma):libmnl +(PACKAGE_tc||PACKAGE_ip-full):libelf
+  DEPENDS:=+libnl-tiny +(PACKAGE_devlink||PACKAGE_rdma):libmnl +(PACKAGE_tc||PACKAGE_ip-full):libelf +PACKAGE_ip-full:libcap
 endef
 
 define Package/devlink
 $(call Package/iproute2/Default)
   TITLE:=Network devlink utility
-  DEPENDS:=+libmnl +(PACKAGE_tc||PACKAGE_ip-full):libelf
+  DEPENDS:=+libmnl +(PACKAGE_tc||PACKAGE_ip-full):libelf +PACKAGE_ip-full:libcap
 endef
 
 define Package/rdma
 $(call Package/iproute2/Default)
   TITLE:=Network rdma utility
-  DEPENDS:=+libmnl +(PACKAGE_tc||PACKAGE_ip-full):libelf
+  DEPENDS:=+libmnl +(PACKAGE_tc||PACKAGE_ip-full):libelf +PACKAGE_ip-full:libcap
 endef
 
 ifeq ($(BUILD_VARIANT),tiny)
@@ -102,6 +102,7 @@ endif
 
 ifeq ($(BUILD_VARIANT),full)
   HAVE_ELF:=y
+  HAVE_CAP:=y
 endif
 
 ifeq ($(BUILD_VARIANT),tc)
@@ -132,6 +133,7 @@ MAKE_FLAGS += \
 	IP_CONFIG_TINY=$(IP_CONFIG_TINY) \
 	HAVE_ELF=$(HAVE_ELF) \
 	HAVE_MNL=$(HAVE_MNL) \
+	HAVE_CAP=$(HAVE_CAP) \
 	IPT_LIB_DIR=/usr/lib/iptables \
 	XT_LIB_DIR=/usr/lib/iptables \
 	FPIC="$(FPIC)"
diff --git a/package/network/utils/iproute2/patches/150-keep_libcap_optional.patch b/package/network/utils/iproute2/patches/150-keep_libcap_optional.patch
new file mode 100644
index 0000000..8fe23ae
--- /dev/null
+++ b/package/network/utils/iproute2/patches/150-keep_libcap_optional.patch
@@ -0,0 +1,12 @@
+diff -Nru a/configure b/configure
+--- a/configure	2019-07-01 10:35:39.142807973 +0200
++++ b/configure	2019-07-01 10:46:40.518832990 +0200
+@@ -307,7 +307,7 @@
+ 
+ check_cap()
+ {
+-	if ${PKG_CONFIG} libcap --exists; then
++	if [ "${HAVE_CAP}" = "y" ] && ${PKG_CONFIG} libcap --exists; then
+ 		echo "HAVE_CAP:=y" >>$CONFIG
+ 		echo "yes"
+ 
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
