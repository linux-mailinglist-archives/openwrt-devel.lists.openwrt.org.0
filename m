Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6EF21D7949
	for <lists+openwrt-devel@lfdr.de>; Mon, 18 May 2020 15:05:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=m4Ks3O6d0dOcMvnPJley2DxJuHc7yNgZSR5Yus0i2r8=; b=oVFJr9pCtI4yFv
	jS6SDCmJ/opxSu0vRsVoiPQbjv4hGwQYooSKHsFNPjiCW3CbPugTuhhdB33MbmdKPcro61m6wGgB6
	OmGfyTYu3mbux74Z/dXPBHBPl1FplloTy5mbTnTcHZ1HCy0lavWdWyQTmWkSuEzLYkgB0sStKCuwP
	kVG4dlj/iFm6riCGPhJL5lAhOf+x5CxV+5bcH/OfifOKNiIuZD8fCW3EuGTrHwqzXirFX2ylxU6DR
	fgU782FDbiOTsuAgXcTO8fpqPnORiOtIDnJb5jhjnUmSY7L9nx+dmdyjjcCjB+T1cNSWM5miLO1YA
	sQYsAWpKxRNoAeQLEkLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jafRv-0002lt-Np; Mon, 18 May 2020 13:04:55 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jafRN-0002TX-UH
 for openwrt-devel@lists.openwrt.org; Mon, 18 May 2020 13:04:23 +0000
Received: by mail-lj1-x242.google.com with SMTP id k5so3166531lji.11
 for <openwrt-devel@lists.openwrt.org>; Mon, 18 May 2020 06:04:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PKgbLE/wm6HHdhW58hWV6kKvZ7ap+QQBhwNyC+fVWvg=;
 b=tgDn8rm18o6N9b/jhxWjymoZD5UPxaV3TRyzeNb3dDd3Jo5FQrTFq2uUt3jVpx/Zx9
 98XzPGjLPEoeGbvItSBP54YkfGhiDl9vSYH8BXWb3N0wWCcF1SK+PXoHvXg9EJm1C/E6
 Gh3ONOR4su7QEVlFI6uy1sLVgabcuYhtktBaxqOe7KY1K+LN/Wtuk7jSQPxRe6VEiCaA
 gh/7IfqY828lkZ2Xq/GbnDp4s8p2TC8X0PPJ/KrPILNzo7Aq/i/MCWYsTPOhdRwU95JF
 COVVagwenqwiaN9ZEm7MRYQwEkZRRPiYGSWQq1VVw9Av7AX6OrMcAcjkFtdSQ4XozyJV
 sJ0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PKgbLE/wm6HHdhW58hWV6kKvZ7ap+QQBhwNyC+fVWvg=;
 b=cCyTNBcVZXhKy5g7DmrJvMHBjnmMcX3ibIseJQCh/SHk8NipHhiAYh3Hcsk/XGpf2n
 mNLiSfciJythm9HJO3H/nb1DRd/cSQW10d7Yst6ydpPoFPXJc3+eNrjeSFkul00riUn8
 /WqTD0x9LCkr1xKuxB9/n1pa7YUA1FQjpAgstX9RoPHv1CdtJjQTwu2s0AkKegWc/xlU
 sZMFxIKOVrnFKfLah9EQGiWmEThU56Vhc+bNQQNu1qLCdrHKCYCS02GZ54Ewj9vmZ+z2
 0DWp7y+WH4CLPL1Lb4Iw02q1Bo3MXd10y4zxth847+DGWZqfSt2dd+d5dlfA2Jnq/RKM
 ND3Q==
X-Gm-Message-State: AOAM530ASNgSNFnHUBxmAvSFMztwMqEIaqiG8gWPu7iofdUobwyySaym
 w3jd7zbwtDVoicvK5Okm7cbQ1w==
X-Google-Smtp-Source: ABdhPJzbxp/a7fU3txFwHyDIXr99lYUUe+W36LhZJTMsy/xVMwu/JflaMypKF+DkMTp16R7jd4aHLA==
X-Received: by 2002:a2e:920f:: with SMTP id k15mr9648249ljg.131.1589807059520; 
 Mon, 18 May 2020 06:04:19 -0700 (PDT)
Received: from localhost.bredbandsbolaget
 (c-f3d7225c.014-348-6c756e10.bbcust.telenor.se. [92.34.215.243])
 by smtp.gmail.com with ESMTPSA id f5sm6815185lfh.84.2020.05.18.06.04.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 May 2020 06:04:18 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: Roman Yeryomin <roman@advem.lv>, Sebastian Luft <sebastian.luft@gmail.com>,
 Hans Ulli Kroll <ulli.kroll@googlemail.com>,
 Hauke Mehrtens <hauke@hauke-m.de>, Christian Lamparter <chunkeey@gmail.com>
Date: Mon, 18 May 2020 15:04:15 +0200
Message-Id: <20200518130415.54668-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_060422_013203_CE2FED5B 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] gemini: Add samba4 to the NAS images
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

We used to have samba36 as a package in the NAS images
but that was retired in commit 73fa1aba94f5
"samba36: Remove" however it is nice to have a fileserver
so put samba4 in the package instead.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 target/linux/gemini/image/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/gemini/image/Makefile b/target/linux/gemini/image/Makefile
index a155939b8cd6..17e07897af04 100644
--- a/target/linux/gemini/image/Makefile
+++ b/target/linux/gemini/image/Makefile
@@ -141,7 +141,7 @@ GEMINI_NAS_PACKAGES := $(DEFAULT_PACKAGES.nas) \
 		kmod-fs-btrfs kmod-fs-cifs kmod-fs-nfs \
 		kmod-fs-nfsd kmod-fs-ntfs kmod-fs-reiserfs kmod-fs-vfat \
 		kmod-nls-utf8 kmod-usb-storage-extras kmod-hwmon-drivetemp \
-		cfdisk e2fsprogs badblocks \
+		cfdisk e2fsprogs badblocks samba4-server \
 		partx-utils
 
 # The DIR-685 flash layout is kernel in WRGG format, padded and followed
-- 
2.26.2


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
