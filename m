Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B89A184A07
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Mar 2020 15:55:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Fy8JZjxJsuBWbq9GyzEMQXvjZq8nXxg+sWG9wi/aO8=; b=EwriBrjpAICgC1
	n4fOZJe+xyL+uVLXnRzCXuFMUhVzJA8UVx69xAepR6ONoH59GHmWR0YDmrDzvpoXkB/j4MBOZPlL6
	oP/qJc1IeqXNTOCLEtNQtW7ZaLZYEo+kidXzp6LXIP17pmnDgavcLwZ7cpXvem8nUczWG4jtsLInc
	zyq/UGu2uM/YoCL5fPeVhLdJTk+AahNDCc3Zv0mrp0fj2Iw6Y4F4hxHQKD3qmDhS9qieBi7mlEWxU
	OowHEFaa4F8PqMhSCoIbuumV82i7wQ9yWJ/CTvZHvXO01+fHE+VNd/IqyIxHJJJzsWKbUAwWm6O2v
	2TbulUVwyKQ1HkE5ZdZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCliU-0003ns-E1; Fri, 13 Mar 2020 14:55:14 +0000
Received: from mxout01.bytecamp.net ([212.204.60.217])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCliC-0003lq-Jz
 for openwrt-devel@lists.openwrt.org; Fri, 13 Mar 2020 14:54:58 +0000
Received: by mxout01.bytecamp.net (Postfix, from userid 1001)
 id A91F94596D; Fri, 13 Mar 2020 15:54:53 +0100 (CET)
Received: from mail.bytecamp.net (mail.bytecamp.net [212.204.60.9])
 by mxout01.bytecamp.net (Postfix) with ESMTP id 27DC34596B
 for <openwrt-devel@lists.openwrt.org>; Fri, 13 Mar 2020 15:54:53 +0100 (CET)
Received: (qmail 38814 invoked from network); 13 Mar 2020 15:54:53 +0100
Received: from unknown (HELO j7.lan) (jo%wwsnet.net@95.90.36.22)
 by mail.bytecamp.net with ESMTPS (DHE-RSA-AES128-GCM-SHA256 encrypted);
 13 Mar 2020 15:54:53 +0100
From: Jo-Philipp Wich <jo@mein.io>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 13 Mar 2020 15:54:50 +0100
Message-Id: <20200313145450.1962201-1-jo@mein.io>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200313143339.GA20674@meh.true.cz>
References: <20200313143339.GA20674@meh.true.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_075456_810340_24566DEC 
X-CRM114-Status: UNSURE (   6.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.204.60.217 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] pkgconf: always retain -I and -L flags
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
Cc: Jo-Philipp Wich <jo@mein.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The pkgconf fork filters -I and -L flag values from .pc files which match
pkgconf's builtin system directory value.

During configure, pkgconf derives the default system include and library
search path values from exec_prefix, which is set to staging_dir/host in
the host tool build phase.

Due to that, pkgconf will drop all -I and -L flags pointing to
staging_dir/host/include or staging_dir/host/lib, unless invoked with
--keep-system-cflags and --keep-system-libs respectively, breaking our
kernel libelf discovery / stack validation workarounds.

In order to inhibit the filtering, add --keep-system-cflags and
--keep-system-libs to our pkg-config shell wrapper.

Fixes: GH#2832
Fixes: 867298cf47 ("tools/pkg-config: Replace with pkgconf")
Ref: https://lists.infradead.org/pipermail/openwrt-devel/2020-March/022182.html
Ref: https://git.openwrt.org/fe43969336201f2cc7d103b68fd6e65989bee184
Signed-off-by: Jo-Philipp Wich <jo@mein.io>
---
 tools/pkgconf/files/pkg-config | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/tools/pkgconf/files/pkg-config b/tools/pkgconf/files/pkg-config
index fa1faccc6c..2c6fd08b4a 100755
--- a/tools/pkgconf/files/pkg-config
+++ b/tools/pkgconf/files/pkg-config
@@ -1,6 +1,8 @@
 #!/bin/sh
 
 pkg-config.real \
+--keep-system-cflags \
+--keep-system-libs \
 --define-variable=prefix="${STAGING_PREFIX}" \
 --define-variable=exec_prefix="${STAGING_PREFIX}" \
 --define-variable=bindir="${STAGING_PREFIX}/bin" "$@"
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
