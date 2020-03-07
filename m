Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC8C17CDA0
	for <lists+openwrt-devel@lfdr.de>; Sat,  7 Mar 2020 11:22:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:
	From:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TQqe+KduGOmE1V3OQnHydQiTn0IlznDpv2MNqHPSPDk=; b=kNpcZNYVtcHWM9
	EgjbGZgPPe1HdU1Xkeb4BiiKC5q0PqodZ3LN0evUz/jt0ZV5PRar8KjDjmqCylsOJ7/gKiYVU8a3H
	m+YBbJ4S8fzaZXm6XIzQZyqldBljfY5+uHqpMhRqzVlxEWROhiDb4c9lBo+HeMnBnzultKrdyoVSI
	5/AdkEfSHvJreWTZSqGmRwXQ6TBnuCi2FNkiwsAQqk8IKp1q3m1RJCJoURF6pv8i47IFawhvKIOQt
	maWM9GMWTW4TYiipboUot+xYLD1jL6T4/8tJcFHgjjAtIi7BEctrIewTdn6Rw4rphUHnhX3pJqsWC
	rQSMvvdeb4Qyr97EOtbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAWb4-0002Wh-Fy; Sat, 07 Mar 2020 10:22:18 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAWas-0002WK-R5
 for openwrt-devel@lists.openwrt.org; Sat, 07 Mar 2020 10:22:08 +0000
Received: from localhost (udp057936uds.hawaiiantel.net [72.234.241.177])
 (Authenticated sender: mail@aparcar.org)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id C6CA9200004;
 Sat,  7 Mar 2020 10:21:50 +0000 (UTC)
Date: Fri, 06 Mar 2020 23:58:23 -1000
To: <openwrt-devel@lists.openwrt.org>
From: "Paul Spooren" <mail@aparcar.org>
Message-Id: <C14IIVKWT4NJ.241GCA2KVH47F@tb>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_022207_012363_F1C43BD4 
X-CRM114-Status: UNSURE (   5.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: [OpenWrt-Devel] [RFT]x86: rework image builder code
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
Cc: ", Alexander Couzens" <lynxis@fe80.eu>, tomek_n@o2.pl
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi team,

based on @tmn505 and @lynxis great work[0][1] I created a rebased hybird
version upgrading the x86 image creation code to use `image.mk`!

I created the patch on Github.com[3], but as it is such a core component
I can also send the patch to the list...

It works and boots via qemu and docker, surely I forgot some stuff, I'd
be happiest if you could give it a try and test it!

Thanks for your time!

Best,
Paul

[0]: https://patchwork.ozlabs.org/cover/1024165/
[1]: https://git.openwrt.org/?p=openwrt/staging/lynxis.git;a=commit;h=416cccf398e9589e3de386e05b61b1c46cace20d
[2]: https://patch-diff.githubusercontent.com/raw/openwrt/openwrt/pull/2772.patch

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
