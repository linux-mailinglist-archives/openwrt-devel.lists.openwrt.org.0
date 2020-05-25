Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 289321E1185
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 May 2020 17:19:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=415YY4kcRa3fIATSk1hZDc9Ysj1WfVPIkEIc2E4gNho=; b=AUEtH042ObZjxT
	FRsR27/aa9+CUotDz3dibQvdYCgoxtkdwSc7d1MOZvchhiLHaFtRTPMQpdeYfdqLLXMkvkMxql7wo
	EC+nCcfgm5kuUHE2C7BPgTD3xOj17SujJvDnnQk1NWzAfiX79HltXn8Hn9ZoonFxCbm68t4iMBgxO
	ta1Z/DCvz0E0aXbvdFLGvNQypXjo8zYr+9bANCA/zjZXMSQDg8yaTYgcrzphgU6JqIT/GCDy46Ebj
	9vq9u5Znc+C2aHRDu8DIuSr2tj7gNWczh6eSKadj4dusk//G9JA1qtOLwXLAcQragCXLNO3HNv+U/
	RxCumIo59uTxkEiCA0FA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdEt5-0008Em-1a; Mon, 25 May 2020 15:19:35 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdEsx-0008B3-RB
 for openwrt-devel@lists.openwrt.org; Mon, 25 May 2020 15:19:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=nbd.name;
 s=20160729; h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject
 :To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=kpgG3SxfZOOXhU4D3+x2mx1Ht2dBXrOzbpaimsgB8uM=; b=QsjmGw9Z1k1hFFGKkP3SK380it
 oeI+Dt5onqo1B0qrgjxjcbJWH6+wXX3Hli1rLeyFC6PfX+4P9eF8l6wcbXl1AIYp5b06PEGkmKQBh
 +R0z84DlrebBVjDke7gq+01CLRks6yRIe3VLMdGXvjv2vuQgEgBkTXlxDCOHe3w3mnGE=;
Received: from p5b206c3b.dip0.t-ipconnect.de ([91.32.108.59] helo=maeck.lan)
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <nbd@nbd.name>) id 1jdEst-00018E-Ft
 for openwrt-devel@lists.openwrt.org; Mon, 25 May 2020 17:19:23 +0200
Received: by maeck.lan (Postfix, from userid 501)
 id B304587ED532; Mon, 25 May 2020 17:19:08 +0200 (CEST)
From: Felix Fietkau <nbd@nbd.name>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 25 May 2020 17:19:06 +0200
Message-Id: <20200525151908.3930-1-nbd@nbd.name>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_081928_081466_F5B2E243 
X-CRM114-Status: GOOD (  10.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH libubox 1/3] blobmsg: fix length in
 blobmsg_check_array
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

blobmsg_check_array_len expects the length of the full attribute buffer,
not just the data length.
Due to other missing length checks (fixed in the next commit), this did
not show up as a test failure

Signed-off-by: Felix Fietkau <nbd@nbd.name>
---
 blobmsg.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/blobmsg.c b/blobmsg.c
index 59045e1672c8..daaa9fc8444b 100644
--- a/blobmsg.c
+++ b/blobmsg.c
@@ -114,7 +114,7 @@ bool blobmsg_check_attr_len(const struct blob_attr *attr, bool name, size_t len)
 
 int blobmsg_check_array(const struct blob_attr *attr, int type)
 {
-	return blobmsg_check_array_len(attr, type, blob_len(attr));
+	return blobmsg_check_array_len(attr, type, blob_raw_len(attr));
 }
 
 int blobmsg_check_array_len(const struct blob_attr *attr, int type,
-- 
2.24.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
