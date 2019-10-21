Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE3A2DEAB3
	for <lists+openwrt-devel@lfdr.de>; Mon, 21 Oct 2019 13:20:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ujoKRHK7wKN0shHvx7b3R1xyXK3LKun5DFOzz0EHeW8=; b=bCAgWnn+VEeGNu
	l+A7+cBip9gCvo34JKgt9KCYrhFxY5sh5mfLQFJHtyFE6WRSXIzf4DsO1s74LdcrGfmyXAEnXPkut
	nUESmQbZCZOvxXzcN7m2iiZBTU+/AkXja/ouOTlE0ulekXO5Um4/DH6yBAtGod6dgQxtKvQ/TF40m
	cthFiwuhbCuJ8tDF/o20Mc+aGKOm84bmow+EP30e1HTTiGttknPgQJ2+e3J1u2qHaW7uc3OZZ2chd
	mqkkGGa6LMdYcEV3weh3uzBejjRLt6p9E3+U9JY+DXKv3rAGoGz+b7u7eGsuG77MkOdxZSTGZvSMy
	y/DJs+fr8MeSReIWewqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMVjj-0005IH-US; Mon, 21 Oct 2019 11:20:31 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMVjc-0005Hf-Ee
 for openwrt-devel@lists.openwrt.org; Mon, 21 Oct 2019 11:20:26 +0000
Received: from buildfff.adridolf.com ([188.192.135.195]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1N0Fh1-1i8OrE1Ntn-00xMwZ for <openwrt-devel@lists.openwrt.org>; Mon, 21
 Oct 2019 13:20:19 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 21 Oct 2019 13:20:15 +0200
Message-Id: <20191021112015.1515-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:O+NixvdTMp81WP7ML9SCr6i3WoOWD/CTFHYRg6DcTMGx7EJITWj
 6o5/motWsQC4Z7ZPAu5UpC9pdPVlsYlGCqB5gCx9ZZbVOXtBMQuH1o61cBJsvxYOp67OKDu
 GDeFQvqKaBc5aCxDPsNcF2Szym1Zzy4S8AECOSSmS00/F/x+QzIE8fIsnaJU9SqfQthlhLy
 ei+lETIdFFqIg2BMsvN7A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:53hs6F501p8=:sUDCmJF5hfxnGygkaRgyg3
 Exn0QAl4d7flawPqsR0dbe+snaf2ftp9k7vAajlLb4NixGUUUYHQfy/xoL4hhqb88fkkY+WAE
 L9vBaJAtacyB+OEOoeJD8eq9MpqFAdYEVGDzscyzcQxEkrZfzxrnTZqIbPay3qd29e1R09Atb
 OFEjwxNOBjkREFPsgbMHIahsTRhJGtd2g7qegSHp81ULjW4PaIGm15cm+aiGylj7untRYNTXh
 oRIf8w/ih9KZZ1GYb1q7tUArqwdE39QJ3fpSE2IcRRS9omRyhL1poQmteihlWLoaEUrcdqEZI
 HsyX2frWhKLwf8o2GLYetGWy7110OyWIrJ4e27GjltlT19wEBuYzgwwebqo9KhQxrzMHAShvG
 0N9HkhrCw8BSLS8XZ98FqKl/7FzPECIRU5dt4a1q/Cag74AQbsJSPpPYMCQngTpH7W4tmjU/8
 JZjHM/Vb87HBObw+xChsXvtbNXbEoD4PCU49LVIvFig3HeHRcTlHh1N5A8QP3gwbvM9jPp6Ep
 IkuSo2JOFIIdlTRS9WdsflzYEdzpiIskdO2lyhEbvk1gchsemFdUG/AX0ImdxnJ7BKUUS6VyJ
 8RZZWpgK+dZynkhCz0JITmaPaR/bE9vsihrdNv+yhYmWGe3JXGUWWH9wbEcWfwz7uodkww1+j
 ooK20sexgmWxo4iMKSeznTwrlVpwftlnfJw1dL35DF3EE8vSJ4gkaoUtpymj2NyYSXH2Cw0/6
 aP/Yd7ivnk9s3d7lRE72OW1ChTdoFrlwbeADEz+esu29xP40UE9VODuAUJofQVSUs2CE+5w4m
 IH56cuLrD70t7h8DQxoSnNbVSpOTmwcgBYGZb8MtheMUWrkJssBP52WdO+Ei5iJQH2Azt6g30
 h7YK0wNmXzYVRBa6XsZ2uzDObbkh6IbwGE+Uqc0VY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_042024_783437_194EDA7E 
X-CRM114-Status: UNSURE (   8.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.134 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH] ipq40xx: use DEVICE_VARIANT for Unielec
 U4019 flash size
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

If flash size is used as part of a device's title, it should be
specified as DEVICE_VARIANT like for the other devices so far.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 target/linux/ipq40xx/image/Makefile | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/target/linux/ipq40xx/image/Makefile b/target/linux/ipq40xx/image/Makefile
index 8907eb756b..cdca130ebd 100644
--- a/target/linux/ipq40xx/image/Makefile
+++ b/target/linux/ipq40xx/image/Makefile
@@ -407,7 +407,8 @@ TARGET_DEVICES += qxwlan_e2600ac-c2
 define Device/unielec_u4019-32m
 	$(call Device/FitImage)
 	DEVICE_VENDOR := Unielec
-	DEVICE_MODEL := U4019 (32M)
+	DEVICE_MODEL := U4019
+	DEVICE_VARIANT := 32M
 	BOARD_NAME := u4019-32m
 	DEVICE_DTS := qcom-ipq4019-unielec-u4019-32m
 	KERNEL_SIZE := 4096k
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
