Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F5A21920C6
	for <lists+openwrt-devel@lfdr.de>; Wed, 25 Mar 2020 06:56:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vRQYyCmW6Fr+rVbuC/9/SNDU4Ew3+Cx3eYLC36DPjuE=; b=SfqQLAuF6vFCtG
	lIp9kQHUtAKMpiVZbGKrwZJ0DRjgSK2ILXvDPmNlUpN9r3SLB0F0GPaZRMBIMh13y5nbvpLRl3CfN
	CUi6GGeyp/Mnsc0d9jjfp0jjijqP9wa5O+MXixa/Bhn0anvhyDKrVrgWflF3oRLvpQSxPuoNILkTJ
	3F61B9qNpRw5ExWyK4XCYLWn+nR3gsLuVrT1PWkvjTMb9QpR8tIRN7146HUHnqIDZ0nWZADu2oV2j
	okG5nP3QR69e78guWWafJ25uE8+/o+nDgGpS894QQuLWIoKmITW7lC0D1/9h6m/XFwo1UmG6S+4Cf
	8FJ+0a8kI9HBsQxdoqvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGz1i-0005vk-Ck; Wed, 25 Mar 2020 05:56:30 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGz1a-0005ud-Ar
 for openwrt-devel@lists.openwrt.org; Wed, 25 Mar 2020 05:56:23 +0000
Received: by mail-pj1-x1042.google.com with SMTP id o12so568854pjs.2
 for <openwrt-devel@lists.openwrt.org>; Tue, 24 Mar 2020 22:56:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Y7+UvSbmMWTNGEjVs886Ue3VhJSWpqdRYc3xP9zyzvQ=;
 b=qNqjuO5g6ewlKNXe4WLsdQmNYwQ46O4j9BH47oE+KkpNMODXRNFd4mGzVucfxEeeGC
 knJUVVV/XrS8oKWvc/Y3lESIizURz9aedB2rlIVtuAhW1Hkfwg2SNIZVIUzqo8WKLXr4
 D81nq2p0HbS0H1LUXb+UtEuTGmeNKylFzcPt/xBW2p2YYKA1E42T0ds2ii93P4wJrvvX
 ShEe6bhm9FEApi9+Hv/hnouRnQBG66SyMjA28Zo710Av29ZrliRui67/hjrAQjB+x7e1
 UcpdFQlUkm6VcXWeMbV3/OMuZhs/IuVC/UtBbcSQeZbwe6AAESMrwO0acRroVWB29ZFf
 KhBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Y7+UvSbmMWTNGEjVs886Ue3VhJSWpqdRYc3xP9zyzvQ=;
 b=EYEzqC541HDjPR7iWbn5cLyT9z80pDsoZJ8BRGfpa2iYd3sld9W9TaPmDFQbi6jhRM
 ZFvk7tvNBG/ouTjiCRqA57PQnGjqHG9lYVEGSGNvqMw7G5oMPSa2XXqseGZyzGqOwNv+
 hJNS6BQBv0M1ZThNsAJjtwEJzx7bBPJc9sAxeFkEMyTCI9U7y175QheTefzGLqUf87u6
 IfMU+0ysXcGApxjpemZLGBIDoBnUw3YEH9FQwknL5oprOkpV6rmmaRSeh0R71t6DmCTP
 bJO5fh5A6KGQJkrVKO37YTVghAa0ayhj8T395v1qbExMIuUQN0frt2ej+qnudeYdK+Ij
 xttw==
X-Gm-Message-State: ANhLgQ1KIOxQwWwB/NF+s32dcH3AcaJtBTu4TyOp1ISjjjTacz/UrIOz
 SdrTlCHRnekUxyxKT3Dt8/2LFVeQm70=
X-Google-Smtp-Source: ADFU+vu1eRj1m6eWaP4/OHftc+WtJgedGVxeqSDvnyAtOmeQNR50eFKTEtenycwqmn32Kr2waIF9FA==
X-Received: by 2002:a17:90a:1f0b:: with SMTP id
 u11mr1862092pja.18.1585115781046; 
 Tue, 24 Mar 2020 22:56:21 -0700 (PDT)
Received: from localhost.localdomain (astound-69-42-19-227.ca.astound.net.
 [69.42.19.227])
 by smtp.gmail.com with ESMTPSA id 198sm11035054pfa.87.2020.03.24.22.56.20
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Mar 2020 22:56:20 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 24 Mar 2020 22:56:19 -0700
Message-Id: <20200325055619.8196-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_225622_398195_608CB4A7 
X-CRM114-Status: UNSURE (   6.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH] netifd: fix compilation with musl 1.2.0
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The normal syscall is removed. Use the 64 bit version as musl 1.2.0
defaults to a 64-bit time_t.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 system-linux.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/system-linux.c b/system-linux.c
index d533be8..ff4e1fe 100644
--- a/system-linux.c
+++ b/system-linux.c
@@ -59,6 +59,10 @@
 #define IFA_FLAGS (IFA_MULTICAST + 1)
 #endif
 
+#ifndef __NR_clock_gettime
+#define __NR_clock_gettime __NR_clock_gettime64
+#endif
+
 #include <string.h>
 #include <fcntl.h>
 #include <glob.h>
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
