Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C23D31A04CA
	for <lists+openwrt-devel@lfdr.de>; Tue,  7 Apr 2020 04:17:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6X4tMCvS4bf/0xVG3J934MqUDpWXDfsEXF9vVlwxfY4=; b=J0NMQbPp2lC01y
	KXxRhNwyqg2bhJUYmrr+HelSrEpcViuUU0HmQJoGEblXT0f1qZC6CUIODXPId3FQKV68hMwwgr0We
	574BTyaKyN3oMk2fMISvdg4KpJLnmL23xLLrCEI8CAAhGaksxbKEckJ6ACOkTYbcH5pOWnEzqabwn
	SOiYz8KNBKnO1gJ2ynDoszui5g5w9NS9U70q0nssptNt8tmEllzXV4szLL752m6zD3LA4kTaGAmRm
	ilkXnhnrX/WywE4hwPz+P+YvTgL+E9Cnw5dHtWTNZylaKYqPvkNkXkDTBzJMrYRqtwA3Byy/mMukw
	+FhG/rI3JDvsOouqPmsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLdmb-0004tc-BT; Tue, 07 Apr 2020 02:16:09 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLdmV-0004sy-ON
 for openwrt-devel@lists.openwrt.org; Tue, 07 Apr 2020 02:16:05 +0000
Received: by mail-pg1-x542.google.com with SMTP id r4so993757pgg.4
 for <openwrt-devel@lists.openwrt.org>; Mon, 06 Apr 2020 19:16:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=myy28gck5BXcPTVDthlljVEFlOcc6kqGSztPp/j5LYA=;
 b=BRtBX/LEQ6/RTcsHIKE6col3MRqiOuo/3gkdH11O1TEo3j+vAFj1gAheXFzGXzTXqI
 WELccRKNnD71Go7J8mm0VmDPnCTCM2JOi6YUOp2/hiiiYTh9Mf5XOsECOW3ZuveOTTa0
 DanHT4eKp3tFiUaCmaW7uA8U9VT2fhwXW4LCAjgUfvYJfB5KW2sxq87KeTF1OLd2/lC7
 DUe2ij+Tqy/yf3DCf3cPo93bYrDYSpXXz6nrW6gBvqdFVFAUG+Ap84Ye/cV3QUi5kEnC
 rZmPlm4D77ll2YF/nWi/ODfv7u1/OpDZcNrSCLD4h/n5HqrS+kf31RnzIMZJM5LjTM1Z
 4TIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=myy28gck5BXcPTVDthlljVEFlOcc6kqGSztPp/j5LYA=;
 b=eg45soCtsTOu8yrwNiKQdmxGifw4e5n7skgxPYLbCaGDIQBvQqk+h1fHC8+ucXIvSl
 B5SVWfJooSrgP1vgLdG1ZHdConpwO67L1J88FUPoe9d2PcaIf4nFejPzkybwTrcXltOG
 GXLVbgf/AbfJlMz74kWZnTbw09A88cwFxV8naqHhCbg+ZFxp211o5KYeXqCY+uyHOusO
 XykXOB+Ng0fcVqHrPIi870Jp2FIeibKClI4aqfq3ynPl3ZW4SKOnb6A2Nf4w/rdcM/+t
 pY4wzXzmGfuU293MaK51SDMVLDbrEPIWS237v6aYtkDRGugiGHKbX0c6R4tKEBhWf8In
 OZsA==
X-Gm-Message-State: AGi0PuYRDEYn/TfQwh0PSn7V7KmsLKK4DwAp+oQj3vYvxzpxgpLrpstS
 qd3yRQIKhG7Qq+4rCkW9P144XVLP
X-Google-Smtp-Source: APiQypK4whbZiZ7ZlCvkzsq/BIkHuOQtWNJuMK19nnmO5EAEuVEXaCJvDnlghOWyao02JLjyulNsuw==
X-Received: by 2002:a62:ce48:: with SMTP id y69mr353323pfg.178.1586225761951; 
 Mon, 06 Apr 2020 19:16:01 -0700 (PDT)
Received: from localhost.localdomain (astound-69-42-19-227.ca.astound.net.
 [69.42.19.227])
 by smtp.gmail.com with ESMTPSA id u21sm149066pjy.8.2020.04.06.19.16.00
 for <openwrt-devel@lists.openwrt.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Apr 2020 19:16:01 -0700 (PDT)
From: Rosen Penev <rosenp@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  6 Apr 2020 19:15:58 -0700
Message-Id: <20200407021559.845558-1-rosenp@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_191603_816699_C383C51C 
X-CRM114-Status: UNSURE (   7.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rosenp[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH 1/2] kmod: add netlink-diag package
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

This is used by the ss utility from iproute2.

Signed-off-by: Rosen Penev <rosenp@gmail.com>
---
 package/kernel/linux/modules/netsupport.mk | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/package/kernel/linux/modules/netsupport.mk b/package/kernel/linux/modules/netsupport.mk
index ca25138571..7945e72039 100644
--- a/package/kernel/linux/modules/netsupport.mk
+++ b/package/kernel/linux/modules/netsupport.mk
@@ -1243,3 +1243,18 @@ define KernelPackage/macsec/description
 endef
 
 $(eval $(call KernelPackage,macsec))
+
+
+define KernelPackage/netlink-diag
+  SUBMENU:=$(NETWORK_SUPPORT_MENU)
+  TITLE:=Netlink diag support for ss utility
+  KCONFIG:=CONFIG_NETLINK_DIAG
+  FILES:=$(LINUX_DIR)/net/netlink/netlink_diag.ko
+  AUTOLOAD:=$(call AutoLoad,31,netlink-diag)
+endef
+
+define KernelPackage/netlink-diag/description
+ Netlink diag is a module made for use with iproute2's ss utility
+endef
+
+$(eval $(call KernelPackage,netlink-diag))
-- 
2.25.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
