Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0B96AC72E
	for <lists+openwrt-devel@lfdr.de>; Sat,  7 Sep 2019 17:07:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zTvFnT9seT/mzd/RQgMCPQlwKAAJT9IBvA9zN19G2lw=; b=B3vdmXuDyzCBPN
	gEvlCKD2BDD0glXwOGi6U8k05PHm4yn3n08fhj2zuFFVRCKRxD6Sl+NZbDxDEKCRMfmnJi7obNlK6
	GIy2Y7RSU9us3gs2bBe6QKomPmqiaDFPQJA3o5TAauNP/rkw8+ZZs35hVCpq+nUz+huchqtE4BqVY
	WKmz6iCN6xv3NmAyQMRri3WIuIW0klWrnO+JG6rC+15G4hGkgLzFFfwL+EZJc2gC7z0aOjr4yRUBq
	AZS1TXAqlDcyvurbK5K9wdUzxK3pAoWIu4t2fnEPgBvhuMY75K262E8DyXdwmW2CdF+CsAWjIM4sJ
	RuELNu/AC8CEjgL1n4eA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6cJa-0006Dz-3B; Sat, 07 Sep 2019 15:07:50 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6cIn-0005iZ-Gk
 for openwrt-devel@lists.openwrt.org; Sat, 07 Sep 2019 15:07:03 +0000
Received: from buildfff.adridolf.com ([188.193.187.204]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MuDTn-1iR2MV0hbh-00ua7W for <openwrt-devel@lists.openwrt.org>; Sat, 07
 Sep 2019 17:06:54 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sat,  7 Sep 2019 17:06:49 +0200
Message-Id: <20190907150651.3513-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:aOmFwuFj2vQr25Xk0UXjWPoklUbEdSgtmmBYXUAi3CFRopkiL9v
 vlWHjbtqyTAXnlBhzSrLQNurG8mK1c9LrHeJH9SEhb3yQjCJux+t08zcDYClpYx/6jMBc1i
 WWYAb4NYJpPYd2H6ilMxfOKvaJrDYgVTgHEraJN0IozfxIam8kTbrj+4/quwmL0IDeWObX9
 mGrAmNNJpIL3cPDt9ZcGg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:Cdim8vDJezc=:ItDD0kVyWKeG+d0RJzGyCH
 mn7+QdQyrgike3FzFFirVkBH+0R5GIsoXRm2Ku21jbnbeiOUFBGE/cXcf04qW7j0lod3vvYHv
 +not0WDcj2qEckwrQWy1CFTxk1iAbQBezK9pp9OIG1oHlVDeo1/oIqlYAc/UR9ENkcA5tz0Fw
 m5YEGf4hZEpCOlHDJFva90m+7jBCz1pPBnr2Z0haMmo3VJnMI8eEV7Ry9NOvcz2anAyFjd2GK
 hOC+jYsxvkl2rbYgTvFiY1k050PKgChlu6qFdvUC8Wj5ODMedY38WZ0LozCpj+vxXn40VhMli
 DT84aumJVk0aQ6ZlSnP2IlFofNXK2qYw7A9IHlrFnUC2c4nVLvVaPiQcGxyVKGgt9pRPPN8P2
 JRa62UJRe7dyIbtWa8Si5oqInNvrRpc5wqifcjWJ9IRu2i5Lgy0hbTELDfLtkNfiPCluAAAz5
 kz9hSzlkGNR7WG7yTuLU4Ieau+RMAig0mBieaQvU18vadTp+Mn22kQed8uTGrobA5Urq9yu01
 e8A1wzHTe0I4PG7A+LJPg0QrsYT2qxiJO5OIa1LpJk0Xao6SeWFlPB7ANFQ7/WPQp/qYJ7Iza
 04X2oJSVuT1wAFsyRTOd3F+h8nmG/vlTGMV452nvLr7kAstIksZq7gnhDKJg8GIYv2dVTyD2w
 k0S/I/9G+lOHXMjQ0fb4U/BtooNHhteewQTJrNgDqa9Dt0OFpUE29emwtHVothB5ozaq7SHLa
 8hmwiGQ+JbwGa0IZ3AGkRRx6tZqRPgsrkoVokGrVVBLU2sfHZabyRyKe5kmlvpkNHJP5nWZv6
 RvlRYIIzJQQNONhUj/P7RxPN5iWZffggUuhIJpC0p7DTCb53L8UOQAcQLb1MtiY5ThC+gEm
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190907_080701_850185_B1F42099 
X-CRM114-Status: UNSURE (   8.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 18.06 1/3] ramips: remove duplicate case for
 MAC setup of freestation5
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

ARC FreeStation5 is present twice in MAC address setup.

From older commits/changes, it is not possible to reconstruct
the correct choice only by reading the annotations.

Thus, remove the second case and keep the first one, so behavior
stays the same (as nobody seems to have complained about it).

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
(cherry picked from commit ad4eb2241b33b05b0942a3fa7ed2e53fb6e84386)
---
 target/linux/ramips/base-files/etc/board.d/02_network | 1 -
 1 file changed, 1 deletion(-)

diff --git a/target/linux/ramips/base-files/etc/board.d/02_network b/target/linux/ramips/base-files/etc/board.d/02_network
index ebf40ad1fa..7a765a9a95 100755
--- a/target/linux/ramips/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/base-files/etc/board.d/02_network
@@ -422,7 +422,6 @@ ramips_setup_macs()
 	dir-320-b1|\
 	dir-620-a1|\
 	esr-9753|\
-	freestation5|\
 	hlk-rm04|\
 	mpr-a1|\
 	psr-680w|\
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
