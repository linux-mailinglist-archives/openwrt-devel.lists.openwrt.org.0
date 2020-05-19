Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23AF31D93DD
	for <lists+openwrt-devel@lfdr.de>; Tue, 19 May 2020 11:55:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ca/9jrh9GM/Pm+eX3DH1tjlO2MVKItXYztUVkXN/RmI=; b=bOK6bd52e6iI76
	ce7oqkVTbpu3dxMJkI3cUqbE/4cVcqQNCUt61y6FRRtEn9vrxXyjRAPWyNMTFnrdZ3MO7fIfijZdG
	9EW57qU9+sOiFfnHcxN0yr6hbAwKZKXgZQmVd2hBeoiwqHTillJv4QnuwKI05QeVQwHBcBD/BQOwo
	vny9S52eu5cox/sVNvXObo+MT/vXqa9oEuCEVCAuurIxUaxcoFrYv4IhAjaVrgb0i6UO21kkkUae+
	k2NmWjciCeqeoFVq1ETj01Nd3c35CIyxRhFKLw9UX1N/2fzLbogg1aZgrIRFqun4NP+MzMqRMpOyb
	PonsDjuZhBfbHnjx0ksg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jayyV-0002mI-Pp; Tue, 19 May 2020 09:55:51 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jayyP-0002lS-Jd
 for openwrt-devel@lists.openwrt.org; Tue, 19 May 2020 09:55:46 +0000
Received: by mail-pg1-x544.google.com with SMTP id p21so6145415pgm.13
 for <openwrt-devel@lists.openwrt.org>; Tue, 19 May 2020 02:55:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jw+BQ/pxAiljzPDsX0JkL/QSsLs/k34sP2v7jf0x78o=;
 b=rVXgSCCptq7ajIq2XxQPxXIqcEtsREaQelI7lBeSCVX4SZNT9WDWC92NivKbIjZTlh
 8sV3Vckome6VhljY5mRF2EhX5/DmshqTmSGQfNyY/WFgBFDEzdKYSSrnx0kH76BsjmDO
 MaS7mx3CDVbeXRSnTva+BshHeLeZpln6o7mP74yAcYiAjvITTm6N+NQ0vEtlZb8sLh3B
 9cC7Se13YyPW91EoxvC39WI/HyvMUpfsL2FuzLxYpg/NqNJ7LKTLkA8MUxrjq02s87ng
 g87wWumLc9d+EV9c1hiC2GhHbIjKM8a0QoxxpacKYYvELfEFK4YOp5SpUMw1o6t9BICv
 VhMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=jw+BQ/pxAiljzPDsX0JkL/QSsLs/k34sP2v7jf0x78o=;
 b=Hpk0H3Pfq5aQIdTB5+Pmhaw8wDKeFQSvoYVShWMdsygBTXFAkp7DQedTbWPpYIranP
 QAqRMM8Fd+/9J7E9bNH/sNdTHCoj5VX3AFw1oebiHAJWUYFxOLxTU6myJtI1R06l+iRd
 qiqlJHFtg3IZ2q4Am2ewhnN39NLyAgzzr/w551JmTRk6nN15l9SOmHrPwLO4wTkLM48D
 U6hlQ8CmOEzVKwNdRPzVQphN9hv004f9Vh6+y0WRHDZ2D/Z7vuVThvXiETUZWb6sskAO
 gP2j4ktezcmu5xJUJJ+kemCrJJTWW+uDWGR1WYR9yEYKuUMkcjKgmSP5YvIe1/XC0CAw
 9MUA==
X-Gm-Message-State: AOAM530N2gQu6EssPTSYhr681usejFqrQM0wRFjF4IuKFODos+BErR2D
 JkEzTffAWM5y5tzw80FWEwoKMRg5
X-Google-Smtp-Source: ABdhPJz49Chfw11a+Y0S7Hrqt+wKPIgTvjH6aIsRmTJdjF7jwj1Nszh+Py4zgDhyg5iRqfVQnKd1rg==
X-Received: by 2002:a62:2e01:: with SMTP id u1mr18586135pfu.42.1589882144415; 
 Tue, 19 May 2020 02:55:44 -0700 (PDT)
Received: from computer.lan ([134.159.105.133])
 by smtp.gmail.com with ESMTPSA id c12sm1848462pjm.46.2020.05.19.02.55.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 May 2020 02:55:43 -0700 (PDT)
From: Jeffery To <jeffery.to@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 19 May 2020 17:55:34 +0800
Message-Id: <20200519095534.1573193-1-jeffery.to@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_025545_652892_B31A100F 
X-CRM114-Status: UNSURE (   7.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jeffery.to[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH] kernel: kmod-ptp-qoriq: Package kernel
 object file
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
Cc: Jeffery To <jeffery.to@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

This updates the package to contain the kernel object (.ko) file instead
of the plain object (.o) file.

Signed-off-by: Jeffery To <jeffery.to@gmail.com>
---
 package/kernel/linux/modules/other.mk | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/package/kernel/linux/modules/other.mk b/package/kernel/linux/modules/other.mk
index 43709228f9..f05c758340 100644
--- a/package/kernel/linux/modules/other.mk
+++ b/package/kernel/linux/modules/other.mk
@@ -975,8 +975,8 @@ define KernelPackage/ptp-qoriq
   TITLE:=Freescale QorIQ PTP support
   DEPENDS:=@TARGET_mpc85xx +kmod-ptp @!LINUX_4_14
   KCONFIG:=CONFIG_PTP_1588_CLOCK_QORIQ
-  FILES:=$(LINUX_DIR)/drivers/ptp/ptp_qoriq.o
-  AUTOLOAD:=$(call AutoProbe,ptp_qoriq)
+  FILES:=$(LINUX_DIR)/drivers/ptp/ptp-qoriq.ko
+  AUTOLOAD:=$(call AutoProbe,ptp-qoriq)
 endef
 
 
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
