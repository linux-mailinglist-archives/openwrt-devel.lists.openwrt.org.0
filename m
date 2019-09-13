Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67E2CB16EF
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Sep 2019 03:08:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2ouxGiz/hBerZMsHL07OMMmLtYOqb1GbwrhJ/WiLcMw=; b=A8QpS0qrl/sz7j
	iyzq2SCeVHKp3IYPG+plcg49rCTqC328sGzGyLDSUSI6M+e5WCnznPavkan4NVdGfJOCRbZ/Nw9PO
	6aI+ZR4dpVGQqF3ytZS0kEM1GsZVa+EY3eMreCpYsfro0wmxLuP5VWA6oyyKV3LaJ5xGo4H1C3Pxj
	loG3Pg459x97reXhw86jeTPTx6OXMLoIn8UlfDS5NARp5x9bL8QvHtBjRMV0SYGfQPzCh3SSDw9cE
	BQgMlQ94EgKFm/kNE5LqZCa+jCY/yCMs0QiOFP2WWYytRT2gXdOOlq2EdGm4v5OfmyT/hySYcBFzq
	+oFdcN9pEZat4jb+R1Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8a4l-00080C-QP; Fri, 13 Sep 2019 01:08:39 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8a4d-0007zh-3h
 for openwrt-devel@lists.openwrt.org; Fri, 13 Sep 2019 01:08:32 +0000
Received: by mail-pl1-x643.google.com with SMTP id f19so12497516plr.3
 for <openwrt-devel@lists.openwrt.org>; Thu, 12 Sep 2019 18:08:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HQDPCBZ7BJqKCduOXCSWW7KBJcxolQH5WFZvt5UOc2g=;
 b=Aa+6G+9x8AkzHUv8p4bsYnl2bfyB8onG78BqPFg4LE7WvIVq1ZK6VBp8xi/O6KR86i
 MiNkpg94AWQozVihALT/+X4RPpR0/8cHefxZAYh4FcGA+HNcZQElyrIAoec3uFUDSGBY
 HQPyNr0JXr2zdnQqaMQA+Z8xaVOHOvWKiMAA6D2eO1U5DHykXaHudedlbx6fhqFpkbNh
 av6au0yotzdNkJbTIlrf9QL5Io7xGgQPD6XpiXUcTijeWP9/WWynN9GT+I1lBy2xD8mh
 EPy6Xy3/scbWCv4JQSmbbUGYopTOpBq52f4jPMZ13eooPFxVjeJ4eGtzuZYc/gSOKOvy
 2zSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HQDPCBZ7BJqKCduOXCSWW7KBJcxolQH5WFZvt5UOc2g=;
 b=t6RWLOt1F4bFA4b5uc3XQNxfjT3niy0jxgQlRnHTs0kurnd89wSL+2LwAqiscOtjzM
 3hR5eZyitlCDvF3wdhVZFUDDUUsIOgGcBX9GLViju5yiw7TxTffWL7W5qUVbhQtSoCZ6
 t6HaZe9zjksx5KF0DVwIFjSaZVmQ7+aHGWc6gpDOn0Arkg/VZvYBoH94G/CIUg7vtyem
 zvF2MMw+iIb3C3ADFjKcIjwDd1cye42nJGxNjspDRpYs21fbdpnSZ+jG59yw0dh4f6MU
 RGZXepeZEuQUL/e5q1n7wSlSZnfM3Sy7RBNrcdTyRyUdT+FtdTtPTVIa8LECoDTQnQhu
 AXfQ==
X-Gm-Message-State: APjAAAUaO7eIBFn97Dlb3EuljPArrta0IQfxBx2Dm6WhirpcPJsp2JR8
 DkGrs13h7gCsb8GmlpRPA5g=
X-Google-Smtp-Source: APXvYqzYo0kC9QxgYzYMUvHxFtv6glIn6MpRhLklgYcy95EP/vSypnFs1aE4rv8duj5bUUP/yg7g5A==
X-Received: by 2002:a17:902:850c:: with SMTP id
 bj12mr46846729plb.68.1568336909524; 
 Thu, 12 Sep 2019 18:08:29 -0700 (PDT)
Received: from titan.hq.cloud.yunionyun.com ([47.244.19.249])
 by smtp.gmail.com with ESMTPSA id l14sm3342283pgn.48.2019.09.12.18.08.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 12 Sep 2019 18:08:28 -0700 (PDT)
From: Yousong Zhou <yszhou4tech@gmail.com>
To: nbd@nbd.name
Date: Fri, 13 Sep 2019 01:08:13 +0000
Message-Id: <20190913010815.14962-1-yszhou4tech@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_180831_156104_5A9206E3 
X-CRM114-Status: UNSURE (   7.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH 1/3] build: install-dtb: fix race condition
 when copying dtb
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
Cc: Yousong Zhou <yszhou4tech@gmail.com>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Currently for at91 target, Build/install-dtb can be triggered concurrently for
multiple different TARGET_FILESYSTEMS, cp command can fail when the
target file is already open exclusively by other cp process

	[ -f /builder/shared-workdir/build/build_dir/target-arm_arm926ej-s_musl_eabi/linux-at91_sam9x/at91sam9263ek-uImage -a -f /builder/shared-workdir/build/build_dir/target-arm_arm926ej-s_musl_eabi/linux-at91_sam9x/root.ubifs+fs=-m_2048_-e_126KiB_-c_2048+pkg=68b329da ]
	[ -f /builder/shared-workdir/build/build_dir/target-arm_arm926ej-s_musl_eabi/linux-at91_sam9x/at91sam9263ek-uImage -a -f /builder/shared-workdir/build/build_dir/target-arm_arm926ej-s_musl_eabi/linux-at91_sam9x/root.ext4+pkg=68b329da ]
	cp -fpR /builder/shared-workdir/build/build_dir/target-arm_arm926ej-s_musl_eabi/linux-at91_sam9x/linux-4.14.141/arch/arm/boot/dts/at91sam9263ek.dtb /builder/shared-workdir/build/bin/targets/at91/sam9x/openwrt-at91-sam9x-at91sam9263ek.dtb;
	cp -fpR /builder/shared-workdir/build/build_dir/target-arm_arm926ej-s_musl_eabi/linux-at91_sam9x/linux-4.14.141/arch/arm/boot/dts/at91sam9263ek.dtb /builder/shared-workdir/build/bin/targets/at91/sam9x/openwrt-at91-sam9x-at91sam9263ek.dtb;
	cp: cannot create regular file '/builder/shared-workdir/build/bin/targets/at91/sam9x/openwrt-at91-sam9x-at91sam9263ek.dtb': File exists
	Makefile:87: recipe for target '/builder/shared-workdir/build/build_dir/target-arm_arm926ej-s_musl_eabi/linux-at91_sam9x/tmp/openwrt-at91-sam9x-at91sam9263ek-ubifs-dtb' failed
	make[4]: *** [/builder/shared-workdir/build/build_dir/target-arm_arm926ej-s_musl_eabi/linux-at91_sam9x/tmp/openwrt-at91-sam9x-at91sam9263ek-ubifs-dtb] Error 1

Signed-off-by: Yousong Zhou <yszhou4tech@gmail.com>
---
 include/image-commands.mk | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/include/image-commands.mk b/include/image-commands.mk
index 89c17aec5b..1d0aed1918 100644
--- a/include/image-commands.mk
+++ b/include/image-commands.mk
@@ -136,10 +136,13 @@ define Build/append-dtb
 endef
 
 define Build/install-dtb
-	$(foreach dts,$(DEVICE_DTS), \
-		$(CP) \
-			$(DTS_DIR)/$(dts).dtb \
-			$(BIN_DIR)/$(IMG_PREFIX)-$(dts).dtb; \
+	$(call locked, \
+		$(foreach dts,$(DEVICE_DTS), \
+			$(CP) \
+				$(DTS_DIR)/$(dts).dtb \
+				$(BIN_DIR)/$(IMG_PREFIX)-$(dts).dtb; \
+		), \
+		install-dtb-$(IMG_PREFIX) \
 	)
 endef
 

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
