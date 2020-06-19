Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC8062005B1
	for <lists+openwrt-devel@lfdr.de>; Fri, 19 Jun 2020 11:47:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GHIaJPcG3y+70FVJhGnf/io4nWvj2lglKgt/x6oIBUo=; b=hO/Da+7cgrgIcq
	/u2T1f7+wbl20tbPA8gHD997U9oiqsb4blQlbpVTdts2bWPaK+njga/xolgSBGw473of57qcvn/x7
	Qa3HfbNsIXIAnmTb9kgTBCjgMjcqWupEQM4AlmX8ufeVSsNN5MBJVWiMXeZtbSMMwPlNv/aBUExtA
	RtEIGoayWoACpAGkVRFqlAqjb6suLC+lVcr0lnk0l2BHFkYyAHRSFqx9/K7XPaWAgK0vtyBarPF6t
	vIVxaB/Nvn4bg0TIzs83BT3U22F23bcV869w+SzjHwsu7N0KHWjGRKvK7qkBYPFY2PWjYWGyBqmO4
	23PoTi3tMLQ/xxCHOgAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmDc6-0000mD-7l; Fri, 19 Jun 2020 09:47:10 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmDc0-0000lM-Qe
 for openwrt-devel@lists.openwrt.org; Fri, 19 Jun 2020 09:47:06 +0000
Received: by mail-wm1-x344.google.com with SMTP id t194so8514712wmt.4
 for <openwrt-devel@lists.openwrt.org>; Fri, 19 Jun 2020 02:47:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=56BFxjLdpgDcM4uoCro4lt5FK1X0ED+55e5fvbFqECE=;
 b=chE0m9ocERiVDrhY39uV+LPYTjcBwSocXOrMfkUU0Ktci5DXw3z9Nwof2siaFbeYCk
 VOT1LeR7UyV/QY9e1YkCatz5QqA7MCQLSQL3OdOAbQoFEDitp7lXix56jPpWIXmabDI9
 rCPKtyyei3uimSquBBuqAjNRhks6jGhWTkpHlHStWImFQQmzbXgsd1WDHTHith3pNAak
 vrkbAHtJZBpbPpsNKqZqYDbGuiRZ5uxOTBc2eGfyflt2+h8zNntwARoq7qVYwtSzQZ+f
 IPuzlDt3Xk5iZD4wyddpHhmHl5NpBfIXlg60ZsJnAwfBIVMOSJThWYYrov7Oux33rwaP
 bEuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=56BFxjLdpgDcM4uoCro4lt5FK1X0ED+55e5fvbFqECE=;
 b=gjnxTtalUZ8BvCdCdAbHUn16+kPOgFk5vGnGLZ8sSKLtKekM2vsgQtq3Tha2FWoKA6
 XlHBSE5drx0x3NsMEtJtIcpXsak/BGD5ZEw8+pm0l331Onc58BYv5TbaY7XCKjNp9lt6
 5eJmEsGBAZyBRxRPweNHQKwNlC+4LXcc5M/qvb4WtZSZCqPPhIRmQG/ZkYIlx2b6dAO1
 Xj+PpWAO3U8fW67PwZAcDPothcOtuWjbZyJg5rFCYkL+P1QILD8K9tRfxQvkwaj8TWO8
 MHJGNqz3FZMDR6no/zkzWiTv2boDIEWF4xo5n5cVBnfrrA1vqH7n92PenUS4a8gq4GCD
 FZng==
X-Gm-Message-State: AOAM532e4++D4U508qsDvd1lAJOKQy9aAOA1ow4qUYk4A7BHur7LWjso
 l3tPaQibd57pwQNB6qdPUNLbEb1KbMUS
X-Google-Smtp-Source: ABdhPJyR3tLRFCWFYC7rR6rWVqEzKA910eKbYALhFWJtTJ4tYWV9/ltxni4hsHfAQ6lSayYEBCnKag==
X-Received: by 2002:a7b:c5c7:: with SMTP id n7mr2859620wmk.77.1592560021846;
 Fri, 19 Jun 2020 02:47:01 -0700 (PDT)
Received: from presler.lan (a85-139-207-71.cpe.netcabo.pt. [85.139.207.71])
 by smtp.gmail.com with ESMTPSA id c201sm1955970wmd.4.2020.06.19.02.47.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 19 Jun 2020 02:47:01 -0700 (PDT)
From: Rui Salvaterra <rsalvaterra@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 19 Jun 2020 10:45:25 +0100
Message-Id: <20200619094523.3162-1-rsalvaterra@gmail.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_024704_878908_EA3DB4C2 
X-CRM114-Status: UNSURE (   8.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rsalvaterra[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] [RFC PATCH] ARM Cortex-A9: build the userspace with
 Thumb-2 instructions
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
Cc: freifunk@adrianschmutzler.de, Rui Salvaterra <rsalvaterra@gmail.com>,
 hauke@hauke-m.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Thumb-2 code is denser than pure ARM, reducing RAM usage and improving
performance due to better instruction cache footprint.

There's no reason for not enabling this feature on other ARMv7 targets
(cortex-a7 and cortex-a8), but I don't have the hardware to test it.

Signed-off-by: Rui Salvaterra <rsalvaterra@gmail.com>
---
 include/target.mk | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/target.mk b/include/target.mk
index a2ceb7f783..dfc6f4e480 100644
--- a/include/target.mk
+++ b/include/target.mk
@@ -196,6 +196,9 @@ ifeq ($(DUMP),1)
     CPU_TYPE = sparc
     CPU_CFLAGS_ultrasparc = -mcpu=ultrasparc
   endif
+  ifeq ($(ARCH),arm)
+    CPU_CFLAGS_cortex-a9 = -mthumb
+  endif
   ifeq ($(ARCH),aarch64)
     CPU_TYPE ?= generic
     CPU_CFLAGS_generic = -mcpu=generic
-- 
2.27.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
