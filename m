Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4651DF5359
	for <lists+openwrt-devel@lfdr.de>; Fri,  8 Nov 2019 19:15:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Wvxg3fveyfs0v0/duQ524Tsbds293wkh9+UyrePqvM=; b=pOsv1tbVjYoBci
	K9cHFWcMPK4krMX+lkX6ErZtnM/LN6vkf+8eTkRQX2vEPPjSVTa8Vavyq/XYqWDbHcCmNZtsUOhVJ
	OD1JRsLP8obiWDoc/1oYtHgnjtnNGSGXosa2GQ9uPydDv+adbjQxadG+cX6hth14w1yH8cjYiutJf
	sNWA33KBQ/ijeg3LqzDYCjbppYhXbVmra2MQW1HkBOqCkI5Hx/ghzqR0IUxILWy+axXCqZ/rXiNPc
	8wiS7ERP07ySTQmb9YNhtypqd1/WfEx1fgrzdlCCoWJYpi5g0Bn9okfVOk965jeOj/P74B0pSyfKv
	1iIDl5lpva7mKAjuf05Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT8mw-0006w7-G8; Fri, 08 Nov 2019 18:15:14 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT8m2-0006Cl-OP
 for openwrt-devel@lists.openwrt.org; Fri, 08 Nov 2019 18:14:21 +0000
Received: from buildfff.adridolf.com ([188.192.135.195]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MCsDe-1ibuCL0j1k-008ppM; Fri, 08 Nov 2019 19:14:13 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Fri,  8 Nov 2019 19:14:08 +0100
Message-Id: <20191108181408.18272-6-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191108181408.18272-1-freifunk@adrianschmutzler.de>
References: <20191108181408.18272-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:jc48nSo9QMfOMOA3g1t6t78Ws8/jNjrKMzygAQ7V53RSAFzERB1
 vXVoHHYAqs2S8XmaZJH834gSSbCLdOsFiPmuE5xgpZ2Rgc+fbNhjnK5zH0/dAC5dP0ElKgf
 3ihM1gnLpXlVzZ3Mr55f3O5t971mOOuHPl1HQjCowdvyK+wQM+FCfEMywdFtZNkxq+pkWYQ
 3XabeFQqpgwUEEums4Hrg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:5OUbv6CFcao=:SL/TSU6ZnQNtSaWwXWzA6n
 c98dt5t9Qa7gV00/sc5M2tdhQ6ybWIVq0yQPEeJc82crc81b8AOtPj6dfpCftJrljostz6gwI
 FhvPwbUwdy7Td4uMonSObP60ITsd6HQr2S5yc1tyutNKGNXeGXE6f+WgnNNjwPJ7sHi98yVqw
 iAVQltgyRIDDY9G4kcpNhDxaf0At9XChnBh2Uaxh3NCci09Exm06zONDBZG1H4qle05cTPGyJ
 oMMvJcgmIKKTGsljYnJW9IbrIf35I3xpaasBrnsd1vpphGo57XsWmwLjVOIb6BwDjNARIGcbY
 GorFit3Lx5Gqd/jDQHMltCJUmTsU/Y1k1VLUc3gpwKRJiYpv7h7gxbn8vgH9jq4UcWBGNFKIp
 pWmVL4IrO34RHccc/cpZJRvAnLwic4Nn7fyJ/hXbJsZiJXaz+cCbcIsBdZkG/H5LYENCFHXUG
 CQ6Pp6jbLiGv2FeufKKlE52IHbthpfTLoXgMcRpnbvQfY7ObesNqSaf7d/dUgTrOWRFMd7J7t
 Ketv6595ELE78TH2+6hiRudXvKONnx08vAFCDhoh7Y7k3Koq4F6MS6bqtwuUlHRUgzRAb6nKn
 Ed4fAMTb+FJbODCSBaBjwfk/EnXWxVqkxPyfjLtAzZfx71R6MYcESXx9rEPc637KR6zSlmM4B
 gFgRt7hojE8CcD9YjkfIoY73rKc13uAJAtxAsQ4a1Kaxk3jo/k1tL3i3zjNlT/rT5f2ta2FH/
 MONApylg0COSpQ6ICpmd9SqPp3Cgy/ElXOynTli167ZlLuIvn2uEX9ZZpW681iAQVCTqxX3JW
 4EKTmZ98hMcqlv9qOAjmXX0GZdoIJEwklDCYhbmIFFMJEJHrac2r9wqrmd+Pnp2sc7OmEr/WU
 4URbV7lvsSQud/fecn6ysYFAVqNopxB034XJt0BvQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_101419_085063_9FF28A67 
X-CRM114-Status: UNSURE (   8.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 5/5] hostapd: wpa_supplicant: enable proper
 GCMP cipher support
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

This patch enables hostapd.sh to properly configure wpa_supplicant
for when GCMP is used as cipher in station mode.
Without this wpa_supplicant will be unable to connect to AP.
This is needed for wil6210 as it does not support CCMP.

Signed-off-by: Robert Marko <robimarko@gmail.com>
[remove empty default case]
Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 package/network/services/hostapd/files/hostapd.sh | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/package/network/services/hostapd/files/hostapd.sh b/package/network/services/hostapd/files/hostapd.sh
index 3c1504ca60..8c6eb3d6e9 100644
--- a/package/network/services/hostapd/files/hostapd.sh
+++ b/package/network/services/hostapd/files/hostapd.sh
@@ -894,6 +894,13 @@ wpa_supplicant_add_network() {
 		;;
 	esac
 
+	case "$wpa_cipher" in
+		GCMP)
+			append network_data "pairwise=GCMP" "$N$T"
+			append network_data "group=GCMP" "$N$T"
+		;;
+	esac
+
 	[ "$mode" = mesh ] || {
 		case "$wpa" in
 			1)
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
