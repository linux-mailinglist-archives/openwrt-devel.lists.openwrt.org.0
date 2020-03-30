Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADE65198682
	for <lists+openwrt-devel@lfdr.de>; Mon, 30 Mar 2020 23:29:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bAaoxaT6Hv2LVfi0rn7cgdC0ocy40eao/+tq+fKbDkQ=; b=MgRfTXQDyNs2s8
	qPbiYk+cCgIDo4ikzmINIZ0mZ9o/ZKzUX8uL0+jd5voyRj5Oxn06MFftDvpii0pfFsBC4RjCwdvVa
	yRxOqdHFFBmduwXI8sfKEqa+6lgV31slgfB3NKIxMXlCxGo7/piS1zGR3Y/IeeO348QXWcgynlrqw
	QM1CJFUbzkOfi8he9/7WNMZ0SR000L2po1M4irENLac0nvr/HXk/EuE/kkuJCJRyOBBxDFgyOeoDm
	+uvze+MC/Hmpo0sP+OwfWK/YgqihqK2HH1+Aw2LG9LEPRNJovSTFTidfU5JfXyxJCQmzmqv/+adPa
	D483pry1qB0g0qwC3u9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ1yP-0000ek-Nw; Mon, 30 Mar 2020 21:29:33 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ1yI-0000eN-Ld
 for openwrt-devel@lists.openwrt.org; Mon, 30 Mar 2020 21:29:28 +0000
Received: by mail-lj1-x244.google.com with SMTP id n17so19782304lji.8
 for <openwrt-devel@lists.openwrt.org>; Mon, 30 Mar 2020 14:29:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jemgcpZ4bxYGIk5ZFJikXd/5opfnkadGDOjYYmqb4I4=;
 b=D24zM9fbxsi1NmVrjlRROr2cMpcdGN/6B5iTCRF2XAqytfw1T/ZNdCe1nUVO3+PUxI
 /hjOZ7bbgyKoZQ8s3ghpmvzolT6DP9VgzZdLHVRdCmiZotpw5m/tkyNe0cuuNltzy0oR
 kHpi0KL1h7gt3LF9rQOeRqWOA97jumSZmX5ubB5uNjZyc4GYG6qq68uXbpiO/cbe14am
 YZW4AWaeNoVsoJ9r87dJhzMqftT/1/QfAksmlsrZKc8uvGYGHdJRtwGkcPJQmqEUGLHM
 835iaaDEYHa1WW9IDfh4cPYk9nywmgNdvyE2AzlXt9CSjbAAxGnAmLPRSXqoA3RI7qG+
 761g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jemgcpZ4bxYGIk5ZFJikXd/5opfnkadGDOjYYmqb4I4=;
 b=NJLKC638UfUUVQhvoxma1CEKKQGELZ9IDkULQvXPHmQz6ENO5R/Zqgx38CiFQKQxUE
 16KzJJZUeuqBgd3BahBpadfM8Q/9j8wz8wwQoRRN4f/8baLeZK2Hih57uEDJQ458nzpT
 Maf0uUyDTQxSiU6QLu3Xp4qCXpaVWQt3YwwtNVt+A32oM8it7iDQmB3EdmXq+Ol+sjFJ
 NduRCmeNyBduFbTCUx2/aNO/wIARGSt/nED+3DQGvoiPesuwEOYAYMsOuMxGBHW8tRqP
 NPYp28wujIUMV0rxJLEtZ9RtrJikWtwnxJPWB1zhNmam0t7Sgsp7PRmqdDrGYDD3JetX
 9FRA==
X-Gm-Message-State: AGi0PubbzHMUaHrkQghKDHcw4mD7+RQEJ9aNrKFGHBMGdf7/CtX7uUSk
 c5yBVh6y2Z0jj7nd6LfSOT98HQ==
X-Google-Smtp-Source: APiQypLX045+/9pfe20osk8iD1sogU8zB12UM0+oxcOp4cq7rubQO+zXI15GNJ5B1p4zY53S2CzbKQ==
X-Received: by 2002:a2e:8316:: with SMTP id a22mr8433353ljh.70.1585603763810; 
 Mon, 30 Mar 2020 14:29:23 -0700 (PDT)
Received: from localhost.bredbandsbolaget
 (c-f3d7225c.014-348-6c756e10.bbcust.telenor.se. [92.34.215.243])
 by smtp.gmail.com with ESMTPSA id q21sm3006740ljh.38.2020.03.30.14.29.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Mar 2020 14:29:23 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Roman Yeryomin <roman@advem.lv>, Sebastian Luft <sebastian.luft@gmail.com>,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Christian Lamparter <chunkeey@gmail.com>
Date: Mon, 30 Mar 2020 23:28:11 +0200
Message-Id: <20200330212811.11052-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_142926_741044_D0C1592A 
X-CRM114-Status: UNSURE (   7.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] gemini: Refine package list
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Florian Fainelli <f.fainelli@gmail.com>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The NAS packages for Gemini doesn't even include the
block-mount package. Augment the list to be based off
the DEFAULT_PACKAGES.nas to make sure we extend on the
essentials.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 target/linux/gemini/image/Makefile | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/target/linux/gemini/image/Makefile b/target/linux/gemini/image/Makefile
index b4daa926708a..80a698927c95 100644
--- a/target/linux/gemini/image/Makefile
+++ b/target/linux/gemini/image/Makefile
@@ -135,12 +135,13 @@ endef
 
 # A reasonable set of default packages handling the NAS type
 # of devices out of the box (former NAS42x0 IcyBox defaults)
-GEMINI_NAS_PACKAGES:=kmod-md-mod kmod-md-linear kmod-md-multipath \
+GEMINI_NAS_PACKAGES := $(DEFAULT_PACKAGES.nas) \
+		kmod-md-mod kmod-md-linear kmod-md-multipath \
 		kmod-md-raid0 kmod-md-raid1 kmod-md-raid10 kmod-md-raid456 \
 		kmod-fs-btrfs kmod-fs-cifs kmod-fs-nfs \
 		kmod-fs-nfsd kmod-fs-ntfs kmod-fs-reiserfs kmod-fs-vfat \
-		kmod-nls-utf8 kmod-usb-storage-extras \
-		samba36-server mdadm cfdisk fdisk e2fsprogs badblocks \
+		kmod-nls-utf8 kmod-usb-storage-extras kmod-hwmon-drivetemp \
+		samba36-server cfdisk e2fsprogs badblocks \
 		partx-utils
 
 # The DIR-685 flash layout is kernel in WRGG format, padded and followed
-- 
2.21.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
