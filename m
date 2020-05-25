Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36C881E1187
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 May 2020 17:20:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2DEVsUlaZqpEcfzyJv54J0u6vdaDAN+ewL3IjX5nwiw=; b=bGL2xxULNaTA662nwIb8byhYxt
	cT1ztXExTLPjFW0XRuSM5VfhTWQjXMDqDTh6lpW9JIVPuxhh5tK7vXOYvdtgnIohkfvqf+i+7g76W
	QYbdTK0DrcEy++ieEBtxr+moK8wypmg6qhmi+t+CNPFStAI0Z+8TVPExObRel/o8RNI4wixHZ/5MP
	RxIZ+65eTi5bgRE9/CQiymJcWVd8P6m/ECPlYcUnj48ltgkVJ+2Qqu9DpwsITjes7Hytoil2DRmXq
	GqONjVI8zkduKaNNElRTRSyHn1v0k9NDi3PaT25SgfSI5zGsSJDFL1twXsg9q+NWigJrco2+D3CnD
	wrPQXcVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdEtS-0000BW-9R; Mon, 25 May 2020 15:19:58 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdEt0-0008EN-M1
 for openwrt-devel@lists.openwrt.org; Mon, 25 May 2020 15:19:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=nbd.name;
 s=20160729; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=OcXdC66nwybwj4fVk1z1XgQGnMVXGL3LxEycy6B4pIU=; b=iUNmzF8/sIwMvdFNlh9rBCgiZZ
 y6x/xnnxXJBPim+iDLAQg3f3JrDSojNow7dm+TvnbpvTfkp3ur7Huc/fsVqZkmdsvdQahzvwvJ0/O
 v9IoKw6go1v7XDPPAy0uKGpAf1qWpoebSXcJGVGXIBEJ5FmJA17CjjTob/W01+2jdp2o=;
Received: from p5b206c3b.dip0.t-ipconnect.de ([91.32.108.59] helo=maeck.lan)
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <nbd@nbd.name>) id 1jdEsz-00018D-6s
 for openwrt-devel@lists.openwrt.org; Mon, 25 May 2020 17:19:29 +0200
Received: by maeck.lan (Postfix, from userid 501)
 id B851487ED534; Mon, 25 May 2020 17:19:08 +0200 (CEST)
From: Felix Fietkau <nbd@nbd.name>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 25 May 2020 17:19:07 +0200
Message-Id: <20200525151908.3930-2-nbd@nbd.name>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200525151908.3930-1-nbd@nbd.name>
References: <20200525151908.3930-1-nbd@nbd.name>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_081930_874068_BDC8FD5C 
X-CRM114-Status: GOOD (  10.31  )
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
Subject: [OpenWrt-Devel] [PATCH libubox 2/3] blobmsg: simplify and fix name
 length checks in blobmsg_check_name
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

blobmsg_hdr_valid_namelen was omitted when name==false
The blob_len vs blobmsg_namelen changes were not taking into account
potential padding between name and data

Signed-off-by: Felix Fietkau <nbd@nbd.name>
---
 blobmsg.c | 13 ++++---------
 1 file changed, 4 insertions(+), 9 deletions(-)

diff --git a/blobmsg.c b/blobmsg.c
index daaa9fc8444b..308bef7bc6b0 100644
--- a/blobmsg.c
+++ b/blobmsg.c
@@ -48,8 +48,8 @@ static bool blobmsg_hdr_valid_namelen(const struct blobmsg_hdr *hdr, size_t len)
 
 static bool blobmsg_check_name(const struct blob_attr *attr, size_t len, bool name)
 {
-	char *limit = (char *) attr + len;
 	const struct blobmsg_hdr *hdr;
+	uint16_t namelen;
 
 	hdr = blobmsg_hdr_from_blob(attr, len);
 	if (!hdr)
@@ -58,16 +58,11 @@ static bool blobmsg_check_name(const struct blob_attr *attr, size_t len, bool na
 	if (name && !hdr->namelen)
 		return false;
 
-	if (name && !blobmsg_hdr_valid_namelen(hdr, len))
-		return false;
-
-	if ((char *) hdr->name + blobmsg_namelen(hdr) + 1 > limit)
-		return false;
-
-	if (blobmsg_namelen(hdr) > (blob_len(attr) - sizeof(struct blobmsg_hdr)))
+	namelen = blobmsg_namelen(hdr);
+	if (blob_len(attr) < (size_t)blobmsg_hdrlen(namelen))
 		return false;
 
-	if (hdr->name[blobmsg_namelen(hdr)] != 0)
+	if (hdr->name[namelen] != 0)
 		return false;
 
 	return true;
-- 
2.24.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
