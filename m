Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68423100E91
	for <lists+openwrt-devel@lfdr.de>; Mon, 18 Nov 2019 23:06:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BaSOdGMMiVes2CenLvBzeN2itL1Figaao1q2/lygwiA=; b=NfNzIjqE7KOS6x
	zRHdeATPGll7YQTr4kgu5lbLMeVDJ4h/PtGu1yuWQpNOVMGQXq5dHN5W7yIXYEgTrz4b1R6iUhNvY
	uuU/15DyeNTWDOeAAVSF3jg0Zv0Y+0t+3Az3Hz0bEZIJhvxPpn8iGIv9wHQRvjmRZPycmDdBG3QWh
	TY7aZsmMmg+v6AeMOmc5k3we3EcyxciwGZyMakGvtjfuPhDBgpJxEVaJImyCaG+O8izAb3wAdXLIt
	8NwOIy3J77QLCojnqkVGXVCroPutAifBo7/DsFRCwWQdg6YquHm25iFhZ9RuJlLfDZY+m3mzpRpF/
	ZvbLYlmf4xj06l0wsgCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWp9l-0007wj-Pw; Mon, 18 Nov 2019 22:06:01 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWp9a-0007w8-SU
 for openwrt-devel@lists.openwrt.org; Mon, 18 Nov 2019 22:05:57 +0000
Received: by mail-pl1-x635.google.com with SMTP id l4so10532993plt.13
 for <openwrt-devel@lists.openwrt.org>; Mon, 18 Nov 2019 14:05:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yHfN5rf0XX1dYWfqACosRuAnjx/Uh5E5ChVFb/O06dw=;
 b=nOYbtxxwArbBFgjv3l1UQKsoEpA2fwH8J92L2ub3Z0bhxExCfQP/IwskQtQyqluPKl
 bJjfWM1xDZ0loBXZ1RIDBixFpAlVh1Vls/7FHg4W6F6hKGINkSg7P43UlN5M+Jh2oZgG
 garn48RhURkgT8XB+dWk50NdniYbmq9++GzYHzjECIhCoSiKfGXuT6QPkLHniYGJHIwp
 m14/rhAHPOa5cKmrTFEJl7Wd9D4giS9GdFZ7xIm3QgXyzw15QrAEiUDyFSWesdPPhm52
 d1t8M66do6d+ys46CWc3/nsQjZm05LEEicZO+8bJevqEEE5ph0PPK3K8EaUXIXPn7Um9
 8UNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=yHfN5rf0XX1dYWfqACosRuAnjx/Uh5E5ChVFb/O06dw=;
 b=r2RWlIzILsjnzus+y4MH7kWpHaBaJ3iobS1fbVvrcL9zP8kCCXjtouoG0+IoQgjWq1
 as0V3zxFh9DDgHwo71uzzCXjH1zSzEdCfvsQAu8gR9onRJurTC49z7x/XpFJdJKnVv3B
 omysfePcBjob6JyeyWbtxyBr8hWK3xl3nqUzWU4lrkDuyPfcl+QQ0YpqkiDb29inQu3b
 loPsKYVXKIT9I/rILJUFFKvXoyH6ZgwLeNUtXU2oaM2pL63ceRi8yKKNffSvruz3kLVD
 fMdTBYqwQTzKJsqGeI2Cw4sxvOWUV7E5iuEcACF/WxN0WUJ8p2nQHOmqa2fXN9qSvUUR
 xp3Q==
X-Gm-Message-State: APjAAAUAeln0gc5k1jm75nzpeUP8BcyPoOetZkOKeDPTQrcAFtVFJRVx
 ZaZTMww0s7/+ETAnf4Q8cnJs53Sw
X-Google-Smtp-Source: APXvYqy8sg4j8iPX5+xrUaK2ZTbtegO18yub5a1icIPigxo5LdQDDAnx4mCDRqjJ155nkwMbnTsjJQ==
X-Received: by 2002:a17:90a:bb94:: with SMTP id
 v20mr1708062pjr.62.1574114746894; 
 Mon, 18 Nov 2019 14:05:46 -0800 (PST)
Received: from computer.lan (119246230037.ctinets.com. [119.246.230.37])
 by smtp.gmail.com with ESMTPSA id f24sm435241pjp.12.2019.11.18.14.05.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 14:05:46 -0800 (PST)
From: Jeffery To <jeffery.to@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 19 Nov 2019 06:04:59 +0800
Message-Id: <20191118220459.14022-1-jeffery.to@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_140553_392964_D65CC091 
X-CRM114-Status: GOOD (  11.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:635 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jeffery.to[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] toolchain/gcc: Backport patch to fix
 unconditional MULTIARCH_DIRNAME
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
Cc: Jeffery To <jeffery.to@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This backports the patch for GCC PR target/89587 (gcc's rs6000
configuration unconditionally sets MULTIARCH_DIRNAME, even when
multiarch is disabled).

This currently affects apm821xx and may cause issues when
cross-compiling packages, e.g. Python 3[1].

This includes patches for GCC 7 and 8 (with the changelog diff removed);
this change is already included in GCC 9.2.

[1]: https://github.com/openwrt/packages/issues/10552

Signed-off-by: Jeffery To <jeffery.to@gmail.com>
---
 .../patches/7.4.0/090-rs6000-PR-89587.patch   | 33 +++++++++++++++++++
 .../patches/8.3.0/090-rs6000-PR-89587.patch   | 30 +++++++++++++++++
 2 files changed, 63 insertions(+)
 create mode 100644 toolchain/gcc/patches/7.4.0/090-rs6000-PR-89587.patch
 create mode 100644 toolchain/gcc/patches/8.3.0/090-rs6000-PR-89587.patch

diff --git a/toolchain/gcc/patches/7.4.0/090-rs6000-PR-89587.patch b/toolchain/gcc/patches/7.4.0/090-rs6000-PR-89587.patch
new file mode 100644
index 0000000000..00d5c3ce5c
--- /dev/null
+++ b/toolchain/gcc/patches/7.4.0/090-rs6000-PR-89587.patch
@@ -0,0 +1,33 @@
+From 0eec4161396ba6cf6052e1076d4548418c6ebcc1 Mon Sep 17 00:00:00 2001
+From: jakub <jakub@138bc75d-0d04-0410-961f-82ee72b054a4>
+Date: Fri, 30 Aug 2019 12:12:56 +0000
+Subject: [PATCH] 	Backported from mainline 	2019-03-05  Jakub
+ Jelinek  <jakub@redhat.com>
+
+	PR target/89587
+	* config/rs6000/t-linux (MULTIARCH_DIRNAME): Set to non-empty only
+	if_multiarch.
+
+
+git-svn-id: svn+ssh://gcc.gnu.org/svn/gcc/branches/gcc-7-branch@275123 138bc75d-0d04-0410-961f-82ee72b054a4
+---
+ gcc/ChangeLog             | 4 ++++
+ gcc/config/rs6000/t-linux | 4 ++--
+ 2 files changed, 6 insertions(+), 2 deletions(-)
+
+diff --git a/gcc/config/rs6000/t-linux b/gcc/config/rs6000/t-linux
+index 4cb63bdca5d1..23f3fd236df3 100644
+--- a/gcc/config/rs6000/t-linux
++++ b/gcc/config/rs6000/t-linux
+@@ -5,9 +5,9 @@ ifneq (,$(findstring powerpc64,$(target)))
+ MULTILIB_OSDIRNAMES := .=../lib64$(call if_multiarch,:powerpc64-linux-gnu)
+ else
+ ifneq (,$(findstring spe,$(target)))
+-MULTIARCH_DIRNAME := powerpc-linux-gnuspe$(if $(findstring 8548,$(with_cpu)),,v1)
++MULTIARCH_DIRNAME := $(call if_multiarch,powerpc-linux-gnuspe$(if $(findstring 8548,$(with_cpu)),,v1))
+ else
+-MULTIARCH_DIRNAME := powerpc-linux-gnu
++MULTIARCH_DIRNAME := $(call if_multiarch,powerpc-linux-gnu)
+ endif
+ endif
+ ifneq (,$(findstring powerpcle,$(target)))
diff --git a/toolchain/gcc/patches/8.3.0/090-rs6000-PR-89587.patch b/toolchain/gcc/patches/8.3.0/090-rs6000-PR-89587.patch
new file mode 100644
index 0000000000..83bfbbe712
--- /dev/null
+++ b/toolchain/gcc/patches/8.3.0/090-rs6000-PR-89587.patch
@@ -0,0 +1,30 @@
+From 045e60da05ec1d4997864883143a951f152cfc9f Mon Sep 17 00:00:00 2001
+From: jakub <jakub@138bc75d-0d04-0410-961f-82ee72b054a4>
+Date: Tue, 30 Apr 2019 20:37:12 +0000
+Subject: [PATCH] 	Backported from mainline 	2019-03-05  Jakub
+ Jelinek  <jakub@redhat.com>
+
+	PR target/89587
+	* config/rs6000/t-linux (MULTIARCH_DIRNAME): Set to non-empty only
+	if_multiarch.
+
+
+git-svn-id: svn+ssh://gcc.gnu.org/svn/gcc/branches/gcc-8-branch@270720 138bc75d-0d04-0410-961f-82ee72b054a4
+---
+ gcc/ChangeLog             | 4 ++++
+ gcc/config/rs6000/t-linux | 2 +-
+ 2 files changed, 5 insertions(+), 1 deletion(-)
+
+diff --git a/gcc/config/rs6000/t-linux b/gcc/config/rs6000/t-linux
+index acfde1f48aec..aeb7440c4920 100644
+--- a/gcc/config/rs6000/t-linux
++++ b/gcc/config/rs6000/t-linux
+@@ -4,7 +4,7 @@ ifeq (,$(filter $(with_cpu),$(SOFT_FLOAT_CPUS))$(findstring soft,$(with_float)))
+ ifneq (,$(findstring powerpc64,$(target)))
+ MULTILIB_OSDIRNAMES := .=../lib64$(call if_multiarch,:powerpc64-linux-gnu)
+ else
+-MULTIARCH_DIRNAME := powerpc-linux-gnu
++MULTIARCH_DIRNAME := $(call if_multiarch,powerpc-linux-gnu)
+ endif
+ ifneq (,$(findstring powerpcle,$(target)))
+ MULTIARCH_DIRNAME := $(subst -linux,le-linux,$(MULTIARCH_DIRNAME))
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
