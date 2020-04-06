Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2708219FECE
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Apr 2020 22:11:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rLLOcxQ4Laq14Rm7DF6Co72w5COG6tWe2KV8PPNqHo0=; b=uOTzfuj2SvQZXP
	mBhJ1aMlx+pjmF9plmbbcXiGO7djpQ3I2Ytr18pxz6EiKJz6WSFr6NDI1osUpS8/1mXbUyg2+q2uu
	7vzMaKkLiefvZz9HlFgHLPvXHyOUpdid6tZwl169lgHNTmO4Uts0LpHaAqkQA2SHg/bXZQzUlV9OY
	Rg86I5v0AYEgqhsPk48CCd1mgYA1RBFhhACt9XSMUPjU+8ExR6IgvdUpY0XGQ7Uk9SjRA6+sW3QTT
	jxr8/wFuHG9//2TrhWne32RN58WgpCP5hNtf9gENL33OOodtdv78I5VSPzZiXAo/8h/oEX3gMGWUn
	Na77AKV1rDQGDPXndHGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLY5m-0004Yg-SU; Mon, 06 Apr 2020 20:11:34 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLY55-0003qI-4P
 for openwrt-devel@lists.openwrt.org; Mon, 06 Apr 2020 20:10:52 +0000
Received: by mail-qt1-x842.google.com with SMTP id f20so879603qtq.6
 for <openwrt-devel@lists.openwrt.org>; Mon, 06 Apr 2020 13:10:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ltp+88nBrghKNuMRbXQ0AVRdavlMzYKEB1i7JKhEsYk=;
 b=fzhSq4AIlXKIYcf5fFcxujgEcrwc3/CT1XJ/xNb91Sg3DlkNdjqBlVKUOBL7Ewgkhd
 snpBkuu7N31haypTqRzTtjLu+Ud41XdER6y/2XXJjqJbTTqEAhDN7G+9syHl3uxsp1g2
 Xxinzrc44LrVxgGKHB4MqNY5h56VRTz2Sgo7xZOER3OXsUCfKrjpcMC9AfWAnAGNaOOi
 CQfVvW4rgl/Ur3DHl7KbEPbdy98FOOlx7vsMpOOE+UBdfWXgH5coNjNkogDYMXkhfKh1
 N9jfcfAwK5ywwjp4tihvW86NZYZ4mnXBnDkr+1rnhW5UYMuxZntsdIQGKsdO7qIRly/8
 m31A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ltp+88nBrghKNuMRbXQ0AVRdavlMzYKEB1i7JKhEsYk=;
 b=LXeOt/+Xj4JGbq9CZj+e1KrRRWSXsn4aBgYF3yZn2/1XLCs0VWGSOHETQ0aVOPxyfU
 M8ZJjISxpuoWlT/Ao5/ewGDSq6BkB8tRsfNdWBcHbzSiB3v7hM+NPNSegEIGrKuILKy5
 hQaMAt2jleUhQg9VUpzylx+3zihrTN/TSLa6iD1PRESy6sYDzfcXculE+iq7KDMJxbIs
 Ib/XDaCdAXDOrpCpTchuqLv6jCHUuvrwVjomiVNzyPPvx8CInNFhfs+IxtPXNDSjB2Fa
 yQ+vQDiw/AH9LNgsR15DS+x18GWGiOjJjRFanPq0r3w5X5/rIdrfRsgcb+uPcKQJv/pH
 mIBg==
X-Gm-Message-State: AGi0PuadOaYqNcOz2gARJw3tfvkSfFT6uzkZdPnjWH2R5h9VhtxPtVj0
 d8ezFu5/qgbn+JaO4d09fZgs4dSBxGc=
X-Google-Smtp-Source: APiQypIwcFIpqTj3ooA/OMTtSaYp+RbyWolm1z3R5dysgOleQBaQk+wBOdTzIkh2f1rAI65nQbmf7Q==
X-Received: by 2002:ac8:2f23:: with SMTP id j32mr1410962qta.120.1586203848908; 
 Mon, 06 Apr 2020 13:10:48 -0700 (PDT)
Received: from gateway.troianet.com.br (ipv6.troianet.com.br.
 [2804:688:21:4::2])
 by smtp.gmail.com with ESMTPSA id c6sm13446543qkg.88.2020.04.06.13.10.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Apr 2020 13:10:48 -0700 (PDT)
From: Eneas U de Queiroz <cotequeiroz@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  6 Apr 2020 17:10:32 -0300
Message-Id: <20200406201036.19144-3-cotequeiroz@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200406201036.19144-1-cotequeiroz@gmail.com>
References: <20200406201036.19144-1-cotequeiroz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_131051_178399_A3A9855A 
X-CRM114-Status: UNSURE (   7.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [cotequeiroz[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 2/6] busybox: quote 'source' filenames in
 Config.in
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
Cc: =?UTF-8?q?Petr=20=C5=A0tetiar?= <ynezz@true.cz>,
 Eneas U de Queiroz <cotequeiroz@gmail.com>, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Newer versions of the kconfig program requires quoting the arguments of
the 'source' directive.  These are the last ones not using them.

Signed-off-by: Eneas U de Queiroz <cotequeiroz@gmail.com>
---
 package/utils/busybox/config/Config.in        | 44 +++++++++----------
 .../utils/busybox/config/networking/Config.in |  2 +-
 .../utils/busybox/config/util-linux/Config.in |  2 +-
 3 files changed, 24 insertions(+), 24 deletions(-)

diff --git a/package/utils/busybox/config/Config.in b/package/utils/busybox/config/Config.in
index 8d1394c2e2..03af3464f9 100644
--- a/package/utils/busybox/config/Config.in
+++ b/package/utils/busybox/config/Config.in
@@ -702,30 +702,30 @@ config BUSYBOX_CONFIG_EFENCE
 
 endchoice
 
-source libbb/Config.in
+source "libbb/Config.in"
 
 endmenu
 
 comment "Applets"
 
-source archival/Config.in
-source coreutils/Config.in
-source console-tools/Config.in
-source debianutils/Config.in
-source klibc-utils/Config.in
-source editors/Config.in
-source findutils/Config.in
-source init/Config.in
-source loginutils/Config.in
-source e2fsprogs/Config.in
-source modutils/Config.in
-source util-linux/Config.in
-source miscutils/Config.in
-source networking/Config.in
-source printutils/Config.in
-source mailutils/Config.in
-source procps/Config.in
-source runit/Config.in
-source selinux/Config.in
-source shell/Config.in
-source sysklogd/Config.in
+source "archival/Config.in"
+source "coreutils/Config.in"
+source "console-tools/Config.in"
+source "debianutils/Config.in"
+source "klibc-utils/Config.in"
+source "editors/Config.in"
+source "findutils/Config.in"
+source "init/Config.in"
+source "loginutils/Config.in"
+source "e2fsprogs/Config.in"
+source "modutils/Config.in"
+source "util-linux/Config.in"
+source "miscutils/Config.in"
+source "networking/Config.in"
+source "printutils/Config.in"
+source "mailutils/Config.in"
+source "procps/Config.in"
+source "runit/Config.in"
+source "selinux/Config.in"
+source "shell/Config.in"
+source "sysklogd/Config.in"
diff --git a/package/utils/busybox/config/networking/Config.in b/package/utils/busybox/config/networking/Config.in
index 1a740d998e..f07a2d46e5 100644
--- a/package/utils/busybox/config/networking/Config.in
+++ b/package/utils/busybox/config/networking/Config.in
@@ -1196,7 +1196,7 @@ config BUSYBOX_CONFIG_ZCIP
 	See http://www.zeroconf.org for further details, and "zcip.script"
 	in the busybox examples.
 
-source udhcp/Config.in
+source "udhcp/Config.in"
 
 config BUSYBOX_CONFIG_IFUPDOWN_UDHCPC_CMD_OPTIONS
 	string "ifup udhcpc command line options"
diff --git a/package/utils/busybox/config/util-linux/Config.in b/package/utils/busybox/config/util-linux/Config.in
index 1cb2245e32..1a3871e92c 100644
--- a/package/utils/busybox/config/util-linux/Config.in
+++ b/package/utils/busybox/config/util-linux/Config.in
@@ -994,6 +994,6 @@ config BUSYBOX_CONFIG_FEATURE_MTAB_SUPPORT
 	About the only reason to use this is if you've removed /proc from
 	your kernel.
 
-source volume_id/Config.in
+source "volume_id/Config.in"
 
 endmenu

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
