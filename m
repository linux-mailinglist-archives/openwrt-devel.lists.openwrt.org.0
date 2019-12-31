Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E7FB12D5B9
	for <lists+openwrt-devel@lfdr.de>; Tue, 31 Dec 2019 03:16:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lU/PHv93eCxvLaWdTGtXiKDcU4Qez0N8cVCKi3Yw9cQ=; b=N3PMY2AWZ2WHJy35PLg0iHoY3P
	hrzMJtaZjnYCj8cz9qGEezRa4EU6lJRTufOoyJh56jkZczROnp+7qZczBskkcPW16Zm9eiXVG40c9
	WqnJ+WJr7ZBkzif1pI9I1fvxsat2ROcUZKleG2WnwezXnF/bH1OnGLhRA8vjRszbUFKySrF9N1jO+
	Zym9mhBE9s+02dQmgi6+eee/OwmJflGRk6c0bgPu9gkmUspwXXHZU+670gwaLR4S0/1YsEEKRy8M5
	U3aNnH7Hznt6TI8hKVR/FJmcvJ21jRI52/iOiGx9ick61PcarTLz8pl7N4WkrDCyYIbDpMrEoriAt
	wrfmBMrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1im75X-0003PK-4B; Tue, 31 Dec 2019 02:16:51 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1im75F-0003EK-FH
 for openwrt-devel@lists.openwrt.org; Tue, 31 Dec 2019 02:16:34 +0000
Received: by mail-pf1-x442.google.com with SMTP id q10so19101027pfs.6
 for <openwrt-devel@lists.openwrt.org>; Mon, 30 Dec 2019 18:16:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=7hghTY9dR2/uqckfphh0ip27o6QYUvvVquI2/rgETeU=;
 b=sSomV5IGDPQ2IYYsSPmIwNCzOOT9tSEclxhD70a2FfZjy76sYMfWEAO4ojYAYOOKQN
 SNQBic6246XzdIPO/BdHwP6Qkha5pNkSW1BtByrFs9AGJ3TFurR7JrE2EdCm6adfOQcS
 g2/70DOuRfQ/BwL9lUF7OFMXBXkYbDto7MJmZoKrSEnY8+5mXG9lsQd0D/hVSNIO+2Vf
 NmV4lpQQ6WF9s7du8FV73sCDdJ0fvTei975ZBUwUUt+ioRraKv6WZtogPqm3GWMyGsfd
 ShDmBUIKDP8vpgmg0KDKabytkiP9AbHORrhPlETisTwLBXIOhO9DFGrnW0tPuo2yNzqN
 E+IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7hghTY9dR2/uqckfphh0ip27o6QYUvvVquI2/rgETeU=;
 b=S8nCSElX7M0Y2j+/kiz8DR6XhJKG4gFZgBCfaJ20vgPTde7OtXvezI5acef65jInWU
 hDL7zdZ971+t2JZ8xlf2oRS5M/25ciC5OJI5sL1cebP1pI5cCj1xzpaireef6Tvf/B8z
 AUeMRp2AQv5n/haclXA91qVvHmbJZQFUKLDCVeeE5nbQgxABmFxBAcPWrkkYG9uDg2my
 1KX8laGlwoXoMVFXXZP/HXIFXXaTb9Cgrhntgf4AWgH0eUe6sy3kGboBYXSrUvdEz8Q/
 O2jbj15RBxAiEjyCmFEBWRmfrTkI1RxsSbVpO5eQUnZk6gpjHwcL2e4kklLVVHVKqKT/
 RfMA==
X-Gm-Message-State: APjAAAV96P2HGBk75ijy8m1gKtpmCIdjkgI4GFDd/WnGs+WkEh419iv/
 BGuEIWjfDxKExtdmnLWD9I8Osf9RAX8=
X-Google-Smtp-Source: APXvYqyedOK7oTekWmPf92PgH+Ib/8Av+1R6YSyNod/Y4w/YuhVEaO706zdBbRDOURzYV2x/XdqCvQ==
X-Received: by 2002:aa7:80c5:: with SMTP id a5mr44617737pfn.53.1577758590668; 
 Mon, 30 Dec 2019 18:16:30 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id u13sm883077pjn.29.2019.12.30.18.16.29
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Dec 2019 18:16:30 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 30 Dec 2019 18:16:26 -0800
Message-Id: <20191231021626.47613-2-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191231021626.47613-1-rosenp@gmail.com>
References: <20191231021626.47613-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_181633_514307_9DFE4796 
X-CRM114-Status: UNSURE (   9.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 2/2] scripts/flashing: Switch to /bin/sh
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

The script no longer uses any features that necessitate bash.

Also removed trailing whitespace.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 scripts/flashing/flash.sh | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/scripts/flashing/flash.sh b/scripts/flashing/flash.sh
index aea1bf1568..6266a49dc1 100755
--- a/scripts/flashing/flash.sh
+++ b/scripts/flashing/flash.sh
@@ -1,6 +1,6 @@
-#!/bin/bash
+#!/bin/sh
 #
-# tftp flash script for wireless routers 
+# tftp flash script for wireless routers
 #
 # Copyright (C) 2004 by Oleg I. Vdovikin <oleg@cs.msu.su>
 # Copyright (C) 2005 by Waldemar Brodkorb <wbx@openwrt.org>
@@ -24,10 +24,10 @@ if [ -z "$1" ] || [ ! -f "$1" ] || [ -z "$2" ]; then
     echo Usage: "$0" firmware vendor
 cat << EOF
 IMPORTANT:
-Notes for Linksys / Asus WL500gx router: 
+Notes for Linksys / Asus WL500gx router:
    be sure you have set boot_wait to yes. Power on your router
    after executing this script.
- 
+
 Notes for Asus WL500g router:
    be sure POWER led is flashing (If this is not the case
    poweroff the device, push the reset button & power on
@@ -54,7 +54,7 @@ echo Confirming IP address setting...
 printf "get ASUSSPACELINK\x01\x01\xa8\xc0 /dev/null\nquit\n" | tftp 192.168.1.1
 echo Flashing 192.168.1.1 using "$1"...
 printf "binary\nput %s ASUSSPACELINK\nquit\n" "$1" | tftp 192.168.1.1
-echo Please wait until leds stops flashing. 
+echo Please wait until leds stops flashing.
 elif [ "$2" = "linksys" ]; then
 echo Flashing 192.168.1.1 using "$1"...
 printf "rexmt 1\ntrace\nbinary\nput %s\nquit\n" "$1" | tftp 192.168.1.1
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
