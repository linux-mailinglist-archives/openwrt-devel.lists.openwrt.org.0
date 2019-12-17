Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6778F122AA6
	for <lists+openwrt-devel@lfdr.de>; Tue, 17 Dec 2019 12:52:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=X6daCI/FHHrEhmIcQmgNF8v0dmyAMZZy7ZhQvNqytCk=; b=RuDQv0Kb98SkFO
	18FepqQsMLXAFlOxrcMw63R8ra6axRySJtnZ8s+PgPLbyZH3/V80n+RbcXnHkSnL1ub9e7giuqzmo
	MdGdrafmf8CiVfJLk1AUuMTw7RKTRW3d1F6fF7/9mt8CI3xEefvIRY5lD4DVFRqXhUjrYJs3MAaZ7
	+5Hpip3jn4H1WYcYdzBKfvyUZMSNgJ0IYSRrD/pfmz0sd7Tb2BPVmthX8Y4yiQd3TIVJmnUZOTvn0
	ch1aK7ejcbLhghqigm9LGlx2iUO+6Uhtymcxbk62ZnN0HHDsO1XPhgo93w02dt3E7h4dPDZRWum5+
	mFzlhQ8omuGh2Qo+Mu/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihBOx-00072q-3E; Tue, 17 Dec 2019 11:52:31 +0000
Received: from mars.blocktrron.ovh ([2001:41d0:401:3000::cbd]
 helo=mail.blocktrron.ovh)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihBOn-000717-72
 for openwrt-devel@lists.openwrt.org; Tue, 17 Dec 2019 11:52:23 +0000
Received: from dbauer-x250.tu-darmstadt.de (unknown
 [IPv6:2001:41b8:83c:fa01:157c:afba:5cc1:a85])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.blocktrron.ovh (Postfix) with ESMTPSA id B5F6E22733
 for <openwrt-devel@lists.openwrt.org>; Tue, 17 Dec 2019 12:52:15 +0100 (CET)
From: David Bauer <mail@david-bauer.net>
To: openwrt-devel@lists.openwrt.org
Date: Tue, 17 Dec 2019 12:52:03 +0100
Message-Id: <20191217115204.9422-1-mail@david-bauer.net>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_035221_554306_E2DDB5A9 
X-CRM114-Status: UNSURE (   9.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 1/2] ipq-wifi: add BDF for Aruba AP-303
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

The BDF originates from the vendor-firmware.

Signed-off-by: David Bauer <mail@david-bauer.net>
---
 package/firmware/ipq-wifi/Makefile              |   2 ++
 .../ipq-wifi/board-aruba_ap-303.qca4019         | Bin 0 -> 24316 bytes
 2 files changed, 2 insertions(+)
 create mode 100644 package/firmware/ipq-wifi/board-aruba_ap-303.qca4019

diff --git a/package/firmware/ipq-wifi/Makefile b/package/firmware/ipq-wifi/Makefile
index b97fe2f1c9..906f11ac96 100644
--- a/package/firmware/ipq-wifi/Makefile
+++ b/package/firmware/ipq-wifi/Makefile
@@ -24,6 +24,7 @@ endef
 #
 
 ALLWIFIBOARDS:= \
+	aruba_ap-303 \
 	avm_fritzrepeater-1200 \
 	linksys_ea8300 \
 	qxwlan_e2600ac
@@ -89,6 +90,7 @@ endef
 # Place files in this directory as board-<devicename>.<qca4019|qca9888|qca9984>
 # Add $(eval $(call generate-ipq-wifi-package,<devicename>,<display name>))
 
+$(eval $(call generate-ipq-wifi-package,aruba_ap-303,Aruba AP-303))
 $(eval $(call generate-ipq-wifi-package,avm_fritzrepeater-1200,AVM FRITZRepeater 1200))
 $(eval $(call generate-ipq-wifi-package,linksys_ea8300,Linksys EA8300))
 $(eval $(call generate-ipq-wifi-package,qxwlan_e2600ac,Qxwlan E2600AC))
diff --git a/package/firmware/ipq-wifi/board-aruba_ap-303.qca4019 b/package/firmware/ipq-wifi/board-aruba_ap-303.qca4019
new file mode 100644
index 0000000000000000000000000000000000000000..4848115cfbe3a4a0ed6b17cac929731ecbd7968c
GIT binary patch
literal 24316
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
NIrrxNmNc!u{{!hMI2Hf^

literal 0
HcmV?d00001

-- 
2.24.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
