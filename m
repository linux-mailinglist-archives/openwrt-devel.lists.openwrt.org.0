Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18542183F9F
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Mar 2020 04:24:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iO3q9tjso4p8gkrsVzumK1pbiOP0ZEgEeeUiPJ59p/4=; b=czzbt67BcjFMZw
	7j4Qy9UwAWV+86xbWpK1+qlmBF9JVwZY0FQexVixL7hDxAtYtecZQkQdn/wSTv+ZhgSjfdPVCsbPP
	+PCFtxkZZDTOtCC8G6OF/bopNqM/YZ9nyy8D8wTtm7T4jD1fRoZP+WEh/T9l/w45mmbg+YYaPkDbS
	uh0mY87/ZzxfxnUSelNadrrFNBs2m8VTDzkoeSSll9Ao9T6jHp3a/Tnn9xgJ7F2DGueLV/GEgSCar
	RpngXVhML2F975C6Uumc8WXslv8hx11wMOyt1S4PV270GpB/iJ+e8kTx7LjQ/N1Yc8OBgSEKe4Mwd
	KOwxw0XuQEr6oLx79/5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCavx-0002SD-SU; Fri, 13 Mar 2020 03:24:25 +0000
Received: from mail-qt1-x831.google.com ([2607:f8b0:4864:20::831])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCavI-0001oo-4o
 for openwrt-devel@lists.openwrt.org; Fri, 13 Mar 2020 03:23:45 +0000
Received: by mail-qt1-x831.google.com with SMTP id h16so6400866qtr.11
 for <openwrt-devel@lists.openwrt.org>; Thu, 12 Mar 2020 20:23:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WNOtglsbsN9g5yc17UAPyjEWbOQe3PdvplQmOJ4b4PA=;
 b=LenK8F5OHxFNmD8g1pTj+MKvXANK6f18XsWAcOtWxZOjZ7kuFIbqKrrb/xJcsDefBx
 W8lGMC4enKiB2yYqx3lm5sCrNcLh0mp1vrzIHzaXxHiy0CmvAnvTjAmUPgKxuvxKhIvB
 DGfwhyu5CJxZne1Ni8etAlhfNOIQT89xbLZ1a02ITm/MjleZPfiF8PuOrnfeMRZQktaN
 iqiAYsR3OUp6ZJB1xBAEmF4QUh35iDLMs1bq3LcqSkcXtH95HJ+R/eZk4aWWl2N3WmbU
 eC3D124JzyrJN2MfAYj5AysGAueO5ghqo+Kq1nur4mjEvoDknAl4g7r0kvf2N5CDjJRm
 ZaYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WNOtglsbsN9g5yc17UAPyjEWbOQe3PdvplQmOJ4b4PA=;
 b=PrEIfZZvIywYBsE8zX4g8fIcKrddGw9CdUqgz+FgxllgAlyYJkM/SD6LBnOcRU4JnQ
 VCC254AGMKEkJftehGlW1rexi5e5FadX1fsckC1BES3p8A0qyJVif53kKf952OV2Zzk+
 RvidXwFRh46uRhPeX+IVkm9SdeGWdNBzGA008gLOnW4EX8lkilb/G2dyyqFOMW7z08ur
 VAQTXW9dp1NqRKC5+aNYVIN23yE1c+V4Xz7pSphB/ug98ec4Ed9xqL/fHgLX8G+wOKf2
 /C/5+WN73AKMRIcSG6iX+xGk4DNi6Nizzg4uaJ0WJjxDj6iV+AuyQShuLG/+/KlITh5/
 54Zw==
X-Gm-Message-State: ANhLgQ0m1o6+Hh6cmeN8Cr9XQk7PkYZ5UCiXskwicIBwPz+qdFBM7+h9
 M/9LIfdy+9wWqBwozAGTY8sswUx/iVc=
X-Google-Smtp-Source: ADFU+vuXjDHbJNMCqeFe1sIhCFzZIkKJ1rrF6vBl9t8fPRqTNYovds2QnOUBb/Dln27v7SEINmQ+FA==
X-Received: by 2002:ac8:714b:: with SMTP id h11mr6820861qtp.21.1584069822770; 
 Thu, 12 Mar 2020 20:23:42 -0700 (PDT)
Received: from asus-S451LA.lan ([190.22.38.85])
 by smtp.gmail.com with ESMTPSA id b13sm3514833qkk.95.2020.03.12.20.23.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Mar 2020 20:23:42 -0700 (PDT)
From: Luis Araneda <luaraneda@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 13 Mar 2020 00:23:13 -0300
Message-Id: <20200313032313.383555-4-luaraneda@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200313032313.383555-1-luaraneda@gmail.com>
References: <20200313032313.383555-1-luaraneda@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_202344_194438_7B910EB1 
X-CRM114-Status: UNSURE (   8.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:831 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [luaraneda[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [PATCH 3/3] zynq: switch to kernel 5.4
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
Cc: Luis Araneda <luaraneda@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Use kernel 5.4 by default

compile-tested: all devices from target
run-tested: Digilent Zybo Z7-20

Signed-off-by: Luis Araneda <luaraneda@gmail.com>
---
 target/linux/zynq/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/target/linux/zynq/Makefile b/target/linux/zynq/Makefile
index bcd36ffe2c..ac3989ba30 100644
--- a/target/linux/zynq/Makefile
+++ b/target/linux/zynq/Makefile
@@ -20,7 +20,7 @@ define Target/Description
 	Build firmware image for Zynq 7000 SoC devices.
 endef
 
-KERNEL_PATCHVER:=4.19
+KERNEL_PATCHVER:=5.4
 
 include $(INCLUDE_DIR)/target.mk
 
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
