Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EF61D338E
	for <lists+openwrt-devel@lfdr.de>; Thu, 10 Oct 2019 23:42:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:Date:To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7K8qw9vUb7hTfGboQ8Hz+xSDm3qQZZYkrIb8IP+0TKk=; b=EnEnDhBV0rULOJeTp3juSdmTUW
	F1QOqXzODVDtB0RhCV4bLGLw8LQZym3tHmLMMZAP3caGvvL+vsNHxyxBrnYj+RsZByx7tEWHLq3L2
	Aaz+igjRWvCh/rAVe0nhJEICr88sRPzBp3qoMl5omC+SDxtMVu0UNaFpQoOr2X9d1ZsOfvn6INLdA
	xMEHtG8AUevzHoy0xY5XsDRaD6LoMwVZUZYFNnh4C4PBHTNyNoQkRsAeL5eKgPVDpnwcIO6iuW3Zc
	PsGrnaJBBNbnxcZF/1HuSZei6xImGiiagJueWu6XmEas4GFGsA7mvXi9JqGln9PvmOj3v/V6mXZ26
	PWElqALQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIgCM-0006wS-Jw; Thu, 10 Oct 2019 21:42:14 +0000
To: openwrt-devel@lists.openwrt.org,
	nbd@openwrt.org,
	jo@mein.io
Date: Thu, 10 Oct 2019 18:35:53 -0300
MIME-Version: 1.0
Message-ID: <mailman.2620.1570743730.2486.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Santiago Piccinini via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: Santiago Piccinini <spiccinini@altermundi.net>
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Santiago Piccinini <spiccinini@altermundi.net>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: [OpenWrt-Devel] [PATCH] proc: cancel script killing only if process
 ends
Content-Type: multipart/mixed; boundary="===============1065722855171674010=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============1065722855171674010==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============1065722855171674010==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from mail.codigosur.net ([2a00:1508:1::1039])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIgCG-0006w7-7F
	for openwrt-devel@lists.openwrt.org; Thu, 10 Oct 2019 21:42:09 +0000
Received: from authenticated-user (mail.codigosur.net [109.69.10.39])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.codigosur.net (Postfix) with ESMTPSA id 174998E3674;
	Thu, 10 Oct 2019 21:34:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=altermundi.net;
	s=mail; t=1570743300;
	bh=2cizU9r9/wtqLh4DpDv1AOX1HRwsTAZPSayeTu9GG/o=;
	h=From:To:Cc:Subject:Date:From;
	b=YB+jIs52KJog32CZLA62IjWrNAnkVp8Ga9pX2Ut1CBfJbjdSn6nMpMOfhO60Hu+4H
	 kd1wYP2CBAJ0e5idvqW1Zv7W1PAZvm8OSYqLg9jKlGschsuzk1qUOjyKo6SF18mUCc
	 enmS6hcog6WMrjVq6oAcwZb+BB/A+7LrLA4q/2pfrb9w5tyuE+p1EJbMkTILeydK4W
	 va0pYw57Eq2d7ez+blocIv5yxB7fATc8S7a2NoeKsUgATc5KYGPjeF51LOYqXOqkXj
	 hyflJmlpbP5z2XG9I+2hwhTV8nrfizv4HdQq6MT8mtC4yXfXKEpIyer6k5RV526Ugl
	 rDTWEL/ID0C2g==
From: Santiago Piccinini <spiccinini@altermundi.net>
To: openwrt-devel@lists.openwrt.org,
	nbd@openwrt.org,
	jo@mein.io
Cc: Santiago Piccinini <spiccinini@altermundi.net>
Subject: [PATCH] proc: cancel script killing only if process ends
Date: Thu, 10 Oct 2019 18:35:53 -0300
Message-Id: <20191010213553.90237-1-spiccinini@altermundi.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_144208_470408_A1C17382 
X-CRM114-Status: UNSURE (   7.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain

Before this change if the cgi script hangs after writing headers
then the process will never be killed. Let's only cancel the timeout
if the process ends.

Signed-off-by: Santiago Piccinini <spiccinini@altermundi.net>
---
 proc.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/proc.c b/proc.c
index 1d63d86..2b69703 100644
--- a/proc.c
+++ b/proc.c
@@ -225,11 +225,9 @@ static void proc_handle_header(struct relay *r, const char *name, const char *va
 static void proc_handle_header_end(struct relay *r)
 {
 	struct client *cl = r->cl;
-	struct dispatch_proc *p = &cl->dispatch.proc;
 	struct blob_attr *cur;
 	int rem;
 
-	uloop_timeout_cancel(&p->timeout);
 	uh_http_header(cl, cl->dispatch.proc.status_code, cl->dispatch.proc.status_msg);
 	blob_for_each_attr(cur, cl->dispatch.proc.hdr.head, rem)
 		ustream_printf(cl->us, "%s: %s\r\n", blobmsg_name(cur),
-- 
2.23.0



--===============1065722855171674010==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1065722855171674010==--
