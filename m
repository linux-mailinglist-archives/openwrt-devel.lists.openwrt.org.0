Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D4C913132C
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Jan 2020 14:42:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ROGkdLXXUnEHFKYi2I4B52nKcqF70jGUourR12EIAvQ=; b=U9qgHJYqT1yW9W
	DCeh1P2Kf/Ei5SERUbD6B5+tRPwr3LRBh+GDfcqmcsjetAlZ6AHYSV1owCQPsng5phFWMEG7BuQTF
	FOfRPg9AcMxdMk2mnkKvR52tiEPgHO/rNm8vSyReGr40jFNjo1q5LGUtZz4Q/c3E4D+3w9ubNoJgg
	4vbkNc0UUufI4ClUgDZPASYyYYFxJSzavYfjES1fUM3iHpD8BSwLFzGF50BGj0QuR51VT77jzpKjG
	eoEAdDAC6x4kCjr8GwMHazQ9bVPXR37GeBBmcfe4PM2I0K0R7WtEGcEncza3gZsOQW7H9EBHkOXYM
	oftjqiH19wBZd+KbFMmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioSeZ-0001uz-Tc; Mon, 06 Jan 2020 13:42:43 +0000
Received: from so254-38.mailgun.net ([198.61.254.38])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioSds-0001c7-TR
 for openwrt-devel@lists.openwrt.org; Mon, 06 Jan 2020 13:42:05 +0000
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=gorani.run; q=dns/txt; 
 s=mailo; t=1578318119;
 h=Content-Transfer-Encoding: MIME-Version:
 Message-Id: Date: Subject: Cc: To: From: Sender;
 bh=CjtqqvxxqxFrW4qUVGoDxOW3xv20KIUgI7O660RytvM=;
 b=LtQwk+XknZUeMEfE9RUFzvw+VJMFyQ9DvBT3y6/O0hZu3n2PGUcmXRTI5DazIAcOqSG1ceWZ
 ndgPx85SKbQUEV3PVuZSgdkS5enMEYeQjvENlQjBotKpbuD2j8Qrh976iFHKeq23e6RTyXWO
 /1KPS02CcvW3tFPJwdjutCQZapE=
X-Mailgun-Sending-Ip: 198.61.254.38
X-Mailgun-Sid: WyI5NGQ3YSIsICJvcGVud3J0LWRldmVsQGxpc3RzLm9wZW53cnQub3JnIiwgImNmYmM2YiJd
Received: from ms-arch.localdomain (Unknown [219.255.228.122])
 by mxa.mailgun.org with ESMTP id 5e133925.7fc080c6c6c0-smtp-out-n01;
 Mon, 06 Jan 2020 13:41:57 -0000 (UTC)
From: Sungbo Eo <mans0n@gorani.run>
To: openwrt-devel@lists.openwrt.org
Date: Mon,  6 Jan 2020 22:40:15 +0900
Message-Id: <20200106134016.11354-1-mans0n@gorani.run>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_054201_084961_390CADA9 
X-CRM114-Status: UNSURE (   8.64  )
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
Subject: [OpenWrt-Devel] [PATCH uclient 1/2] uclient-fetch: fetch only
 header in spider mode
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

Since spider mode only checks if a file exists, we don't need to download
the whole file. This also matches wget's behavior.

Signed-off-by: Sungbo Eo <mans0n@gorani.run>
---
 uclient-fetch.c | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/uclient-fetch.c b/uclient-fetch.c
index 38c9c53..3718197 100644
--- a/uclient-fetch.c
+++ b/uclient-fetch.c
@@ -234,8 +234,12 @@ static void header_done_cb(struct uclient *cl)
 		}
 	case 204:
 	case 200:
-		if (no_output)
+		if (no_output) {
+			if (!quiet)
+				fprintf(stderr, "Request succeeded\n");
+			request_done(cl);
 			break;
+		}
 
 		if (tb[H_LEN])
 			out_len = strtoul(blobmsg_get_string(tb[H_LEN]), NULL, 10);
@@ -264,7 +268,7 @@ static void read_data_cb(struct uclient *cl)
 	ssize_t n;
 	int len;
 
-	if (!no_output && output_fd < 0)
+	if (output_fd < 0)
 		return;
 
 	while (1) {
@@ -273,11 +277,9 @@ static void read_data_cb(struct uclient *cl)
 			return;
 
 		out_bytes += len;
-		if (!no_output) {
-			n = write(output_fd, buf, len);
-			if (n < 0)
-				return;
-		}
+		n = write(output_fd, buf, len);
+		if (n < 0)
+			return;
 	}
 }
 
-- 
2.24.1

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
