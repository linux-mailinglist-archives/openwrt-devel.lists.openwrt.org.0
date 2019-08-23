Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38AC09B805
	for <lists+openwrt-devel@lfdr.de>; Fri, 23 Aug 2019 23:06:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=O/bNXbEWi1cEJx3S6+LBZbfOvAH4oZVcnpd1DmgKrAI=; b=SRWGX5t9VGbpwvFZ2i2mXP032E
	RqLfv8Uo4bzBBFEPSchBJtezK5A+Cv/2oyJeLwdZC/wsFgIKziio5Us8XrbkeO5K+3U3kH0cRqBBW
	LnmhXbzHOzNPSQEI+/hcxBZ4Sf92Iw+lp2FvTiuB/oDqAZeCMjdC7Fw7tvyCyPPqaZCNZ+otrtdxt
	TChCa9GNCzahfs4vRhhQ6LRso6OTuYqVxxEzshCG4loy7cqa+3BV10d9mdxUG9i50bNUKL24GntlT
	vghaH50OFiNKkiuznUkvlR+4rS6N2ZJVeQFmCk0UyI1e9I9Y+8Bg9RSD8hI9tjAWkBU6lwdVPxuCI
	8Y865/YQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1Gld-0003N5-JR; Fri, 23 Aug 2019 21:06:41 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1GlX-0003MN-34
 for openwrt-devel@lists.openwrt.org; Fri, 23 Aug 2019 21:06:36 +0000
Received: by mail-wm1-x343.google.com with SMTP id g67so10317041wme.1
 for <openwrt-devel@lists.openwrt.org>; Fri, 23 Aug 2019 14:06:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=WVczKFYaBq+XbN4ycsWp1oRbhgeWG1d3HJep5XKtCvI=;
 b=SKtGNEJ91sQI7nSnnkkxO4+HS/qqBv8M71Quaf6MJHqTHq6PkZQSVUTkXFKcnLjspD
 r50slqcUuLyclvW2lykrZGgcBCzKIVCn/HJpG9WIv5uTBRvnIWsZOI0PwFYipYRkodn2
 kmW/uLNrmTKsroag/0Z5Ylibop4YJlYRqDas5w8pt/Px/V8KsYUlUYMeU5DNVxCpMwj8
 gDQReiHAJAn1vXyf3E36aX8fdERPXBCGISuwC6ho1CkfPJzQowySKcgNCnHjfPl/eMeX
 luNVMnXmTmiEmuL5U4v8wlhWCVu7dn1Cg+eYlxCmnG7nPIE5/8JKKHlTrggDqHB5HrQb
 tJdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WVczKFYaBq+XbN4ycsWp1oRbhgeWG1d3HJep5XKtCvI=;
 b=Z70O/ZJAvE4w81L6E5LNnEYzyYFC+Ux4YhRKkTHe/k6ajlxU9F2kPI1GjsNqT6dFsJ
 2zt2p/v6ZKKasjixUzOyK1LR+9Yk4l2p8LbuO64H37AyUyjq6H69PQ2jfCYi9kMa0bwl
 Z6ZSzII5tOZE/YbP8zhnzNxHagtHCOB2yZOAPG6KSS17+X2olZOqxIey0iKRjDqhEZKJ
 AYt3pLU3sSwUz0CZLGsI58mIqw3jcyrO3zSfe5GyX/8gciFrjAtsFDUVtWLp744r+tRd
 lmWtqFbbLOy3sH2v400KLLgRInuj65tIQ7yW+VckDAD2egUspBUy/+L0Y/N3IwCVgt5p
 3Ovw==
X-Gm-Message-State: APjAAAX/Pev/CnmDFd3eQ3+Q8SSno6d0J+HYRtnt+ll6UPGwFQk0HQWn
 hona32DaeD9nGfQs43Db3rZVQTzt
X-Google-Smtp-Source: APXvYqxiOgUotDFJ/UTSFW9GZ3CahefzUOKP0hq1ISjPeYsJ6NiYmw8tEFEZOUiWRePa0C5rCUksEA==
X-Received: by 2002:a1c:ef09:: with SMTP id n9mr7092683wmh.23.1566594393207;
 Fri, 23 Aug 2019 14:06:33 -0700 (PDT)
Received: from debian64.daheim (p5B0D7455.dip0.t-ipconnect.de. [91.13.116.85])
 by smtp.gmail.com with ESMTPSA id
 b15sm3227953wrt.77.2019.08.23.14.06.32
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Aug 2019 14:06:32 -0700 (PDT)
Received: from chuck by debian64.daheim with local (Exim 4.92.1)
 (envelope-from <chunkeey@gmail.com>) id 1i1GlT-0006Bb-Ud
 for openwrt-devel@lists.openwrt.org; Fri, 23 Aug 2019 23:06:31 +0200
From: Christian Lamparter <chunkeey@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 23 Aug 2019 23:06:31 +0200
Message-Id: <7f843b505843bd1fee347a1b46df6513de8bf735.1566587318.git.chunkeey@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <b58f9044226dcb23a2fc89def656d66b92ee00b1.1566587318.git.chunkeey@gmail.com>
References: <b58f9044226dcb23a2fc89def656d66b92ee00b1.1566587318.git.chunkeey@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_140635_137680_0739EB80 
X-CRM114-Status: GOOD (  10.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [RFC PATCH 2/2] apm821xx: utilize softoff on the
 MyBook Live Series
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

This was a requested feature on the forum some long time ago.
The original vendor firmware from Western Digital allowed the
device to enter a shutdown-like state and remain there
indefinitely.

Because OpenWrt sets the platform's nowayout watchdog, this
device will reboot after some time even when poweroff gets
called and the kernel supposed to just do its infinite loop
thing.

With this somewhat universal "softoff" the device will be
able to enter a similar-but-different shutdown-like state
with the HDDs in a safer standby mode so it can be moved
and disconnected.

Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
---
 target/linux/apm821xx/image/Makefile | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/target/linux/apm821xx/image/Makefile b/target/linux/apm821xx/image/Makefile
index acfd478755..82e84f72f9 100644
--- a/target/linux/apm821xx/image/Makefile
+++ b/target/linux/apm821xx/image/Makefile
@@ -230,7 +230,8 @@ ifeq ($(SUBTARGET),sata)
 define Device/wd_mybooklive
   DEVICE_VENDOR := Western Digital
   DEVICE_MODEL := My Book Live Series (Single + Duo)
-  DEVICE_PACKAGES := kmod-usb-dwc2 kmod-usb-ledtrig-usbport kmod-usb-storage kmod-fs-vfat wpad-basic
+  DEVICE_PACKAGES := kmod-usb-dwc2 kmod-usb-ledtrig-usbport kmod-usb-storage \
+		     kmod-fs-vfat wpad-basic softoff
   DEVICE_TYPE := nas
   DEVICE_DTS := wd-mybooklive
   SUPPORTED_DEVICES += mbl wd,mybooklive-duo
-- 
2.23.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
