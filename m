Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A561AA3E46
	for <lists+openwrt-devel@lfdr.de>; Fri, 30 Aug 2019 21:18:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	Date:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iiv9jsksaY9ReZjqpUhRjhovJPXJPvwdJlYpk4oWnrw=; b=Sr8RbhfOBBmKlj
	Xjw7cpwhH6C78C0Lcn5BVeEjTtlUG2ENVNM8N5cIbT3+xOhRrEbroawjzsLxYtJl5jqALcEBc0msB
	0C7z1gRWOwDtvtlaudVzcwwU2Csjx3QY/LVaA24CI9qzgICeSSvctQG+otPkkl5Ib1XHVKHEt0E1C
	iFJiDJOsEmjfUnsH7ZiC+mjuGI6hBJv08TAs3Tuwp0PrBzPckgAuMbpayd9raBIDF0wS1XUSxXuvq
	twi4hNXhglp2nbj1jXrVrHTd1Pg5o+kWZfl2w9f2W0BxljDZREpBmOSF/Tiga1sxuYiL1S3TNymkY
	BS15f5fVCAPH/hxjC1eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3mPC-0001yY-TF; Fri, 30 Aug 2019 19:17:55 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3mP1-0001mi-GX
 for openwrt-devel@lists.openwrt.org; Fri, 30 Aug 2019 19:17:44 +0000
Received: by mail-lj1-x22c.google.com with SMTP id l1so7412321lji.12
 for <openwrt-devel@lists.openwrt.org>; Fri, 30 Aug 2019 12:17:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=DCxLD1vIEb8If9E3qD37+gFKWYSVqboPEsveoPJXdic=;
 b=LqGmBmGGohutZQOzNICxcWdo/rAdg+9JLAyGf4veEA0auQESQ1cxpcBaVzLdy9nKFG
 aY1PhtkYYv4CoSteL66pe6yEFjgo5ttBjb7XqtInsKINC0xXq7hxgfMhpBlDFCxLwUwx
 o4um4hadet6asN2nyTyCVOy69rBtx2iubpy4AGnc0kUgHv5Tnp5RfYATKeiRZS7hdvdi
 JCOxkkbW9NA21IFUzwZ7pMm0R8veaKcCJPXiyniK91026uMp9ww635Q+AoNYngF3QQvC
 7jSLgcv1I1JOs14AsoSl1E/DSCLc01j6yzwOMnpH+x4LcfROA15UhHNtT+0x8DvypiDR
 i/zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=DCxLD1vIEb8If9E3qD37+gFKWYSVqboPEsveoPJXdic=;
 b=aZFHqUC0OfpqI9cEFrzUIAw+lHXyaYl73t16FsEU2OfsSwT4qMPPtz+I64KyZjIcRw
 pOebLRCXsZCq9RKbUdKP/wRp0G9Nb8BAzZ1lAcPPyoT/9e+rs9IEW/E8vpPXo5lxnzsq
 Ipwh8MUm/pCX4NrOjnD8vKi6Qp0BG0zqbN5q2kA41U6NXFlVnZBpl7CoXO8YWUwyvoJi
 fQnKWFSEZl7ayinxO4svWMEksvSPa8uH5CyHy1gaxeTXErE5Q+MK3URr8iY1C0H4oc0b
 946MnK762HQCcBUBVIOmwk5V0NDOlLhbCUGDkvSGv6RA2Z3Ffkl1rPdMHZ6qhhC9ULOe
 X+tw==
X-Gm-Message-State: APjAAAVYltTCg/UrUkDTC7d47bo2oiHGhDTOkcR7kbOQfWMMFh97RtkD
 jKv+jT2mPbtPHfucuu7oxrqzlPJ2Ueo=
X-Google-Smtp-Source: APXvYqyQdAY3M+2IfuaFrv2JXLtI8jC6r9z4HbzKApB2aSXcr8WwlDVD94YWiuFxTaWOfkgX3w+cNw==
X-Received: by 2002:a2e:b00b:: with SMTP id y11mr9327347ljk.159.1567192661438; 
 Fri, 30 Aug 2019 12:17:41 -0700 (PDT)
Received: from natasha-samsung.lan ([31.173.80.208])
 by smtp.gmail.com with ESMTPSA id c4sm135581lfm.4.2019.08.30.12.17.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 30 Aug 2019 12:17:40 -0700 (PDT)
From: Dmitry Tunin <hanipouspilot@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 30 Aug 2019 22:17:24 +0300
Message-Id: <1567192644-29023-1-git-send-email-hanipouspilot@gmail.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_121743_574571_529BD066 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:22c listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hanipouspilot[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] ath79: DIR825B1 switch to gpio-keys
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
Cc: Dmitry Tunin <hanipouspilot@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Signed-off-by: Dmitry Tunin <hanipouspilot@gmail.com>
---
 target/linux/ath79/dts/ar7161_dlink_dir-825-b1.dts | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/target/linux/ath79/dts/ar7161_dlink_dir-825-b1.dts b/target/linux/ath79/dts/ar7161_dlink_dir-825-b1.dts
index da19921..8e60bb4 100644
--- a/target/linux/ath79/dts/ar7161_dlink_dir-825-b1.dts
+++ b/target/linux/ath79/dts/ar7161_dlink_dir-825-b1.dts
@@ -81,21 +81,18 @@
 	};
 
 	keys {
-		compatible = "gpio-keys-polled";
-		poll-interval = <20>;
+		compatible = "gpio-keys";
 
 		reset {
 			label = "reset";
 			linux,code = <KEY_RESTART>;
 			gpios = <&gpio 3 GPIO_ACTIVE_LOW>;
-			debounce-interval = <60>;
 		};
 
 		wps {
 			label = "wps";
 			linux,code = <KEY_WPS_BUTTON>;
 			gpios = <&gpio 8 GPIO_ACTIVE_LOW>;
-			debounce-interval = <60>;
 		};
 	};
 
-- 
2.7.4


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
