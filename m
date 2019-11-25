Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1880109483
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 Nov 2019 21:01:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=h9gIIxRerSnVaUMN0Hio3F9yQblolCLciK87D91Zfi8=; b=EFyZDQL8qmeQUA
	RnlYYWM8hAEQL8M/wBitgrjLEHU8d43Drnoz79dqmPkAvEfdatnH8odDRE388jJHdQ9zkBn/AETgS
	lX6yOkD0V1/UafeNHi9mIbWq+HRaSaIsk/G29sXpk0mmKdGEoUDLdPyvhiMjve+31uHJKvFhZUv3C
	MiVeU+ETand4WXxovFEjYqJ+Wy0+p+C/wgo7qwM168fjfpAbvVt8i4d/W89AsGBV/cmu9fO8w2dMS
	lzr5gHo6q5zytMHlEesfI4R7iQuYPRBvrTmvTjePiVLsHuj0GVeBkDHOEDzSuJnlOPBA2aRQrPYHH
	NP6pB+ye1rHVrzpBysJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZKXf-0002v0-5H; Mon, 25 Nov 2019 20:01:03 +0000
Received: from mail-lj1-x233.google.com ([2a00:1450:4864:20::233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZKXY-0002u5-Jb
 for openwrt-devel@lists.openwrt.org; Mon, 25 Nov 2019 20:00:57 +0000
Received: by mail-lj1-x233.google.com with SMTP id d5so17394930ljl.4
 for <openwrt-devel@lists.openwrt.org>; Mon, 25 Nov 2019 12:00:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HwZWcf4eIPsO9BuUMDKsWzz/azVXXKgXVFuhuEcPEl0=;
 b=A6hoRjwzR6yhWNUcMRNy/jqgMcJfZDDWzYPPQG58R6JSapc/QtObKOFWIg93sKMtRs
 mVqr1Sl94lfzKdeYO3eDUejNIyiuHCenq/N+Ou1nM/3dVQdDEWOGA+ORoNyPJ0H1OX8g
 2Ve9qShE4xF4pB00QwSV1J92uTEIMpSzOO+oNlE462Wy4twH4kSTquDMdPgPmuEvXyzQ
 YoBxjbHEoS8atSuJ1L7rQAYO5vHb9+R8ORPHvweZNOyoan+xSSiyFwLy55WvOsEMys6g
 SK3s6yd1LTsz0tUzdHRyDaooVSAYCJ5Is8dnklhhQyGy4AsWccdBJ+sswtPG3YCWVI94
 M+1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=HwZWcf4eIPsO9BuUMDKsWzz/azVXXKgXVFuhuEcPEl0=;
 b=T1OvGCQCJ0cqLVIMpiwIo8WV6OGR68hWX3fkRaUSrUWiOqEL/T3RiTepKu1JBpcwfI
 0wEzj7Q4q5a7aXkVeexX47ji99hbjS3Ac5m80yYF2Rt2vaNPxXPD7Z0sJhbEdcD5I8F4
 JAIkGaGIgeBmMHia6BvNjLNnLXYSN62j+ouBBRKs6hlyZKq9HUvOwuUDvjvMmvzCOUVE
 PU/xZNDbPuidOHAd1ou27P7VTAS1tf6py0cJv5bKw102HGdphPSs9l1C101H0rAxFYT0
 6K9VSYs8K2+jbeG76m8J7TboX554akftLbWm3KpMCN39J4pR7vnXBq6ZUPr4tykf7sQ+
 3FRA==
X-Gm-Message-State: APjAAAUJi5UDsanky6t08mEPJnfICAZ7MpGw8ZfP4GjMhbGz+5k6TGHD
 zreOlwaAHwyYfrlJ1co4tKc5ZNLp
X-Google-Smtp-Source: APXvYqyQSzWPRnv9Prn07W+4B0PN4JUjleopq8xWjtQO2no7ONQTc1ki6tXQ15nu2L5EWUgqD7VLNw==
X-Received: by 2002:a2e:22c4:: with SMTP id i187mr24362559lji.86.1574712054122; 
 Mon, 25 Nov 2019 12:00:54 -0800 (PST)
Received: from desktop-mint.lan (095160109150.warszawa.vectranet.pl.
 [95.160.109.150])
 by smtp.gmail.com with ESMTPSA id e14sm5068670ljj.36.2019.11.25.12.00.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Nov 2019 12:00:53 -0800 (PST)
From: Piotr Dymacz <pepe2k@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 25 Nov 2019 21:00:30 +0100
Message-Id: <20191125200030.4293-1-pepe2k@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_120056_668262_66EA3BD9 
X-CRM114-Status: UNSURE (   7.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:233 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pepe2k[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [PATCH] umbim: move package to 'WWAN' submenu
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
Cc: john@phrozen.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

'uqmi' was moved to 'WWAN' submenu in 9abdeee0b7.
Let's be consistent and do the same with 'umbim'.

Signed-off-by: Piotr Dymacz <pepe2k@gmail.com>
---
 package/network/utils/umbim/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/package/network/utils/umbim/Makefile b/package/network/utils/umbim/Makefile
index 417363f4da..cc34002f6e 100644
--- a/package/network/utils/umbim/Makefile
+++ b/package/network/utils/umbim/Makefile
@@ -23,6 +23,7 @@ include $(INCLUDE_DIR)/cmake.mk
 define Package/umbim
   SECTION:=net
   CATEGORY:=Network
+  SUBMENU:=WWAN
   DEPENDS:=+libubox +kmod-usb-net +kmod-usb-net-cdc-mbim +wwan
   TITLE:=Control utility for mobile broadband modems
 endef
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
