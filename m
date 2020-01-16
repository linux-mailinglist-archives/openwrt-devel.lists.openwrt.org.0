Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 558F613D951
	for <lists+openwrt-devel@lfdr.de>; Thu, 16 Jan 2020 12:52:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZTB6DQSWewx410f8e79zXbvNLC9DViJ45mfr8+TQjBQ=; b=dxJ5lB2cG2KL3Z
	r39U/NR3ncW9N+KqMs+DAACaT+8jOY2FhleQJprWO4W9/5NmVjdPMwuWW046mquB6Pbfkm/aCt/uL
	blrcyLw8Bt51eaRbQCG61b1dloWUcD2116kMPTyJNKMNM+ejtsTf524BUFgV9kJT0EIrOBqJO1TcI
	2nJ1DsIhM/XgoVlg2bWnKEuYo2lj5ocK+ZAhymuzR45KtrUhQx9QLOq4h/0PPjq6S2SgBbRVhlbtE
	Js8pR/gO86GfWojD5dIUKSrdM820GF262V5fOTCDQ2jr3kxGe0FmD3Yxu3HioJhHJ2P93VCnrNAFx
	SYcv76/0Raww5YOzRyHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is3h4-000834-TW; Thu, 16 Jan 2020 11:52:10 +0000
Received: from mout.kundenserver.de ([212.227.17.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is3gk-0007qn-MG
 for openwrt-devel@lists.openwrt.org; Thu, 16 Jan 2020 11:51:56 +0000
Received: from buildfff.adridolf.com ([188.194.105.26]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MfYHW-1jY0D428hU-00g0Sg; Thu, 16 Jan 2020 12:51:46 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 16 Jan 2020 12:50:56 +0100
Message-Id: <20200116115100.1906-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:sri5TgrZ2sTDGlsUmDjVdqjSQ0UGwCuaeLdSR8iUjxkUXqf3hK1
 vYn9ju+FHlMxMDDqyF/i8JeF3h0aMZF0JVX/6TSO1f4ZHhhQqUfVE61vOs1vXb6pVhyy9XW
 a0pIZT9QX7iZZ0HvMor8BmreLV8SKabvJo9+gZORZVyKTq+W5QBQTTckDk6ekzbCh50wILQ
 32LSdguSIHtPLUD71IIqw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:AEbqclmcxCY=:kOYiEIu9sJObGkY8St7iaz
 StCztGHgykyuHQCZos/ZpV4FSeENOYLYZWxia5NNwcdMYEBO37GIBH/W8qd9hLL+8z43ZSjcF
 yKmKNjLMVDhDyZQe/t/D8ibU5sVH7rkbc+75Tp/d+PtDn/6ikGT8SDE2f2lNTI/eWELUQ2tFg
 zcIw6VoC+D5bMY83mJGw75qQr6zJwysg6uSNb805Ht+eTj5CcO+tGcxsjb4upjdB8IHQYls55
 hhy1U+UguyTK7ATileu4253fqZM1n/HKcDgQUW4906u0qERwYArcBATZbdYoP6d8yGl/RIT4N
 yJTBQRSQuTg14x4wj6zhR9WpzOqQcNHWTuuRc20tVheUfnDda/3jR0hYPyM37HqRRCmR3PNmp
 EV7Dj85yNG3+FTTfbd3MbBLhYkxSEfkUbNqlGQ9WaTyedQ8ByGU5qCalL47dJRdIDatelAx14
 lW8dcrYrhxMsLtF94FKp+YOq8YT/2NLCB75TWllELgWRLqKBowAtZ9xMK4VUlr4ttYbV3jfhM
 3PHh1cC+DeCZUyHSyzVCEDvPHRnRH5bJUAeTZD7WBeu+i6QGcEBhw+majbWBnzoAIeBj3o+nB
 pNqcgEE07esKwn9rhmuo4s8363hqHbkcgguMVtNhEPYor2P3T49qoHeqWlqgyN4RgGqgq66PC
 pcBOgpyQorMA283LREjS57RDBGWt/aeBdxX3W4lcknStuoUheiv/dSucQhVr7XaXLzMytWkXo
 x7y/9XcJU3zl5PanB6YnDVPErsOKzmkh9TP24xwGtwdfXzBhH8LY5aIHvXThttyb8Pnt1NxXM
 2r8e2Auydn5C/4OBPb4SvQElzRBMbvtLzdtzdveB7m6eingfqEBjSeMd44cp0bVrcu/S1aezm
 OabQllrDs/5e/wDd+vEAG2m0DxO0GlqO3YpbMPS9c=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_035151_019519_D8B40D84 
X-CRM114-Status: UNSURE (   7.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH v2 1/5] linux-firmware: add wil6210 firmware
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
Cc: Robert Marko <robimarko@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

From: Robert Marko <robimarko@gmail.com>

This patch adds wil6210 firmware and board files.
Firmware version is not up to date but is only freely
redistributable one I found.
Board file is a generic one so most devices and especially those
for long distance PtP links will require so in a ipq-wifi like way.

Signed-off-by: Robert Marko <robimarko@gmail.com>
---
 package/firmware/linux-firmware/qca.mk | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/package/firmware/linux-firmware/qca.mk b/package/firmware/linux-firmware/qca.mk
index 23fcc0905a..71b484d5c7 100644
--- a/package/firmware/linux-firmware/qca.mk
+++ b/package/firmware/linux-firmware/qca.mk
@@ -37,3 +37,11 @@ define Package/carl9170-firmware/install
 	$(INSTALL_DATA) $(PKG_BUILD_DIR)/carl9170-1.fw $(1)/lib/firmware
 endef
 $(eval $(call BuildPackage,carl9170-firmware))
+
+Package/wil6210-firmware = $(call Package/firmware-default,wil6210 firmware)
+define Package/wil6210-firmware/install
+	$(INSTALL_DIR) $(1)/lib/firmware
+	$(INSTALL_DATA) $(PKG_BUILD_DIR)/wil6210.fw $(1)/lib/firmware
+	$(INSTALL_DATA) $(PKG_BUILD_DIR)/wil6210.brd $(1)/lib/firmware
+endef
+$(eval $(call BuildPackage,wil6210-firmware))
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
