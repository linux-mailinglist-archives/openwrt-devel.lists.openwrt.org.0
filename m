Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BE781385C5
	for <lists+openwrt-devel@lfdr.de>; Sun, 12 Jan 2020 11:13:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ybxCrWHPa9Uf+pA5bjHFGVc33jaqU6RgRqiq95j1ITU=; b=ua9XXbvOOOpEyL
	wLAWyHjJx5bhYLSupyp4vuTmhZ8oNy4mKe3NsDALPCsQDN86gLbQ5KlJ9X8aDTYRr3QxbbLoAYtSt
	Qhx+Fp1zfhYv53OVONgq0ahmYWoBuYidcWeGaeWOA2uOKFmCeS7I39e4ndCfzxXRDrls3FVHT3HnV
	hDaM5gE+FaNGXjvPtWphD3aAX86qT56DdaU4awwwvGfKppIrkvsQgWusSELhnKYtB8Lj102hd2HR2
	eYYae9XwPgP6xiuYn7k4P01MBTCxNynVXKX8D9pCXjkwyRVTJD752Jb5vg67FrtmetIff5dyJN8nG
	hwPdnklyMshrCAeX0XVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqaFl-00020Q-Ja; Sun, 12 Jan 2020 10:13:53 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqaFf-000206-Ix
 for openwrt-devel@lists.openwrt.org; Sun, 12 Jan 2020 10:13:49 +0000
Received: by mail-wr1-x444.google.com with SMTP id t2so5732283wrr.1
 for <openwrt-devel@lists.openwrt.org>; Sun, 12 Jan 2020 02:13:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lzxXMa7AY0KBm6gGjmNCtCjQAVH+HN8pZ2tg1yD9F6U=;
 b=Cn1ozH7PPhKEYLbduwA7jCBjJvqh9o4JpyOCST23R8iZZ2Ot3B04P0zQNM2z7Qq3G+
 lxr6MaBXL25WpdLhQKgG7hnGmI0Wueae1Pjq87WPcKH3IdxU5RY0Ry7aG7OCykcaJnml
 ExW1UGQ75y1O9GcAY0/A8oKmrOIdga256ihHBg9T2CpCRGli1Q1MTrnXSel2GDvWD4Ik
 QCh5YTV1McPfHg+myr1F0hpUuXxuc8nBg3MrTHUm1ht2lLQ6i1uZRp9tpbBv9LPhApVY
 XZLNfHkYe2bUOgsQ1gsPM3ha3IsVIlP+yevbQcdxejAqwR/t2agytZkMSWbeMsRtER6D
 yuFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=lzxXMa7AY0KBm6gGjmNCtCjQAVH+HN8pZ2tg1yD9F6U=;
 b=meT8thfGoPFLwQpcpkqRVRDRnAwagfdbq66Va6Eeisn/xTwkryIOnGEDyMp8828Lli
 3aOAVj6/BNWh//0HMOZlt32X3JoYz9FoGwvmN2YpNIUFgLJSEjYkvWXEZ6zDZBJAAQOx
 sKuwoARI+ZwNs94iiRY5PVs7EvRCvdZ7tAOUJvh+JhD34ff6TKHI3ibJ9CNXwO1GCm/Y
 uJdefFfzT9pyLYCxmHp6wO1EZkSZHd6ompzqBtjk/aiW2CeghI5GUPtedlCD172qDHZq
 4mwYl+H+WiqmFiUbRmqyZIRwsx86tAk+qPLFlQUjhWOUAt4OhfSE/2/RP0fl5WqXJO7Q
 HjqQ==
X-Gm-Message-State: APjAAAXPngDlkR+/oELeYpp6YMS+qnxYDyeokW56W3Mn+0mCpKgwZQb9
 ftqkKlYPxCKzE/fgwkjiHMib3nlg
X-Google-Smtp-Source: APXvYqw5rVxVtp4oDN565DrafUvdGycGT6+Rt3D2PuNYjE+cWjiRKc3m2VMVTHE21S25cP5QLMc1Pg==
X-Received: by 2002:a05:6000:1187:: with SMTP id
 g7mr13211485wrx.109.1578824025505; 
 Sun, 12 Jan 2020 02:13:45 -0800 (PST)
Received: from localhost.localdomain ([2001:1488:fffe:6:f03a:f387:9d5e:ac95])
 by smtp.gmail.com with ESMTPSA id
 r62sm10131681wma.32.2020.01.12.02.13.44
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 12 Jan 2020 02:13:45 -0800 (PST)
From: Josef Schlehofer <pepe.schlehofer@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 12 Jan 2020 11:13:15 +0100
Message-Id: <20200112101314.6332-1-pepe.schlehofer@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_021347_648790_2AF0507E 
X-CRM114-Status: GOOD (  10.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pepe.schlehofer[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] [19.07] ramips: add kmod-mt7615e to Xiaomi
 Mi Router 3 Pro
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

From: Ozgur Can Leonard <ozgurcan@gmail.com>

The package kmod-mt7615e was added to this router in the master branch
[1] to have working Wi-Fi, but it is not included in OpenWrt 19.07. It was reported
on OpenWrt forum [2] and tested that after installing this package Wi-Fi
works.

[1] https://github.com/openwrt/openwrt/commit/d7c082ba4f7de97b3708d1f4a064954ffc774778
[2] https://forum.openwrt.org/t/xiaomi-r3p-no-wifi-with-latest-stable-19-07-0-after-upgrade/52299

Signed-off-by: Ozgur Can Leonard <ozgurcan@gmail.com>
Signed-off-by: Josef Schlehofer <pepe.schlehofer@gmail.com>
[added commit message]
---
 target/linux/ramips/image/mt7621.mk | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/ramips/image/mt7621.mk b/target/linux/ramips/image/mt7621.mk
index 03ab9a4c37..6280a6246f 100644
--- a/target/linux/ramips/image/mt7621.mk
+++ b/target/linux/ramips/image/mt7621.mk
@@ -265,7 +265,7 @@ define Device/xiaomi_mir3p
   IMAGE/sysupgrade.bin := sysupgrade-tar | append-metadata
   IMAGE/factory.bin := append-kernel | pad-to $$(KERNEL_SIZE) | append-ubi | check-size $$$$(IMAGE_SIZE)
   DEVICE_PACKAGES := \
-	kmod-usb3 kmod-usb-ledtrig-usbport wpad-basic uboot-envtools
+	kmod-mt7615e kmod-usb3 kmod-usb-ledtrig-usbport wpad-basic uboot-envtools
 endef
 TARGET_DEVICES += xiaomi_mir3p
 
-- 
2.24.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
