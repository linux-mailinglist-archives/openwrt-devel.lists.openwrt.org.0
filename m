Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B982AA0CB
	for <lists+openwrt-devel@lfdr.de>; Thu,  5 Sep 2019 13:02:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6cfMCgjbS6X05kaHbm6S2Qp1Yl4smP+cKXaRSx86yQ0=; b=oQxUCCGaSy8i4apBykCF/TE4qV
	0wOnHJ9AjKxoH9F52f5oiK80MRJWM90RoATjXapimRsY334RLwfkLn4yd06UAet1sks6nO6FnutfP
	LpqcYE75hovq1DPLc4tssexffAs4ic6Vlkkh+uTiJQit8nOXA6HroKrtj5V8F2NdhONhb9TeWwk0F
	R0Gux6Md//EXTcGrv4ZMLQGZWN0V7lva1MdOX1HyG64geH053chQmQ0qFfmL2d7X0XfcnKVN3hn7O
	WWjU/VyDtr4gc1rYqan79Cn3SKQ/4abcMUhOYuAkpk9Ya+9h26MjTxYgV9lI/VeWyO/ZCeIHrO23W
	PTfDzRQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5pXJ-0003s4-8J; Thu, 05 Sep 2019 11:02:45 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5pW1-0003XE-4u
 for openwrt-devel@lists.openwrt.org; Thu, 05 Sep 2019 11:01:26 +0000
Received: from buildfff.adridolf.com ([188.193.187.204]) by
 mrelayeu.kundenserver.de (mreue009 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MrQN5-1iTbKb1q7z-00oVQ7 for <openwrt-devel@lists.openwrt.org>; Thu, 05
 Sep 2019 13:01:18 +0200
From: Adrian Schmutzler <freifunk@adrianschmutzler.de>
To: openwrt-devel@lists.openwrt.org
Date: Thu,  5 Sep 2019 13:01:13 +0200
Message-Id: <20190905110113.1041-2-freifunk@adrianschmutzler.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190905110113.1041-1-freifunk@adrianschmutzler.de>
References: <20190905110113.1041-1-freifunk@adrianschmutzler.de>
MIME-Version: 1.0
X-Provags-ID: V03:K1:QRyUaNjQ1DrMbn57ziL8BZCLXK+/00xnR02jqqlod93y1ZrOJpA
 Q+2EWHx41TomJC4S238vnvuUUpvBPaxlfLzJC5i3vn2/a1Wv0JRHCn6NjYoljo1WugX+EsE
 i+vMgv4c4cLdClb5gT/K/W5FNyc3AxPIt2cKAE03qVhbjxMv3XQD5SlA7wiSVwMrHd0Wxx/
 DO7HfM3+Kg3s01q5CP0OA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:nh8u9q4JEQU=:VzoVNdU6gl4lMQVi+CrRR5
 5aGQPn+HV/InBPWCRUEgI4BTkH8H4n/nXLQ+3JI0uqhyajh6gmmw8nKYIAgcfeWGaY1H6F1QB
 B0bztdKkO8XCTGYObSZt2j+ycsiUChnQgnFb7QoXVYzXgcst3qy/dbrpXakySgIW/QM6go4By
 BGzylc/KdBAWZZ69SKlMKmadGlCspQ6iPlYXircAgZXXoA9WFo01e/t9VJbhfOUwtyRsz/5f5
 MOEbQ4dMmpddwJTynTQksS+6U8UJNcdDBD+7fCOmPqJi2tV7iz1B3HrTQmSqsxRBEwJEHao48
 /Ed845GXgxKZXnSVT7a+rUArtdiDAPAS62IPe1Jfpt3E0RQj0kqrTtfoZwL5cgnNKHzBfe7P8
 7CI/I9eqDYw5ivoBQOJodyrhgpaWTY98vpQvPVyim/JyE7Q+UX4QMZbm5JYchcoUoNFMu4BMY
 1MzQ9P4fXW/fwxARILlsqHJOFwDVV1/W5EJ7DgHVKM0ws9f8jegmKHKsuIQEX4Dr84yGibtkI
 uZnlNPUfU88yazhPR3IAph73Nus+7EEaaJoLjzeWe9bmI9UHtwIN25uHxq2369tXH7mJkG4V8
 6pKQ6IEycL6le10YH4N85zIH2meEf2BpmQlQd3w1xM0SAtM5DhpU9nU2iLCWCjxA4Jv8v4Nrq
 nrGO/kn5B/4lpH5CqfQkgFPVxtf0CueJIGIGKbo5RNPyt7Yz4i68eyg4DwLA+EpJpSGsUaQpC
 iIOp9MRj1ODFdFUENscp4y0vapOaZWDpFzQklbDphrK8qKjXhUlVYwcrfQHN+1be9iUTdFWq5
 HyJdjiexJH7E31cvpHKxZAbvH+nxwL3iawNSwXnmvm2BwjxCI4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_040125_565830_D8DCC284 
X-CRM114-Status: UNSURE (   8.08  )
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
Subject: [OpenWrt-Devel] [PATCH 2/2] ramips: fix duplicate network setup for
 dlink, dir-615-h1
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

In 555ca422d1cb ("ramips: fix D-Link DIR-615 H1 switch port
mapping"), port setup for dir-615-h1 was changed without removing
the old one. This was working as the new one was triggered earlier
than the old one.

(In the meantine, changed sorting during ramips rename patches
actually inversed that order.)

Anyway, just remove the wrong case now.

Signed-off-by: Adrian Schmutzler <freifunk@adrianschmutzler.de>

---

This should also be backported to 19.07. Due to the ramips rename
this will need a different patch which I will send if this one is
accepted.
---
 target/linux/ramips/base-files/etc/board.d/02_network | 1 -
 1 file changed, 1 deletion(-)

diff --git a/target/linux/ramips/base-files/etc/board.d/02_network b/target/linux/ramips/base-files/etc/board.d/02_network
index 92067ac7da..091b627cca 100755
--- a/target/linux/ramips/base-files/etc/board.d/02_network
+++ b/target/linux/ramips/base-files/etc/board.d/02_network
@@ -49,7 +49,6 @@ ramips_setup_interfaces()
 	dlink,dir-300-b7|\
 	dlink,dir-320-b1|\
 	dlink,dir-610-a1|\
-	dlink,dir-615-h1|\
 	dlink,dir-810l|\
 	dlink,dwr-116-a1|\
 	dlink,dwr-921-c1|\
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
