Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 718AE130C14
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Jan 2020 03:27:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lU/PHv93eCxvLaWdTGtXiKDcU4Qez0N8cVCKi3Yw9cQ=; b=HujocoHTVTwZ5s6uEG9GdVcD3p
	Sa9QNroakje7uUuTVwHLKW+l33kXB5im9YcVI2KE2rx/DFEcAXdJBmUKmSw9bNPd+14BfQtoAVVcm
	7ak8fjs9yv31Jpw+SheTM2GtruwClhl6p5T9lcJIxs5PrxZggQc7tV+T31dqoBSHvg/sTH+PFIdkj
	UhD6tvRXh5esnu/LQajg/wzYgZEgil4sFgpWSlIKBRfRGKpqqXLpr/SRw1u/HCRnXiIFW0CItzt7v
	vEy4K8Fn4i7vxWc8FxkCAx8vRMba/O09mh9wC/PtP1GcVg1+Q53QCtGboLMXQMnCH04cUpjB3eXd2
	dyuv3CuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioI73-0007mN-WC; Mon, 06 Jan 2020 02:27:26 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioI6q-0007lW-Gz
 for openwrt-devel@lists.openwrt.org; Mon, 06 Jan 2020 02:27:14 +0000
Received: by mail-pg1-x544.google.com with SMTP id b137so26154506pga.6
 for <openwrt-devel@lists.openwrt.org>; Sun, 05 Jan 2020 18:27:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=7hghTY9dR2/uqckfphh0ip27o6QYUvvVquI2/rgETeU=;
 b=lhQ+alnwy0CbZgqqAyjOenTxlzcqj7HXhAi74pQHTzAfr4OkDfphex3RD5sX/5qA7v
 +D+Xflh3xNDcQdx6qdh61Xx4+V75qzKJHW6oQpzyyViq27R7jnTL1ZbuTPo0tRjCdo9b
 n0mHaMQnV7U/gig5XUPFUWZjhLOXanKt1C0HWEPd82M6ovhfsY+PaSf4y6FMPUj0RiVg
 lZKE7VlRM/JcxHlVrit+N0Yacivq795jDv57rBNZ9w3t8z0QriwgEAkQstUQE9XxvE9X
 7mQjqbplS48Rpj7hWWyI03Ylh9rNwz52DXlG6WO8mQOwqn6lh8zbiitii8Qpir44XaUU
 OvtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7hghTY9dR2/uqckfphh0ip27o6QYUvvVquI2/rgETeU=;
 b=Omfq+N4NBOyzf2SJQYnxkIKrutApB2b6Vc5BCF/LwHAdhLm1S9y3vQcb+Q6H0TeqKE
 wWAJ2THLTygjXZjbrZxb/UAP79lrvXbWKpwGAd7EPTzXG/2OUUny4i4cBKLkfgGxP0wJ
 yXy2Q2R1oylPzpUxMa5DGIfK0C+/MIa3Rvc/Le8CVFCZooFfYu8HrVie2IbloVugouNM
 e9h2Cpx2ksKqMenxFk6Kjp/1r4kDgnSqVqWGGprSR7ELLKS6GoZAn6AYrsUGyVtDW8bB
 GFRnf+YxC7GgYx0H0py5DuTH75864Cj90Fy9s7jPlKoR+Szw8FxMjYziBtbvQCbB8I1d
 cazA==
X-Gm-Message-State: APjAAAVA2sIknOMJqvZwbY3zci8n2+3mjTsGCPrltyMbXJiMQdGZV/oH
 b37f2WvQnLooiMGlqJYIerLMWP6RlwY=
X-Google-Smtp-Source: APXvYqxkQ3mW/DFezg6r5pkkwhh77ypRVXyBSUez9xSUKDSc2mlBnLbQradEl78UhFHm0D+vf/DboA==
X-Received: by 2002:a65:678f:: with SMTP id
 e15mr108361565pgr.130.1578277631655; 
 Sun, 05 Jan 2020 18:27:11 -0800 (PST)
Received: from localhost.localdomain ([69.42.0.214])
 by smtp.gmail.com with ESMTPSA id k21sm62361514pfa.63.2020.01.05.18.27.10
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 05 Jan 2020 18:27:11 -0800 (PST)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun,  5 Jan 2020 18:27:08 -0800
Message-Id: <20200106022708.170281-3-rosenp@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200106022708.170281-1-rosenp@gmail.com>
References: <20200106022708.170281-1-rosenp@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_182712_848930_041F97F8 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rosenp[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 3/3] scripts/flashing/flash.sh: Switch to
 /bin/sh
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
