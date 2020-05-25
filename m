Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAD901E1186
	for <lists+openwrt-devel@lfdr.de>; Mon, 25 May 2020 17:19:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=b0tCMRs5+xy4KYwpfbczJ6gpyaw7E6TL3Z/MHPuGsRc=; b=r20cCSizn1AAcdNHI3jwapHUZ1
	TIwwqeO/LttTHNIwPGYL59u9vVAoxaLo4VIPTukQULeD3xVprUeVbBr5Axx227DN8R7AsOLpeKviT
	/8BdvyiukEMW/JUUE5Qit4I0hyWOeKzTpGWbdSdQOBEG8pPJgZYec99eo4Nk+D25i+Q6K0cXWkQaD
	IOoncfMMSGKH4/4f0LgYC5hi2f1ExCO677wqJoE5vlgtKtQ5GKPvSr2jh/Nvt2QN6eagwxvWkoPTk
	R1QliSSN6A8dvqveBmCfAv7W1YoD5F+QoRaF8hSLe4k9NNIwLsExDivD5yrkhDojP8tJffF+XEFWp
	blwwkImA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdEtF-0008NU-QN; Mon, 25 May 2020 15:19:45 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdEsz-0008E2-4R
 for openwrt-devel@lists.openwrt.org; Mon, 25 May 2020 15:19:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=nbd.name;
 s=20160729; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
 Message-Id:Date:Subject:To:From:Sender:Reply-To:Cc:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YRpFn3D3sd1Nm86w8vhidt+gQhxaYTD9fKw8o4a6FDM=; b=eMjWZwBHI1tXlZTqWmrkXSWxge
 wN/uQqd2pocaZaIB1Im2Qcnjg9tfEWlo1az1UR2Ib2gKDkIlrLsbAxL42CcHJfReaBfa4YAohaQB7
 lpWa/ajWM1W94gxZd1KukMl8XuQAr12GYtpXD5Ov5te/CfXSy+fSP49QTEVjAsGwYa5g=;
Received: from p5b206c3b.dip0.t-ipconnect.de ([91.32.108.59] helo=maeck.lan)
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <nbd@nbd.name>) id 1jdEsx-00018F-MN
 for openwrt-devel@lists.openwrt.org; Mon, 25 May 2020 17:19:27 +0200
Received: by maeck.lan (Postfix, from userid 501)
 id B7FE487ED533; Mon, 25 May 2020 17:19:08 +0200 (CEST)
From: Felix Fietkau <nbd@nbd.name>
To: openwrt-devel@lists.openwrt.org
Date: Mon, 25 May 2020 17:19:08 +0200
Message-Id: <20200525151908.3930-3-nbd@nbd.name>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200525151908.3930-1-nbd@nbd.name>
References: <20200525151908.3930-1-nbd@nbd.name>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_081929_334599_7691A8A9 
X-CRM114-Status: GOOD (  12.94  )
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
Subject: [OpenWrt-Devel] [PATCH libubox 3/3] blobmsg: fix missing length
 checks
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

blobmsg_check_attr_len was calling blobmsg_check_data for some, but not all
attribute types. These checks was missing for arrays and tables.

Additionally, the length check in blobmsg_check_data was a bit off, since
it was comparing the blobmsg data length against the raw blob attr length.

Fix this by checking the raw blob length against the buffer length in
blobmsg_hdr_from_blob

Signed-off-by: Felix Fietkau <nbd@nbd.name>
---
 blobmsg.c | 66 +++++++++++++++++--------------------------------------
 1 file changed, 20 insertions(+), 46 deletions(-)

diff --git a/blobmsg.c b/blobmsg.c
index 308bef7bc6b0..7da418380299 100644
--- a/blobmsg.c
+++ b/blobmsg.c
@@ -30,31 +30,18 @@ bool blobmsg_check_attr(const struct blob_attr *attr, bool name)
 	return blobmsg_check_attr_len(attr, name, blob_raw_len(attr));
 }
 
-static const struct blobmsg_hdr* blobmsg_hdr_from_blob(const struct blob_attr *attr, size_t len)
-{
-	if (len < sizeof(struct blob_attr) + sizeof(struct blobmsg_hdr))
-		return NULL;
-
-	return blob_data(attr);
-}
-
-static bool blobmsg_hdr_valid_namelen(const struct blobmsg_hdr *hdr, size_t len)
-{
-	if (len < sizeof(struct blob_attr) + sizeof(struct blobmsg_hdr) + blobmsg_namelen(hdr) + 1)
-		return false;
-
-	return true;
-}
-
-static bool blobmsg_check_name(const struct blob_attr *attr, size_t len, bool name)
+static bool blobmsg_check_name(const struct blob_attr *attr, bool name)
 {
 	const struct blobmsg_hdr *hdr;
 	uint16_t namelen;
 
-	hdr = blobmsg_hdr_from_blob(attr, len);
-	if (!hdr)
+	if (!blob_is_extended(attr))
+		return !name;
+
+	if (blob_len(attr) < sizeof(struct blobmsg_hdr))
 		return false;
 
+	hdr = (const struct blobmsg_hdr *)blob_data(attr);
 	if (name && !hdr->namelen)
 		return false;
 
@@ -68,29 +55,20 @@ static bool blobmsg_check_name(const struct blob_attr *attr, size_t len, bool na
 	return true;
 }
 
-static const char* blobmsg_check_data(const struct blob_attr *attr, size_t len, size_t *data_len)
-{
-	char *limit = (char *) attr + len;
-	const char *data;
-
-	*data_len = blobmsg_data_len(attr);
-	if (*data_len > blob_raw_len(attr))
-		return NULL;
-
-	data = blobmsg_data(attr);
-	if (data + *data_len > limit)
-		return NULL;
-
-	return data;
-}
-
 bool blobmsg_check_attr_len(const struct blob_attr *attr, bool name, size_t len)
 {
 	const char *data;
 	size_t data_len;
 	int id;
 
-	if (!blobmsg_check_name(attr, len, name))
+	if (len < sizeof(struct blob_attr))
+		return false;
+
+	data_len = blob_raw_len(attr);
+	if (data_len < sizeof(struct blob_attr) || data_len > len)
+		return false;
+
+	if (!blobmsg_check_name(attr, name))
 		return false;
 
 	id = blob_id(attr);
@@ -100,9 +78,8 @@ bool blobmsg_check_attr_len(const struct blob_attr *attr, bool name, size_t len)
 	if (!blob_type[id])
 		return true;
 
-	data = blobmsg_check_data(attr, len, &data_len);
-	if (!data)
-		return false;
+	data = blobmsg_data(attr);
+	data_len = blobmsg_data_len(attr);
 
 	return blob_check_type(data, data_len, blob_type[id]);
 }
@@ -206,13 +183,13 @@ int blobmsg_parse(const struct blobmsg_policy *policy, int policy_len,
 	}
 
 	__blob_for_each_attr(attr, data, len) {
-		hdr = blobmsg_hdr_from_blob(attr, len);
-		if (!hdr)
+		if (!blobmsg_check_attr_len(attr, false, len))
 			return -1;
 
-		if (!blobmsg_hdr_valid_namelen(hdr, len))
-			return -1;
+		if (!blob_is_extended(attr))
+			continue;
 
+		hdr = blob_data(attr);
 		for (i = 0; i < policy_len; i++) {
 			if (!policy[i].name)
 				continue;
@@ -224,9 +201,6 @@ int blobmsg_parse(const struct blobmsg_policy *policy, int policy_len,
 			if (blobmsg_namelen(hdr) != pslen[i])
 				continue;
 
-			if (!blobmsg_check_attr_len(attr, true, len))
-				return -1;
-
 			if (tb[i])
 				continue;
 
-- 
2.24.0


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
