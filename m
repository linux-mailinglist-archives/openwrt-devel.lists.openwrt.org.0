Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6A4C4EC2F
	for <lists+openwrt-devel@lfdr.de>; Fri, 21 Jun 2019 17:38:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=sU37jW8s8+6bcrxrpffE03PMqyoBJhLGcCYn3ETUc+s=; b=Sv5xWV3/Y2+9Nd
	zi4c8HLJlhD/6FCdFzDDZ0QWFL5NmWAgQRp4Ba0UySiAEohQfnXsRVVRr3Hd/BGugjsAwQkkc3RFo
	yrlqvogdqf3GFrTEG0cf6Lif8rL4l59kz9n/fUhIOLCOItjVNeYKlhsFVEhQDopxLhY9ILcVUNBY4
	lHSEIxMxrpwr71wVID4OboTwEQpJR7XvtUmaxF7Myo+rg1jh2qDpWAFZzDAvFulCK6vSTxCSXMnnd
	bUEcUthXe5AH/Y/v4TUJRcYiHNXWOlwqxEhWpT/LsiXeuS62glZgFDkyZ9Jzzd9esHbbpeuJAzeGV
	vkdKFmt9DMgxU+M7OK+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heLcs-0003bJ-MM; Fri, 21 Jun 2019 15:38:54 +0000
Received: from smtp5-g21.free.fr ([212.27.42.5])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heLcj-0003af-Re
 for openwrt-devel@lists.openwrt.org; Fri, 21 Jun 2019 15:38:47 +0000
Received: from tack.dotsec.gv (unknown [89.247.124.140])
 (Authenticated sender: albeu)
 by smtp5-g21.free.fr (Postfix) with ESMTPA id 85F8D5FFA2;
 Fri, 21 Jun 2019 17:38:36 +0200 (CEST)
From: Alban Bedel <albeu@free.fr>
To: openwrt-devel@lists.openwrt.org
Date: Fri, 21 Jun 2019 17:38:28 +0200
Message-Id: <20190621153828.20699-1-albeu@free.fr>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_083846_044326_FEDE268A 
X-CRM114-Status: UNSURE (   8.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.27.42.5 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.27.42.5 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (albeu[at]free.fr)
Subject: [OpenWrt-Devel] [PATCH] runqueue: Fix the callbacks order in
 runqueue_task_kill()
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
Cc: Alban Bedel <albeu@free.fr>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Since commit 11e8afea (runqueue should cal the complete handler from
more places) the call to the complete() callback has been moved to
runqueue_task_complete().  However in runqueue_task_kill()
runqueue_task_complete() is called before the kill() callback.
This will result in a use after free if the complete() callback free
the task struct.

Furthermore runqueue_start_next() is already called at the end of
runqueue_task_complete(), so there is no need to call it again in
runqueue_task_kill().

Signed-off-by: Alban Bedel <albeu@free.fr>
---
 runqueue.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/runqueue.c b/runqueue.c
index a1d0133..4c621aa 100644
--- a/runqueue.c
+++ b/runqueue.c
@@ -196,11 +196,9 @@ void runqueue_task_kill(struct runqueue_task *t)
 	if (!t->queued)
 		return;
 
-	runqueue_task_complete(t);
 	if (running && t->type->kill)
 		t->type->kill(q, t);
-
-	runqueue_start_next(q);
+	runqueue_task_complete(t);
 }
 
 void runqueue_stop(struct runqueue *q)
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
