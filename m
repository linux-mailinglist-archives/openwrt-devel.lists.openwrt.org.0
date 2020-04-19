Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A4801AF605
	for <lists+openwrt-devel@lfdr.de>; Sun, 19 Apr 2020 02:38:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C+oRCHjgxnvGm4nB8WZRZ8lrl7nqqszox6/hBP57dTk=; b=IB3d0VtdZMkrXi
	1hbNFgzs4Hw+e9Yr2EBMNx1CAjjvq67yvTRImfxOLvWtoKO8AKcMZ+fPTlWzmZz0cnsQ8NlMYIutG
	GtGh+P/aJP2GRBmu2VZP6zGTSwMt/budXXr56L21u1M5HIAvAQjLdvtRnZvik82fE4VdB50FXuU1o
	XoZYrDIUZroWfBT2qoUOcKUr2co3B3zxmRxsUjarFZ+AZ9HPxKMsoWsDJ/3mGIBdO3ROrvKVqgkWM
	46p/9K8bvifk85ojTRRJRWVaZvJVEsH8jRafAMbZssOB/bxTdQdpqRvHrtpxC5vwj8yl56fQwghBB
	5NuivttPLrH+OQNbQu/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPxyK-0003TI-IB; Sun, 19 Apr 2020 00:38:08 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPxxo-00033j-5d
 for openwrt-devel@lists.openwrt.org; Sun, 19 Apr 2020 00:37:37 +0000
Received: by mail-wr1-x444.google.com with SMTP id k1so7584996wrx.4
 for <openwrt-devel@lists.openwrt.org>; Sat, 18 Apr 2020 17:37:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ZsmiWRtGj8AqMCdb69Q4ce3gZXUR/cz4QXXaSL2XVo0=;
 b=B10bRyLycFI1MS09a2FrpjoIAfqrrd0QQH97pKwPFAi4GTDzNpqkOeSbi8/4+B0EDW
 1E2iAgo0fXsnogDYkXVNVPMfuzb375zpzT2/onxQKfTfyQlQ1ktXthJLILBn249UYBQt
 l1WVg/CAGjUaZlcvf5RhI4ph6uHtmebNZZSS2x0eaTyHBQryrU3uAYqHD/CoAX1UAQH9
 Bgkx5xLo1rHUN4KpqDmqVcRzwPIrWbQzwaLYgjtgYu+kb4osO2Mt8nLmZwf+rNBNRDVE
 X0sZvsROpjL4PU8E+WDw3+lvhI7Lg/zj9LPcMUe8XPlzs9AR71hKWZQ0Dimilb7DHhYs
 O8Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ZsmiWRtGj8AqMCdb69Q4ce3gZXUR/cz4QXXaSL2XVo0=;
 b=oEApxLBeoWb47oZTp5w8U3rB5lxB7dEehmKSYlvlXUk5SWMYyn+hnEp0B2zGJUIGCf
 7GMM/jJsvcrhog7GqwxxZCCv7S7KJSwNjxc3wAU6uf05RbS+/gS7H0AgoyLpY7fQr9Kk
 RK8K5oxEeY1JhgBKdHgVd21uhNFJLptuk6dmrTS7PJ0bkfXtf0+zX+y4L3ZfvBUYHRj+
 dU7WIm8C01jMfa+8i9wOZz2Hmr2Q3UKi9JK6a2hXFc+gG7ZT/ZfugHO3AU3iWviAOkia
 FEcW2al0LTbpwS9hwdsDOK0Vv07UsdhLdGdUsPHkHZS650GCvb4TgXak7u9z/czWD4e7
 RWXQ==
X-Gm-Message-State: AGi0PubPp+s44oVJ9xNa0SJduUdtysP1ja8yZfwIWBDzwR2pDhbFV2N8
 O7TOg8OZNp8+vmUFkWdIMyBJ3wCC+0I=
X-Google-Smtp-Source: APiQypLMtqXXaZgrUqZFtyVXz/9EJPwetWB44U1COkkDDr/sa7zLSOn8Ew58G9e44kMVPUZB2ddrrA==
X-Received: by 2002:adf:ee91:: with SMTP id b17mr11316908wro.109.1587256654448; 
 Sat, 18 Apr 2020 17:37:34 -0700 (PDT)
Received: from localhost
 (2a01-036d-0111-d83f-6865-f484-7881-a441.pool6.digikabel.hu.
 [2a01:36d:111:d83f:6865:f484:7881:a441])
 by smtp.gmail.com with ESMTPSA id z18sm31480203wrw.41.2020.04.18.17.37.33
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 18 Apr 2020 17:37:34 -0700 (PDT)
From: Szabolcs Hubai <szab.hu@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 19 Apr 2020 02:37:15 +0200
Message-Id: <20200419003715.26284-3-szab.hu@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200419003715.26284-1-szab.hu@gmail.com>
References: <20200416153146.4377-1-szab.hu@gmail.com>
 <20200419003715.26284-1-szab.hu@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200418_173736_205543_E3998C55 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [szab.hu[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH 2/2] ramips: mt7621: use lzma-loader for
 D-Link DIR-860L
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
Cc: Szabolcs Hubai <szab.hu@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This device has trouble extracting big kernel from flash,
and supports LZMA compressed kernels only.

Using OpenWrt kernel loader saves us 64 KB compared to the dictionary
size limiting workaround.

Factory image sizes (commit: 5f126c541a74) with "CONFIG_ALL_KMODS=y":
- original ("-d23", default): 4784188 bytes, LZMA ERROR 1
- with "-d19": 4915260, LZMA ERROR 1
- with "-d18": 4915260, diff to original: +128 KB
- with "-d17": 4980796, diff to original: +192 KB
- with this patch: 4849724, diff to original: +64 KB

To save some CPU cycle, use minimal compression ("-a0") for the LZMA
compressed uImage.

Signed-off-by: Szabolcs Hubai <szab.hu@gmail.com>
---
 target/linux/ramips/image/mt7621.mk | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/target/linux/ramips/image/mt7621.mk b/target/linux/ramips/image/mt7621.mk
index aa6836d50a..28d2637bd3 100644
--- a/target/linux/ramips/image/mt7621.mk
+++ b/target/linux/ramips/image/mt7621.mk
@@ -216,9 +216,10 @@ TARGET_DEVICES += buffalo_wsr-600dhp
 
 define Device/dlink_dir-860l-b1
   $(Device/seama)
+  $(Device/lzma-loader)
   BLOCKSIZE := 64k
   SEAMA_SIGNATURE := wrgac13_dlink.2013gui_dir860lb
-  KERNEL := kernel-bin | append-dtb | relocate-kernel | lzma | uImage lzma
+  KERNEL += | relocate-kernel | lzma -a0 | uImage lzma
   IMAGE_SIZE := 16064k
   DEVICE_VENDOR := D-Link
   DEVICE_MODEL := DIR-860L
-- 
2.17.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
