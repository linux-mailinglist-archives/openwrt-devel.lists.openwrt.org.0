Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2D5216657E
	for <lists+openwrt-devel@lfdr.de>; Thu, 20 Feb 2020 18:53:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UBzHHlMR6Jg5c+tkg5/USWkp8Wi3CVu0BgZqoLkyKlA=; b=ugwCP48opn7ZPE
	egyCCvNqPfodgasG99RBwZKAeFRBZUaxlurMZv+TLO76U7OzdwJCv81cHzDmEEteQj//E1VrTWtiq
	ShWa6oovrK2q5+FNxCf1E++RYG5M4cqiLQls9VbrKHTXt2K4n/I3OcrQySElnkkIhLdKl2hFtYG6J
	NoDCaO2q+t8tb5g0TbtxZR/ZzDyCvKcAAX8utOqHvgBtvljYpFXMngRRlCdq92gSgngrL3k+FQOyI
	PXLYKHitCEPEOWKez+QuWcRdxfFFQ4D+8mA7HT7wcmTDX0MwuGdPbHO9tlhsXjzOe9GG1PvOJj9TC
	GiNXzR9ylIZYOvlXUqsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4q0f-0004L1-UH; Thu, 20 Feb 2020 17:53:13 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4q0b-0004Jd-4M
 for openwrt-devel@lists.openwrt.org; Thu, 20 Feb 2020 17:53:10 +0000
Received: from buildfff.adridolf.com ([188.193.230.10]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MODeL-1ipfZ0019d-00ObFa for <openwrt-devel@lists.openwrt.org>; Thu, 20
 Feb 2020 18:53:03 +0100
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Thu, 20 Feb 2020 18:52:17 +0100
Message-Id: <20200220175218.33593-1-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Provags-ID: V03:K1:qHveZXLkjjYd3Iy5Sx13k2hccD/quG3XSjN2dA+FqkR0wZNG8sX
 snRCio9k33UUDZfa07Jhr8OskiL8U22WpjA+g3vuILBaIIdZuitDhwTowbNzjTp+4Be0N1l
 +9Jei4K1cfF68b0lrzT5Hr2EOKTTYf/nYDNoG+BQbV08yEGID2gjkCOdoXVbbRq3PVS9c0e
 G1kVbenTQjksw+kag9B6g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:MhTy3W6Fa2E=:Dr2sFb5ZZdvm9RL7j7iveB
 q2tT56cF+KZ+r+RnMOBon6IYj5NhKI4yzK7Eu6lEkvAsEWIwG9H4Gqgk8k+smiE/cI4zhK0Ah
 xSla6d6Wfu+roor2rdC9P/oL8uNVQPWhyqUdn8GEickRYoiyocG9Udslzsh8EKmCcFmsqS/E+
 ftagQDgcUGc+/EKXmZRKc8kJB+JXjADbiYQFYiJwfCf41n85q8dNE/O5i0xXb6oYaQH9mWBqD
 P4HjYPiMJzBZNnKCq95Ind+OwBEyK9fNelk4reatTsoosXz6uWLOvWM0p4/WdKEiUs2QhvY//
 FcJImEQ5fo2d6TKmoRtZ/KIaekJ85+BzA4HxnHgXWaz8oLkpowXYNAO0+o4lPQutXcHsphl1w
 lAdHfnce3SoxNXvrlfvv4pbQ+Sm/80P5x/520F/8EiKKxGvxd1cIAJouFJJz8YlSMwwO+BOpy
 yGNSnqlIjkL9fT0IoG07utY1D7XWVYMD/UjHyui6TGJgpDzLMF/RU0hMOa8L8AW51YoisZ12b
 GH+DdwGKaHHmXnD9+uswFqMVRPOJVSR1YronUWNFNzzF2/ff7yZhbqs+uNxPCdHF5KDAbsBgX
 JmK9WUI9MRPPmQP4hHTPCLtwLU+wYPYHKAfPpgY7ELCv4aRjvl8ks3FoMtq5nF6kr7DjQ6Y31
 abwp0hopvsA80nioJk+jMgfLpHwIAwuwJlKgoyTMgGI7+Xi0LlBttQbrwFzSHggeGcIL+MmG/
 oxIdjKdyOWUXtE89GCNYXYyZqsi8CTU3M4oSPvwHlJaQPc/GMflFgEuVBhdiudVvsu74p/zga
 F8tT90Snh2zy4+G3mm0eyskKXXasxqbtziHni3vJmq4+HlXjWcXnMIsjPtaqHfUJko6Coic
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_095309_468231_72DBDBBA 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 1/2] rssileds: add dependencies based on
 LDFLAGS
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

This adds the direct dependencies introduced by TARGET_LDFLAGS
to the package's DEPENDS variable.

This was found by accidentally building rssileds on octeon, which
resulted in:

"Package rssileds is missing dependencies for the following libraries:
libnl-tiny.so"

Though the dependencies are provided when building for the
relevant targets ar71xx, ath79 and ramips, it seems more tidy to
specify them explicitly.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 package/network/utils/rssileds/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/package/network/utils/rssileds/Makefile b/package/network/utils/rssileds/Makefile
index 27cdb4c67c..7a59314693 100644
--- a/package/network/utils/rssileds/Makefile
+++ b/package/network/utils/rssileds/Makefile
@@ -18,7 +18,7 @@ define Package/rssileds
   SECTION:=net
   CATEGORY:=Network
   TITLE:=RSSI real-time LED indicator
-  DEPENDS:=+libiwinfo
+  DEPENDS:=+libiwinfo +libnl-tiny +libubox +libuci
   MAINTAINER:=Daniel Golle <dgolle@allnet.de>
 endef
 
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
