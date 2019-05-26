Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8DEA2AA9A
	for <lists+openwrt-devel@lfdr.de>; Sun, 26 May 2019 18:07:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=O78OewAM4LcUsJwParmE1jitB8iIQ5bZBqdBkHCACk4=; b=EG/wJ2mUKSaroF
	dLCLL1g00QmHB5xXeK13IvXM+UV66XWhBRaP3TOPZMcOMLEiZy2DgZ/hbOuUeu0W1BK5oLj9JM9FR
	tkN/dW/mnuzRlyxyprb0tVJrM9P64L6ppVHNf8f9fAS7H9kKfc+L2xSZlrGRMW0YcSbYJhaGztYyI
	pgoLBRnq9Vwmt2hv5Gkv2sjS30mB3k9Vbp0KvSe3cI77GTyccXOYDHajrdJcz/JzmhsOecKnpgJEg
	3MuXaKC0wMNMv0zh4vPDiTqOuTg0YTI3xA/coI1s7OyEsuYW1EkX+CuqmmBSI49x0xtsmF7svH8EX
	/i7PiEkC8srIHqPdEplg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUvg1-0002s2-96; Sun, 26 May 2019 16:07:13 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUvfu-0002ra-2J
 for openwrt-devel@lists.openwrt.org; Sun, 26 May 2019 16:07:07 +0000
Received: by mail-pf1-x442.google.com with SMTP id n19so8131931pfa.1
 for <openwrt-devel@lists.openwrt.org>; Sun, 26 May 2019 09:07:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lEApqQ8/Y6CclTEqpga/xwHD/C+fpo877Ykv/+v6FsQ=;
 b=T67OPenE7pCI00FuP5/8yMBhPNY2aeTC3UcC2tu4sha1q7qwfTZDhZhasXbQ/d0bjl
 kuwtunCasZ3OGoKr3tx6SvqClCqgF8TJ9RLsg+2+HFU6sqn9yJ3q7mEVpwBH/rHUuGQw
 YMLc+MNwm8ctD6C8EsAFd0KD9WZ1VY/5derI7DRXfiFhqXVKD+73JWmHyGg2lIsgur2X
 ld8/lJQDc0jsx5f8CaJ3zDaZ/nrdBvg8692Hic0rLH0hERRMTZ5K2SAL+Pc2bRvBd6YL
 9tG3MuInjwyLFWF56Fl98tdBpJUH478XQGzJVG+MV9rHGgfs2XfRrM3ojiLmW8ILNm5w
 hnFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lEApqQ8/Y6CclTEqpga/xwHD/C+fpo877Ykv/+v6FsQ=;
 b=RYY9W+uZpcP/rHmiJcfSn4yW4cEHH8+QpWZ7Auc2xLjsmGtXyKU105a5QtZmGp1I42
 Rr2umz6dgPhnEcYR4RHwM76gIPd0LHrw69cmbF6V4W7wmvBRvSlPZGgLl2HbAz5ugLio
 02xWvg6Gs1+YFqO4oqa+5yAtQlIYjkqW2PoR+JBSNyDUA5Jx9Xjaxtn46c5rFAkV+aNE
 or2i2ExdRtZ2FyJ5aAgKwyDymdfRcH00OL7tVPxIgNY+aOfcZP15x3+oYEu6pp3BoXqz
 aaU1yNQMcYm7ZsagFs6LX+mMsV6er6jYEPNSKMB/nj5SJHEH/oPnR+p6YlqGb6g3mjjz
 tAPA==
X-Gm-Message-State: APjAAAXoH45HsAybwYeQWVqTNwxBjDbLhqu3NYN9kmbIfZyPKEaqMj2A
 Wh5jdKBe4YZjH31qrlQOga0yyAq8
X-Google-Smtp-Source: APXvYqzZ8Efy7HZ8/AbJbhfVUWQveFYvykMPZvwwqC/Alk23m2eY8qIvc1edufQYOUX+T/UwFclKmA==
X-Received: by 2002:a65:638e:: with SMTP id h14mr46925416pgv.209.1558886824442; 
 Sun, 26 May 2019 09:07:04 -0700 (PDT)
Received: from titan.hq.cloud.yunionyun.com
 (165.116.92.34.bc.googleusercontent.com. [34.92.116.165])
 by smtp.gmail.com with ESMTPSA id k2sm7695580pjl.23.2019.05.26.09.07.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 26 May 2019 09:07:03 -0700 (PDT)
From: Yousong Zhou <yszhou4tech@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 26 May 2019 16:06:47 +0000
Message-Id: <20190526160647.5874-1-yszhou4tech@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_090706_108829_2BB617A2 
X-CRM114-Status: GOOD (  11.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH] dnsmasq: skip options that are not compiled
 in
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: Yousong Zhou <yszhou4tech@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This is to make life easier for users with customized build of
dnsmasq-full variant.  E.g. dnsmasq config generated by current service
script will be rejected by dnsmasq without DHCP

 - Options like --dhcp-leasefile have default values.  Deleting them
   from uci config or setting them to empty value will make them take on
   default value in the end
 - Options like --dhcp-broadcast are output unconditionally

Tackle this by

 - Check availablility of features from output "dnsmasq --version"
 - Make a list of options guarded by HAVE_xx macros in src/options.c of
   dnsmasq source code
 - Ignore these options in xappend()

Two things to note in this implementation

 - The option list is not exhausted.  Supposedly only those options that
   may cause dnsmasq to reject with "unsupported option (check that
   dnsmasq was compiled with DHCP/TFTP/DNSSEC/DBus support)" are taken
   into account here
 - This provides a way out but users' cooperation is still needed.  E.g.
   option dnssec needs to be turned off, otherwise the service script
   will try to add --conf-file pointing to dnssec specific anchor file
   which dnsmasq lacking dnssec support will reject

Resolves FS#2281

Signed-off-by: Yousong Zhou <yszhou4tech@gmail.com>
---
 package/network/services/dnsmasq/Makefile     |  2 +-
 .../services/dnsmasq/files/dnsmasq.init       | 36 +++++++++++++++++--
 2 files changed, 35 insertions(+), 3 deletions(-)

diff --git a/package/network/services/dnsmasq/Makefile b/package/network/services/dnsmasq/Makefile
index 1710ded5f8..419526bdd8 100644
--- a/package/network/services/dnsmasq/Makefile
+++ b/package/network/services/dnsmasq/Makefile
@@ -10,7 +10,7 @@ include $(TOPDIR)/rules.mk
 PKG_NAME:=dnsmasq
 PKG_UPSTREAM_VERSION:=2.80
 PKG_VERSION:=$(subst test,~~test,$(subst rc,~rc,$(PKG_UPSTREAM_VERSION)))
-PKG_RELEASE:=11
+PKG_RELEASE:=12
 
 PKG_SOURCE:=$(PKG_NAME)-$(PKG_UPSTREAM_VERSION).tar.xz
 PKG_SOURCE_URL:=http://thekelleys.org.uk/dnsmasq
diff --git a/package/network/services/dnsmasq/files/dnsmasq.init b/package/network/services/dnsmasq/files/dnsmasq.init
index 93a8f9a108..e19c56f6a9 100644
--- a/package/network/services/dnsmasq/files/dnsmasq.init
+++ b/package/network/services/dnsmasq/files/dnsmasq.init
@@ -22,10 +22,42 @@ DHCPSCRIPT="/usr/lib/dnsmasq/dhcp-script.sh"
 
 DNSMASQ_DHCP_VER=4
 
+dnsmasq_features="$(dnsmasq --version | grep -m1 'Compile time options:' | cut -d: -f2) "
+[ "${dnsmasq_features#* DHCP }" = "$dnsmasq_features" ] || dnsmasq_has_dhcp=1
+[ "${dnsmasq_features#* DHCPv6 }" = "$dnsmasq_features" ] || dnsmasq_has_dhcp6=1
+[ "${dnsmasq_features#* DNSSEC }" = "$dnsmasq_features" ] || dnsmasq_has_dnssec=1
+[ "${dnsmasq_features#* TFTP }" = "$dnsmasq_features" ] || dnsmasq_has_tftp=1
+[ "${dnsmasq_features#* ipset }" = "$dnsmasq_features" ] || dnsmasq_has_ipset=1
+dnsmasq_ignore_opt() {
+	local opt="$1"
+
+	case "$opt" in
+		dhcp-duid|\
+		ra-param)
+			[ -z "$dnsmasq_has_dhcp6" ] ;;
+		dhcp-*|\
+		bootp-*|\
+		pxe-*)
+			[ -z "$dnsmasq_has_dhcp" ] ;;
+		dnssec-*|\
+		trust-anchor)
+			[ -z "$dnsmasq_has_dnssec" ] ;;
+		tftp-*)
+			[ -z "$dnsmasq_has_tftp" ] ;;
+		ipset)
+			[ -z "$dnsmasq_has_ipset" ] ;;
+		*)
+			return 1
+	esac
+}
+
 xappend() {
-	local value="$1"
+	local value="${1#--}"
+	local opt="${value%%=*}"
 
-	echo "${value#--}" >> $CONFIGFILE_TMP
+	if ! dnsmasq_ignore_opt "$opt"; then
+		echo "$value" >>$CONFIGFILE_TMP
+	fi
 }
 
 hex_to_hostid() {

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
