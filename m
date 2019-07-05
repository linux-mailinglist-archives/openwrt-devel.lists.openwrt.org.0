Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4290160C56
	for <lists+openwrt-devel@lfdr.de>; Fri,  5 Jul 2019 22:25:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=poKhD/e8urGw0jJhhMtXm3OGqimDLHyIC/fJzvoCF88=; b=TgwwGObzkss926
	TwfE27B3OaKTeIpbaaQF6kEwbPSzgLwEw4tWDRhe6mIRqSCUBdaE8oS4DjkarMck3nMzhn5FTT8Ww
	JHvhFsoub4Wt2WpbeCcseov9C/LMcWPIhblmpReZbzCKnDc2TwegMbmf5Rw5loR38F7CxlvcDuqnt
	ZOIzxksQAxHXONdq2oxUytU6ukOIxU+404eHfaAyGJ15OmflCwEcpZewCaK1/uQUQNz+cheFy4S8A
	J/DsbIhup0jeTAhfk0KTqSPlhgQxqWZK8It1uAtJMvpEOeHJuzXQQqifAPfU+a8nU4sqzfeNv6fK2
	1iKpTgPbeFODafGP/Lhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjUlf-0002OD-RM; Fri, 05 Jul 2019 20:25:15 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjUlT-0001lR-4H
 for openwrt-devel@lists.openwrt.org; Fri, 05 Jul 2019 20:25:04 +0000
Received: by mail-wm1-x341.google.com with SMTP id f17so10803271wme.2
 for <openwrt-devel@lists.openwrt.org>; Fri, 05 Jul 2019 13:25:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=m2eDO8NbgirxsR7zEx07VEgyURYTL5aDDCoTbtYK4O8=;
 b=HmDsu8aT2RKYof4WVclE8c3oYRMeucRQgcZe1cGATQBw2vutJu4s79Vkgae3Uw5ruV
 rKR9mztu2LAEWKpEQm9kEOcO6hc1hvEEt/HUXkjVZAiXoCL2q+2HrDmWJ7F/BLx3YlkM
 O/VluOoOoYBqlD4KOTIWfL/SgllzZ74yvkia1Exu642YPohTE2H358Xd5TrdoUERNIc8
 c/JxpZUTZOSUfwCyUllwUKcJF3yyrDdYt1CbF2Ml599ZsnhZI89Uw7JvadCVTWuFQNk6
 Dw6dXzR8nqMs6YVlL/dH0wbDjyY+eCFzwB1woKgf1wJKQANtGNF0JXixEdwcBZU5m65b
 6C2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=m2eDO8NbgirxsR7zEx07VEgyURYTL5aDDCoTbtYK4O8=;
 b=BjocdN+cpFmwvucfvmJu4shU+jtBK8mABr0iVgk4+VON8gSSknltoJY7lL96IjXeGN
 hNRx55O7+pBSxTyGb5P2w3NZp5Z1o6YoV1Jw23NG/UNb2lE1YCOniT2hvyKOIttiJJiY
 AhCTBvWca298XvUubQER4w3rW7DxT6XbakKaQoXY8k8ifl/I607/c01txgi8Wn6muEeu
 WiZ3cP9JK4WGFdXrn4sRAf9TDME3b6CNq6IHAzNq8XDbFBCwHGUQYQ0zvvPtkoOS3/Sf
 e7pP3zc3Ofoqq9rn7s6zMIJYyN/bjK8haFEUo08O3I+z4PZ41H7JoPQk90rtDIoWFewr
 zmkw==
X-Gm-Message-State: APjAAAUoNAJOjgyuu9lauMYL6zQmfRFRmUDNorcqZiw3L2ZJXy4rTI+u
 m54R/clgXSRgpVhAAdrN72PSQTt9
X-Google-Smtp-Source: APXvYqz33rDoGktNh5+aKQhCXj3/TLn+wcS5hm7YtEW1LNT1X8df2QYvEcnFyBTqxDm+btkmdAwN5Q==
X-Received: by 2002:a1c:2302:: with SMTP id j2mr4422376wmj.174.1562358301149; 
 Fri, 05 Jul 2019 13:25:01 -0700 (PDT)
Received: from debian64.daheim (p5B0D78D1.dip0.t-ipconnect.de. [91.13.120.209])
 by smtp.gmail.com with ESMTPSA id w20sm25824470wra.96.2019.07.05.13.25.00
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 05 Jul 2019 13:25:00 -0700 (PDT)
Received: from chuck by debian64.daheim with local (Exim 4.92)
 (envelope-from <chunkeey@gmail.com>)
 id 1hjUlQ-0006Wz-3C; Fri, 05 Jul 2019 22:25:00 +0200
From: Christian Lamparter <chunkeey@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  5 Jul 2019 22:25:00 +0200
Message-Id: <20190705202500.25066-1-chunkeey@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_132503_218719_553F55A0 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
Subject: [OpenWrt-Devel] [PATCH] mpc85xx: Use gzip compressed kernel on
 HiveAP-330
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
Cc: Pawel Dembicki <paweldembicki@gmail.com>,
 Chris Blake <chrisrblake93@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Pawel Dembicki <paweldembicki@gmail.com>

After commit 1e41de2f48 ("mpc85xx: convert TL-WDR4900 v1 to simpleImage")
XZ compression of zImage was enabled. This change exposed a problem with
the HiveAP-330 images, which was fixed by foregoing the compression on
the kernel altogether with commit 98089bb8ba8
("mpc85xx: Use uncompressed kernel on the HiveAP-330").

This patch adds back the gzip compression of the kernel image by
utilizing the generic OpenWRT uImage method instead of relying on
the PowerPC bootwrapper script that did it previously.

Compile-tested: p1020/hiveap-330

Tested-by: Chris Blake <chrisrblake93@gmail.com> [run-tested]
Signed-off-by: Pawel Dembicki <paweldembicki@gmail.com>
Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
[filled in even more text]
---
 target/linux/mpc85xx/image/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/mpc85xx/image/Makefile b/target/linux/mpc85xx/image/Makefile
index c582d7a5920..c2ddcb32c5c 100644
--- a/target/linux/mpc85xx/image/Makefile
+++ b/target/linux/mpc85xx/image/Makefile
@@ -85,7 +85,7 @@ define Device/hiveap-330
   DEVICE_TITLE := Aerohive HiveAP-330
   DEVICE_PACKAGES := kmod-tpm-i2c-atmel
   BLOCKSIZE := 128k
-  KERNEL := kernel-bin | uImage none
+  KERNEL := kernel-bin | gzip | uImage gzip
   KERNEL_SIZE := 8m
   KERNEL_INITRAMFS := copy-file $(KDIR)/vmlinux-initramfs | uImage none
   SUPPORTED_DEVICES := aerohive,hiveap-330

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
