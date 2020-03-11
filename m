Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC12C180D1B
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Mar 2020 02:07:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nOcgfF/QhRTfhx0ko5YiUAbo3rG2KwMd0TpzXVSsJaE=; b=i7Ky6LPEwgahEj
	bYCYZJ39EFVOpod1x7U7iPNYtK2ut84KSGDbvZFj9h4nfwpmiT4moc0/n3/OsbZ9MmXhf2c6KyCHf
	C6h++j/lIt8TGNWFmYhCqCRwCvDbgU+jIHmgX8Ub1KzI5MdEFWa8HWLF904WmBZ6IOf24m4EYVbnD
	a6oZy2gDA5puk0O7BKIOQhiCQvxMkUKZBV3oUYajPzOLwjY1RoTi6pFGTl6Ixg+rfJ5lK5Z1i8Lcw
	gFfpRFQMQSmJvTKibsW1OiWzbZa2ZgO3vpROJ2eUo9rFD9bMuegTNTeqBbFlBPs3b7hdP5CRywMs0
	hhZhP7ne4k9zGNS8Ao3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBpqP-0008UH-4z; Wed, 11 Mar 2020 01:07:33 +0000
Received: from mail-pg1-x535.google.com ([2607:f8b0:4864:20::535])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBppj-0007kZ-12
 for openwrt-devel@lists.openwrt.org; Wed, 11 Mar 2020 01:06:52 +0000
Received: by mail-pg1-x535.google.com with SMTP id t24so231139pgj.7
 for <openwrt-devel@lists.openwrt.org>; Tue, 10 Mar 2020 18:06:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=personaltelco-net.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kn+R7vT6hYvzkHNfSFh2CgvjQPkMbWqi8l166MUYrJU=;
 b=tzfG+kQDWIKpuvK2tKkcRCkhhcNxCf+PXB1Jtd/x6C/OKs68HpKzce6zQrm6AkahxX
 JiYYvjIbsz05CYUyrEBU5k9AHW5eROzR0QE+BQw373fyhAFvLAj2I25T+3SFGt3Hntqa
 IvelhXlRaWCJfBkIPcUTSjvpD1YdV9/TSzClbI4N2Ggo/Zy4RrNRsv2kigliW85apMnb
 gr4Zp/ZefgLAwfJMQOnZGPx/4lNAueWC/lVAUpqHu7umsbGTSZhfuhdq5Q63GN6laMri
 Fv6pxt4eP+cRbqwuPfjrK+dGNkiyZAqnQOxqdrud5eoaDGGKzwkpCt0skchm+OeWv6XX
 fCBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kn+R7vT6hYvzkHNfSFh2CgvjQPkMbWqi8l166MUYrJU=;
 b=RpRPxMhMUMle62FnN8DyKCU4D0RTI7FEazqLBTKYeojonJl9chWao7A1UTLs6Qm8Lz
 bd5D+YkC6NI+QTy/UuNXFIJtrI+Ji9By778ozaLgNVhEPsB+gbEo+8oKw9aevBAiPba2
 6b4/4g08hqeraSSgxufNGmjgZlidEI0ElPoJUPT2pBAppVn+h3qkOm3tXvXeyr9DYrhN
 DNzr1SjOJtqaWuaB40KCtsemhqbubVjKdwAltGs7Yag0XjiocF2ezSIBCmoalVfJL8G1
 blPn5KM6GuwSB8cq9486770NOtm3YwM7vBVpkJX5Qjoi6lKjQXsVsxladKR410dI4VIo
 rpMg==
X-Gm-Message-State: ANhLgQ3HABUi+AidnwqaxXuJfeIHsBMwiWNZsXf1EDR8dPRehnVSl3zD
 HQ+gZ7nvvE/3zJSSAOyD91LIw+Kxl3oojg==
X-Google-Smtp-Source: ADFU+vvXhkAyGB3vDp8BnO/FNl1wlE4cUti/uV3x5/Otsz5brBFChMkyvLdkkll7UAVzFfC9NpCCrg==
X-Received: by 2002:a63:8ec9:: with SMTP id k192mr372430pge.293.1583888809874; 
 Tue, 10 Mar 2020 18:06:49 -0700 (PDT)
Received: from hawg.ptp ([2602:3f:e4ac:bf00::70])
 by smtp.gmail.com with ESMTPSA id m18sm46353680pgd.39.2020.03.10.18.06.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2020 18:06:49 -0700 (PDT)
From: Russell Senior <russell@personaltelco.net>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 10 Mar 2020 18:06:05 -0700
Message-Id: <20200311010605.2818827-5-russell@personaltelco.net>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200311010605.2818827-1-russell@personaltelco.net>
References: <87tv3dtzut.fsf@husum.klickitat.com>
 <20200311010605.2818827-1-russell@personaltelco.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_180651_112151_4F09236C 
X-CRM114-Status: UNSURE (   7.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:535 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH v4 4/4] ath79: add DEVICE_VARIANT for
 ubnt_bullet-m-xw
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
Cc: Russell Senior <russell@personaltelco.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Signed-off-by: Russell Senior <russell@personaltelco.net>
---
 target/linux/ath79/image/generic-ubnt.mk | 1 +
 1 file changed, 1 insertion(+)

diff --git a/target/linux/ath79/image/generic-ubnt.mk b/target/linux/ath79/image/generic-ubnt.mk
index 5808d8f424..e8c8ebf30b 100644
--- a/target/linux/ath79/image/generic-ubnt.mk
+++ b/target/linux/ath79/image/generic-ubnt.mk
@@ -136,6 +136,7 @@ TARGET_DEVICES += ubnt_bullet-m-ar7241
 define Device/ubnt_bullet-m-xw
   $(Device/ubnt-xw)
   DEVICE_MODEL := Bullet-M
+  DEVICE_MODEL := XW
   DEVICE_PACKAGES += rssileds
   SUPPORTED_DEVICES += bullet-m-xw
 endef
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
