Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C00121A0085
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Apr 2020 23:59:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Subject:
	List-Help:Reply-To:List-Archive:List-Unsubscribe:List-Subscribe:Cc:From:
	List-Post:List-Id:Message-ID:MIME-Version:Date:To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=plPYurBh73gQebOBO1GsFmD4GdgkXKg40avwwE52Pw0=; b=rEGC4230iCHiOHXHw39I7/bDC3
	L7OZ2mjazyVhprobGArrZ531fN6ZogU25cn/zSmlNqx8xq+OFqn8ky5HHCKu3twhwEop8R9sAw9Qy
	tnkH3oGlC4do2NsKnjdVDn20GeA3MtX4UvIL9t6KD3MtiY6p+PzWUSaMNW0pTolzK0AGuwe+47KWH
	Mv30s7Nz0sB8Ck65RZyh+U7JkIoRji/bOFhHaf2OpxwIaKFyEgXiVM8ZRAd0X+kdBZXZvmD5w94ay
	MaU5KOX413l9yj5QT70DZWkTW6BuNTiZcMNUR8E5XNgjQDIN6DKpndRyvn9sBQo0hczD3UIzlxjLE
	nCm5EBJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLZmA-0008Eh-1m; Mon, 06 Apr 2020 21:59:26 +0000
To: openwrt-devel@lists.openwrt.org
Date: Mon,  6 Apr 2020 23:58:43 +0200
MIME-Version: 1.0
Message-ID: <mailman.1406.1586210362.2542.openwrt-devel@lists.openwrt.org>
List-Id: <openwrt-devel.lists.openwrt.org>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
From: Johann Neuhauser via openwrt-devel <openwrt-devel@lists.openwrt.org>
Precedence: list
Cc: Johann Neuhauser <johann@it-neuhauser.de>
X-Mailman-Version: 2.1.29
X-BeenThere: openwrt-devel@lists.openwrt.org
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
Reply-To: Johann Neuhauser <johann@it-neuhauser.de>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
Subject: [OpenWrt-Devel] [PATCH] iwinfo: add device id for Mikrotik
 R11e-5HacD miniPCIe card
Content-Type: multipart/mixed; boundary="===============5132273327498885170=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============5132273327498885170==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

The sender domain has a DMARC Reject/Quarantine policy which disallows
sending mailing list messages using the original "From" header.

To mitigate this problem, the original message has been wrapped
automatically by the mailing list software.
--===============5132273327498885170==
Content-Type: message/rfc822
MIME-Version: 1.0
Content-Disposition: inline

Received: from challenger4.mydhp.de ([185.84.81.4])
	by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLZm3-0008E2-6b
	for openwrt-devel@lists.openwrt.org; Mon, 06 Apr 2020 21:59:21 +0000
From: Johann Neuhauser <johann@it-neuhauser.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=it-neuhauser.de;
	s=atlas188; t=1586210342;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=yvcNtVMB2c6V1pgQQpC980igwhRM3M9EfEzEIFuzuIE=;
	b=KRVuOBy/SaO5rctN2bBrE+0ExDrOmav5BpTG0yqbUW/pAEAT4xhztMPLHqzFVZcD9JUQbt
	Wf6P8z5G1S0UKTKsYcIEjVcanTCMuha7lU0kuBjP+NMrxfE+AZSecyrUaAg5afx/Hx8Dob
	o5mejlGjwkwNaWe4BAccQtkSu/3qeto=
To: openwrt-devel@lists.openwrt.org
Cc: Johann Neuhauser <johann@it-neuhauser.de>
Subject: [PATCH] iwinfo: add device id for Mikrotik R11e-5HacD miniPCIe card
Date: Mon,  6 Apr 2020 23:58:43 +0200
Message-Id: <20200406215843.24125-1-johann@it-neuhauser.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_145919_441155_EA10C19E 
X-CRM114-Status: UNSURE (   4.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain

Signed-off-by: Johann Neuhauser <johann@it-neuhauser.de>
---
 hardware.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/hardware.txt b/hardware.txt
index 07f61b7..c511395 100644
--- a/hardware.txt
+++ b/hardware.txt
@@ -159,6 +159,7 @@
 0x168c 0x003c 0x168c 0x3223    0      0  "Qualcomm Atheros" "QCA9880"
 0x168c 0x003c 0x1a56 0x1420    0      0  "Qualcomm Atheros" "QCA9862"
 0x168c 0x003c 0x19b6 0xd03c    0      0  "Mikrotik" "R11e-5HacT"
+0x168c 0x003c 0x19b6 0xd075    0      0  "Mikrotik" "R11e-5HacD"
 0x168c 0x0040 0x168c 0x0002    0      0  "Qualcomm Atheros" "QCA9990"
 0x168c 0x0046 0x168c 0xcafe    0      0  "Qualcomm Atheros" "QCA9984"
 0x168c 0x0050 0x0000 0x0000    0      0  "Qualcomm Atheros" "QCA9887"
-- 
2.20.1



--===============5132273327498885170==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5132273327498885170==--
