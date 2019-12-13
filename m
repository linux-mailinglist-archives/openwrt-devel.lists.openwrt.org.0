Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE2E911E83C
	for <lists+openwrt-devel@lfdr.de>; Fri, 13 Dec 2019 17:26:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ao5mz/lTp5b/+YkiZZOrn6B1MW/qGkx2sYx9F/Z2q/M=; b=UrLeFHLHAbxsMl
	AV9ONkd5P6jga5Sh6h9j0tDpe0NTwlsWE5OhSyC3kaB9cxIDt8YH4Uae+PFZJ7iQDncSmlI6EfOit
	stUH8h7zFspddQpnheS7DDKDLwe2tMbwV8qYHyLxbcqx5hrU+z7b0QIvGRdM/E4l6lhk1ASCRHVSD
	AAg1y/YAbNs76DEdRNkrjEF/brn+8/Jp0E8DOIUtsjEy+FbIubqIeBtbha7UP+IjD2QWhSGQT6apT
	mMz1L0jzzRFlEGXSBJTFQsfVbT5CPyGiIRRyOrjrgPps81G3Ey4bVas4mDeYTRrg/NIsol9zGHEAP
	Rswjecm7waBeiiznkvag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifnlt-0007i6-HS; Fri, 13 Dec 2019 16:26:29 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifnkp-0006oc-HC
 for openwrt-devel@bombadil.infradead.org; Fri, 13 Dec 2019 16:25:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=i/pCURFzOrZjEHtQ9pnNoygiegr5Weh7qkwwTWKiYqg=; b=TV9/n41q20c057LySxB1keDimJ
 6gLTeUAC3b6WqzMm52mkC8cVhPBxMCJsy7okRmk1xDbte7uNz6OZTHzrRShJ0ghIqYTKY3nKER6S8
 Mfo08jdBn3xVHO67nUkVi4MdyKLN/NXrMT4u/iFkXwr4YTqQnv/a2ZWnbKXp5GiZiqhvmXQz7BIf2
 q6lIjzq1afbYYYOBnwTOpvxhELQs8O0Mn3m1dMnDE000ozC5Z4Hg9lcza5nuPojrAY70ClZ4p2JTj
 kR72SEZEQ+x7N7RiLmL5UNa+1lq98SeXNLQ6U0pv8E6Tent4rPrz4wP4WXTnNv7P88Wx9LnftRc+Y
 W7y7zXlQ==;
Received: from smtpbgau1.qq.com ([54.206.16.166])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifnl4-0001wt-U9
 for openwrt-devel@lists.openwrt.org; Fri, 13 Dec 2019 16:25:44 +0000
X-QQ-mid: bizesmtp29t1576254280t4g0g58a
Received: from example.com (unknown [112.19.108.4])
 by esmtp10.qq.com (ESMTP) with SMTP id 0
 for <openwrt-devel@lists.openwrt.org>; Sat, 14 Dec 2019 00:24:39 +0800 (CST)
X-QQ-SSF: 0140000000200060E2F0B00A0000000
X-QQ-FEAT: s0Ru82t7Xcsb12p4Ecxbp6/1Qy3xI5/ZhiO5pZGBwShz2pgMyJGJ2ek0sU4VI
 V5kvFd9MQBvoOKwIdqHKgRi8XvvNRSvHrVGbUJ/Riw1og3KrckTjFpqSt9tTDDGuc2LVmhN
 CwHIVqmrHr32ItUZF+hwq/pd4QpwDAgxP5akFXLpYQxQSWuc6oJOr37bH06gUmn10SfnPkI
 AMaoEcBru9NETEj3cqiSaOFIodc+dZ0bAbkUQ8TabCl2mvdOR9n2imOmwARtAhR0I2/T7KN
 UUaV2bYcX/L+zloWGohCD1UZeWOwRSKFUzuwOlEOroGqXBoGSKLtsE+c4=
X-QQ-GoodBg: 2
From: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
To: openwrt-devel@lists.openwrt.org
Date: Sat, 14 Dec 2019 00:24:39 +0800
Message-Id: <20191213162439.11543-1-dengqf6@mail2.sysu.edu.cn>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:mail2.sysu.edu.cn:qybgforeign:qybgforeign5
X-QQ-Bgrelay: 1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_162539_541578_7091BB27 
X-CRM114-Status: UNSURE (   4.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [54.206.16.166 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
Subject: [OpenWrt-Devel] [PATCH] ramips: move set-irq-affinity script to
 mt7621 subtarget
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

Move the set-irq-affinity script to mt7621 because it is the only
SMP subtarget.

Signed-off-by: DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
---
 .../ramips/{ => mt7621}/base-files/etc/init.d/set-irq-affinity    | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename target/linux/ramips/{ => mt7621}/base-files/etc/init.d/set-irq-affinity (100%)

diff --git a/target/linux/ramips/base-files/etc/init.d/set-irq-affinity b/target/linux/ramips/mt7621/base-files/etc/init.d/set-irq-affinity
similarity index 100%
rename from target/linux/ramips/base-files/etc/init.d/set-irq-affinity
rename to target/linux/ramips/mt7621/base-files/etc/init.d/set-irq-affinity
-- 
2.24.1




_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
