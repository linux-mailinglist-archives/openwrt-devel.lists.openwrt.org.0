Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74160EBC5D
	for <lists+openwrt-devel@lfdr.de>; Fri,  1 Nov 2019 04:29:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=S20FA4l2a8mm9+ifRduyV5TgbB6F+jPKFnCXg4SnZZk=; b=Chpjx51AiU/Bln
	Y8mgawEdfHqvtML3Haih74T7cPZCMlhb9FYwKfWuGy7pLNxoqKw+BcYlfWW4rrGPjBLIL29ZTrf9q
	s99c1v1JK+tK6P66ThwcGPVczX3aHM2ahTcKbC5b3qjc4XifN8kivVN78dH00+8Gta1ic3QyJbNoP
	eta+69yRPt8oZ+i5N6Db2bmGUghf+qlqMQCsSXMAW3q+72GA6AnmRYZE4hdvly0myTS8Jbh4EOzE9
	F4wN0j1XtafvKf25+gsaW2B6FdfjF2SFvceFzd0xaB96F0xolk8dvnVjqRGOJrrfZ1VYA9cOu6uCv
	3PR8b38ZO1lrVc4vsn1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQNcp-0004sP-8Q; Fri, 01 Nov 2019 03:29:23 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQNcf-0004s0-FV
 for openwrt-devel@lists.openwrt.org; Fri, 01 Nov 2019 03:29:14 +0000
Received: by mail-pg1-x541.google.com with SMTP id l3so5555151pgr.8
 for <openwrt-devel@lists.openwrt.org>; Thu, 31 Oct 2019 20:29:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RwQ4gF9L1mt/pihoQpelVQ8YtKnyymoIecJtNa6ZBX8=;
 b=EhkleTviXk62UO75/cs2JWqu3p5ACWlOJe6YJVxZrWX3xE8ulo9sZPVFWExValLbIV
 imFep+L6m2lFQjxG02Nmg4QN9L/iQynX9Qox73O0Gjnk64LVzleAz67/UFVsjJzrKVX3
 iNHKmqMFwk+/vvA4V6QE8alfqE0iGpQQ+ez5YdwMd/eGcAVq3XQvGJsbL+Np6MFSF/21
 mTLzG/vql/h+vImlbaJU6KwTb2F1NkxXTFNTMIzDVy/jX1XbKG7M7kiOj7pLJnRYl+DT
 jVKvSCG3+nLeXdTHEP5O/yRW+QJh/lJW3dWg4Kz1EDzXJm+cfEFF0ezytzWudstGkCaA
 RwjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RwQ4gF9L1mt/pihoQpelVQ8YtKnyymoIecJtNa6ZBX8=;
 b=Q1FrOThoqQgpIeWtY24BA02iQ007Xqa4FbNCGfoqiVNHLX7AN0O7C8DmPgNq1oasmi
 nMTNykqRJQF6sBOMJzETjsca3HKS595dIrErJpDWacloBXVOSfDr3W1NbnC0ozsaiyDP
 PlBzKNufG4L5sVTrZVCNNglCtNfNKVdde1rMMvc3wiCnbhLAoubWfxaF4KCMehvFFYuh
 9fAk/jXSB7jgWF8vFjc0eU7HH/Bk+/x5AsFbrmO2LBv3KTILp9l+lTu/YjnxPpKSAOkw
 JG/DNetctxeMvSB8nAYGy5RJCTt/Vu8Y5Z2+rNUGqiiLfVH1KiNaD7sfNDzsESnODfXI
 YkJQ==
X-Gm-Message-State: APjAAAUI5nFVST7qdgiQatpw4G/gAqLHl73wmQ+GSvO6htVXmWtVcAZN
 2t31KO5MC4r3TpBHdR9MaTvdZ180F4M=
X-Google-Smtp-Source: APXvYqyws1LzLN53lvsoAoJQ1x9WMED1w4AC7DUHgqOePGze2M0dHUBrlXbaX2vh6rduxZDjvA/USw==
X-Received: by 2002:a63:3205:: with SMTP id y5mr10760333pgy.42.1572578952316; 
 Thu, 31 Oct 2019 20:29:12 -0700 (PDT)
Received: from localhost.localdomain ([2001:19f0:7001:2668:5400:1ff:fe62:2bbd])
 by smtp.gmail.com with ESMTPSA id j11sm4667485pfa.127.2019.10.31.20.29.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Oct 2019 20:29:11 -0700 (PDT)
From: Chuanhong Guo <gch981213@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  1 Nov 2019 11:28:54 +0800
Message-Id: <20191101032858.19013-1-gch981213@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_202913_543073_9D7F805D 
X-CRM114-Status: UNSURE (   8.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gch981213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gch981213[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH 0/4] mediatek: add mt7629 subtarget
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
Cc: Chuanhong Guo <gch981213@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This patchset adds support for mt7629 and its rfb from mediatek.
Currently, the secondary CPU doesn't bootup even if I backported
the related commit, and wifi isn't available due to lack of driver.
But beside those, everything else seems to work just fine.

Chuanhong Guo (4):
  mediatek: fix Unielec U7623 dts in 4.19
  mediatek: backport upstream patches related to mt7629 support
  mediatek: cosmetic fixes for mt7629-lynx-rfb
  mediatek: add mt7629 subtarget with rfb image

 target/linux/mediatek/Makefile                |     2 +-
 .../arch/arm/boot/dts/mt7629-lynx-rfb.dts     |     9 +-
 target/linux/mediatek/image/Makefile          |    14 +-
 target/linux/mediatek/image/mt7629.mk         |     8 +
 .../mt7629/base-files/etc/board.d/02_network  |    34 +
 .../mt7629/base-files/lib/upgrade/platform.sh |    16 +
 target/linux/mediatek/mt7629/config-4.19      |   369 +
 .../linux/mediatek/mt7629/profiles/default.mk |    15 +
 target/linux/mediatek/mt7629/target.mk        |    17 +
 ...ediatek-add-MT7623a-smp-bringup-code.patch |    51 +
 ...ediatek-add-MT7629-smp-bring-up-code.patch |    57 +
 ...tek-add-clock-support-for-MT7629-SoC.patch |  1339 ++
 .../0005-pinctrl-mediatek-sync-with-5.3.patch | 15922 ++++++++++++++++
 ...quadspi-add-SNOR_HWCAPS_READ-to-spi_.patch |    34 +
 .../0227-arm-dts-Add-Unielec-U7623-DTS.patch  |    19 +-
 15 files changed, 17881 insertions(+), 25 deletions(-)
 create mode 100644 target/linux/mediatek/image/mt7629.mk
 create mode 100755 target/linux/mediatek/mt7629/base-files/etc/board.d/02_network
 create mode 100755 target/linux/mediatek/mt7629/base-files/lib/upgrade/platform.sh
 create mode 100644 target/linux/mediatek/mt7629/config-4.19
 create mode 100644 target/linux/mediatek/mt7629/profiles/default.mk
 create mode 100644 target/linux/mediatek/mt7629/target.mk
 create mode 100644 target/linux/mediatek/patches-4.19/0002-Revert-ARM-mediatek-add-MT7623a-smp-bringup-code.patch
 create mode 100644 target/linux/mediatek/patches-4.19/0003-arm-mediatek-add-MT7629-smp-bring-up-code.patch
 create mode 100644 target/linux/mediatek/patches-4.19/0004-clk-mediatek-add-clock-support-for-MT7629-SoC.patch
 create mode 100644 target/linux/mediatek/patches-4.19/0005-pinctrl-mediatek-sync-with-5.3.patch
 create mode 100644 target/linux/mediatek/patches-4.19/0006-mtd-spi-nor-mtk-quadspi-add-SNOR_HWCAPS_READ-to-spi_.patch

-- 
2.21.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
