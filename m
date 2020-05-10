Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52D221CCBA7
	for <lists+openwrt-devel@lfdr.de>; Sun, 10 May 2020 16:50:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=TimO8ZP3G1tYfbgfC2K/xIDsM+AOu1SWC9YVdqG39Dg=; b=D+s/qRPRW5p2Qqn/xTHR+3xh2h
	kodtCnJolo8r7zmLl9d6V2s0K7dwgR1CYw5WamVqJk8YjCZYFc+1PQHBu+wKz5u8vGq0UDJOK3qJE
	kbtoCYIpxCS0OHzKYuXWDiO+5HowOQ5HESxkvSf+1z1mDkVbI8L2CLiSTL9jhw2ko2eNk2/4B1j8x
	K6tBW7HAaHu87x92eq1xXZWe1NQnt1LwnpIrrBdbLkviiRuFYimaFGWbXDAHBHMmONXRDmD1WQrT5
	7VKWSFfOa+wEZN7i6A6OtYdiQzAytrz0hI14w4x7lh7w6ecScAsY7aqQ4D7eRZBG+4PuGQzB4Tpig
	6LEp2awg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXnHb-0008OL-Mg; Sun, 10 May 2020 14:50:23 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXnGC-0006Ge-UR
 for openwrt-devel@bombadil.infradead.org; Sun, 10 May 2020 14:48:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:
 Content-Type:Content-ID:Content-Description;
 bh=GbuDzj8ywVwnzGWaewzplupySAM6kTfAH0em2KimWhE=; b=ZA2/s+0KH8IhPmBNA3PtwGwxmF
 LLMszKmfJmuMOtWRQfKj5aBm/kg0ggEppPB+PkHIey+Dn3nQpv6/0Yl3f1uHNy4XezjJ2P77mRoP4
 o1ZSB7qcVZIa7D4M6MVKyg7+hwQUkVMGkoQSC7ei1EBfbWBtLmMKRjqvjfcjSZYNmAoaG6kOu1S7f
 HKBPjvMrwGCgQvTG8/4FkiYN6sC5aNZDHzoVT58lm4upBo4+Qv3t+HslT76vT2+9zTsLni2ISxVGk
 QPr4ckFK8L4H9VkMpBTI4wPLXRMJWodjXiPrjn3ac0oxNEYP5ATuD4bMj7qYe4aLB6WKdEL4kToAs
 tatT1uyQ==;
Received: from mout.kundenserver.de ([212.227.126.135])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXnG9-0000w1-Pq
 for openwrt-devel@lists.openwrt.org; Sun, 10 May 2020 14:48:55 +0000
Received: from buildfff.adridolf.com ([178.26.243.176]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MDhpf-1jQx6i0r1L-00AolC for <openwrt-devel@lists.openwrt.org>; Sun, 10
 May 2020 16:48:43 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 10 May 2020 16:47:47 +0200
Message-Id: <20200510144754.10751-3-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200510144754.10751-1-freifunk@adrianschmutzler.de>
References: <20200510144754.10751-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:Owjid0EU7nb5SrVs3c2My8CW7Ll6Q9Y9zEB3KOsdxfwTiq1rU/U
 KmaK+14BhrVtM1lHNRmFXkbcDGBsUm6zAFD/gAuCFgREyW9aS5TTrA4jUG+Bl4lguA5+LJV
 vi4jG4CVXxj84eVyEo3FwczTpnQcxEb0nkN1GPwGyIQ3rxfQupD0e8FJsOHsx7IKWgqY+5B
 K5sXxPhQAMSm1I0qc7ycg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:HDazCa4aM78=:K5MOXOlz21YXkEErOiwLwS
 yigpODMy/jGNdnJnSLGRFxtD7RcOlgfK7JOyRdeP/mHwp96tXFqhE7tMo6E3pjXtgvwEpohuL
 O8XWJ7ylSh7QPOimtrgEeO8ehgZFxrdKzSEbnXKi77GkWssCOI5nqaVMuSLdwc0BLdf7XzfSn
 M7ZGltOTLj/ZJ/BLLpr5zjAZ9EDcoADG9kkqder2Nfi41h665y7JO/uy8khauBEmxH8Ps9hiN
 sLL1K/s/k5Z4vigO+d1ApW3u7xLbwXIiDCn4kolkpRgPRPOIwDqaUxCSFSGUtqJpVVrQdrOzA
 tCrlNPQ3vfYM5tyq+WWPrJppYvvpjWlqbuoFl4tyCJXxk9f5Tr4AtQdfAJ0SoFSpitPJAFTJU
 7b0uqD9XwWXCDJQozR0c0r2ieuPZAybZ3F8+UBB36motRYcnxiR7LGGPOt+mKz7NSRIyDMfWq
 hUyUyXWPksVa6JofQUg1EVGwZuZ39JQYGKkM7H9nyWMBWOQi03VND/gdhIW0+gwbaj68PdpD8
 TmZ8H9YcSNAF1k8NsiPF41Nwk8HZRbq7r/VDahBQFyj7Kb0t4WpbImkngLRslounCld2IB37L
 F+tPCXcrtikfuJCQ9tonlQz7XdSAZvFXXhC2x1IdpxXOzD3hhRR3FGm0CfeAGaJlxhle86k7f
 iYfTmecdY57W9j3qGSpo9DnJhiq3rHrowEQMpg9wUn4bHMGOuXzha7I+c+MLt8UgoPb3rN2RU
 MUq9jwi8/j6UHu4/QI+fZVmtFywK1zcTUkyJK+OZZB3YnLCHmtzNdX0ex2yoT4LtGZDHvSCRu
 bRvBlsdGIb50JzQWSrlKn1KHf1OOoUHsy3gVLBXz8wXFuD8yeJigL61Ib0oXszvwAyJEwxI
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.135 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [PATCH 03/10] ltq-vdsl-fw: replace backticks by
 $(...)
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

This replaces deprecated backticks by more versatile $(...) syntax.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>
---
 package/kernel/lantiq/ltq-vdsl-fw/src/vdsl_fw_install.sh | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/package/kernel/lantiq/ltq-vdsl-fw/src/vdsl_fw_install.sh b/package/kernel/lantiq/ltq-vdsl-fw/src/vdsl_fw_install.sh
index e372e95c57..3d3e5aebee 100755
--- a/package/kernel/lantiq/ltq-vdsl-fw/src/vdsl_fw_install.sh
+++ b/package/kernel/lantiq/ltq-vdsl-fw/src/vdsl_fw_install.sh
@@ -25,7 +25,7 @@ MD5_DSL="655442e31deaa42c9c68944869361ec0"
 	[ $? -eq 0 -a -f "${FW}" ] || exit 1
 }
 
-F=`md5sum -b ${FW} | cut -d" " -f1`
+F=$(md5sum -b ${FW} | cut -d" " -f1)
 [ "$F" = "${MD5_FW}" ] || {
 	echo "Failed to verify Firmware MD5"
 	exit 1
@@ -37,8 +37,8 @@ echo "Unpack and decompress w921v Firmware"
 w921v_fw_cutter
 [ $? -eq 0 ] || exit 1
 
-T=`md5sum -b ${FW_TAPI} | cut -d" " -f1`
-D=`md5sum -b ${FW_DSL} | cut -d" " -f1`
+T=$(md5sum -b ${FW_TAPI} | cut -d" " -f1)
+D=$(md5sum -b ${FW_DSL} | cut -d" " -f1)
 
 [ "$T" = "${MD5_TAPI}" -a "$D" = "${MD5_DSL}" ] || {
 	echo "Failed to verify MD5"
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
