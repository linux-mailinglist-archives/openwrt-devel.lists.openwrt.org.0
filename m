Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BB7113132D
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Jan 2020 14:43:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZokYAVqCgY9EGNZy/LtuLi2hKbbMXhhjXEpWxGpO+xY=; b=NtHeJMvLrY6fRd
	plVfNeLalWhM+Id1LClGa225f51UxHYW8W4JrfeEaAxEWQSHnxKrefrEopurWtPrA+yp6yzesTkMz
	ye3UP9tJ+e5Xm0CRBt1v/DcCqLhGV4Rdqh5qI661F9icCgUEmMZwwuvHlO+AnkqGGO7C7PT97C1bZ
	d/fY7UfVvih82nf5OTex4K3Oc1mtuASBsIBtFMrqlzfESm9f53VVXlI1Kbegd65UwHF8xG6p/UMu2
	Kiif03zjGW/kuOEPjJXCP2XRocxqzY15MKjFXPRj3VmTdToAB3oyhGMJ3fKkyzBuOb1Q76IefCxiK
	7/l/3ch+tc55KHts2f2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioSez-0002BN-8S; Mon, 06 Jan 2020 13:43:09 +0000
Received: from so254-38.mailgun.net ([198.61.254.38])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioSdx-0001hB-KW
 for openwrt-devel@lists.openwrt.org; Mon, 06 Jan 2020 13:42:13 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=gorani.run; q=dns/txt; 
 s=mailo; t=1578318126;
 h=Content-Transfer-Encoding: MIME-Version:
 References: In-Reply-To: Message-Id: Date: Subject: Cc: To: From:
 Sender; bh=zrXPQ6lak9G8MVil/LtdL4NBbnFpQbyFltVVzLXwcVI=;
 b=GZWSx9MWqzLDCDPfPocEyavVKtf0MoJD7Lt2oxqzMIeCrqOT8r7bt0qrmXp57+Yji4U+kouv
 ChPfSVcbQj+34eaNkhsVEY3FyRjpl9/8LJEhze5VYjFE+UmTLqnI+lLq8Zo1G3wVKlJZIPSZ
 AiZBhIKYhVrfQ4be1tcKab6yVWo=
X-Mailgun-Sending-Ip: 198.61.254.38
X-Mailgun-Sid: WyI5NGQ3YSIsICJvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnIiwgImNmYmM2YiJd
Received: from ms-arch.localdomain (Unknown [219.255.228.122])
 by mxa.mailgun.org with ESMTP id 5e13392a.7fc080c6c6c0-smtp-out-n01;
 Mon, 06 Jan 2020 13:42:02 -0000 (UTC)
From: Sungbo Eo <mans0n@gorani.run>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  6 Jan 2020 22:40:16 +0900
Message-Id: <20200106134016.11354-2-mans0n@gorani.run>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200106134016.11354-1-mans0n@gorani.run>
References: <20200106134016.11354-1-mans0n@gorani.run>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_054206_474516_BBA9D560 
X-CRM114-Status: UNSURE (   8.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [198.61.254.38 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH uclient 2/2] uclient-fetch: use HEAD method
 in spider mode
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
Cc: Sungbo Eo <mans0n@gorani.run>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

HEAD method does not request response body, so it is suitable for spider
mode. This also matches wget's behavior.

Signed-off-by: Sungbo Eo <mans0n@gorani.run>
---
 uclient-fetch.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/uclient-fetch.c b/uclient-fetch.c
index 3718197..db5faee 100644
--- a/uclient-fetch.c
+++ b/uclient-fetch.c
@@ -336,7 +336,7 @@ static int init_request(struct uclient *cl)
 
 	msg_connecting(cl);
 
-	rc = uclient_http_set_request_type(cl, post_data ? "POST" : "GET");
+	rc = uclient_http_set_request_type(cl, post_data ? "POST" : no_output ? "HEAD" : "GET");
 	if (rc)
 		return rc;
 
-- 
2.24.1

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
