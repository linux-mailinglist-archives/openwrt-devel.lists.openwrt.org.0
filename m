Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7943138601
	for <lists+openwrt-devel@lfdr.de>; Sun, 12 Jan 2020 12:28:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lZVt3qahNBVZ1UDYrafrCSRo/xbU46FRDfMnECqLZWM=; b=S4iJKKewsLA6X5
	6SxA24JgeNTe7YWnhFeWrmNAeJDXAFleutmOdy0EwCsIyyW29SzE18rsGSZR7XOgHZSBDyIidxE4y
	fTg4vCMwYNGBl4hrcMB31VZMLwSMFuJpGnTAIwuHGgTq/rnb96E7OAeGllNI0X2tigTYAgXFlou2e
	WVKe8hWD6Dsm6eBykl+EmjOv4w416pMvqczAu7akMMsS3JCHgs+0QlXZ1ZeIc7PlTIvHV5KfWyOJH
	4Xa9OEUcgdoBBlYQPlqCRL4flQ/kyTOnbVMyrSGokvAL9NDKbmrWx4kd7bbP9WnoxDSChr/r9MbVf
	upA/z8nnpm7/KIMv4eiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqbPe-0000cA-22; Sun, 12 Jan 2020 11:28:10 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqbPV-0000bm-SU
 for openwrt-devel@lists.openwrt.org; Sun, 12 Jan 2020 11:28:03 +0000
Received: by mail-lf1-x136.google.com with SMTP id i23so4785190lfo.7
 for <openwrt-devel@lists.openwrt.org>; Sun, 12 Jan 2020 03:28:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sartura-hr.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LDv1np+v/Phydaztbk0wYXQmRy/5VLQBq5wYNqqCp1g=;
 b=VCOLBULWgbqKDnqfGzRtTk3SXmQmbTIOasYmEjqtq5a22EqDfyqxR8S+yIVLfb2lKk
 xsWzF502kDhl9NX0GLR/J288e6TKwJfh51rmIVkhkny7oXJbyzKhV9SgFpeID7aCgka1
 Zsb3Wbgz6T0lrxIkGzbyhFrdM2REO21YMKpm6LfecwaU8xdJVLUfH5qvzvtMQyiiIHCX
 yL62JnGYghTFhFQFjzIfhyS1Kle8nzRj5BFEDuWx+VIqKrnsFc7Oe6W44+U10ICIF+rt
 oKn3MEtRpI0TwnrQlK4XVbuHsF3RCTkmsNEc2Nn7qv3+PDSIv3qi9L/sp2onh7OIzHyL
 jnZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LDv1np+v/Phydaztbk0wYXQmRy/5VLQBq5wYNqqCp1g=;
 b=SiUGZkAHHt3cofMGtCrkO7+VJVEk9gAB+5n/J3s2Bwc8mrog3k8CsUZoK+VcZS6fsq
 +XAz5DXXjzG9aGKmzbk+hqIR5t4pyISR32DDxAydGFwW2Cj4PFC/nABBOeC5iy/dVwQE
 6t7I7iD5UfDkAQBXOlDRySci7HbBmdLADXzGiBTfBeLp4tln0Ja7eXcMXaQscaa+uG10
 2VK1U4okvB1RKYuRjI+k3Tp/M6997AaUe0mrS2I2SURxS7lruzVJCRLYF08K+A+qx3+u
 xZLIp/nUaC0G+2Pa0ViN5f/2pRq8dIgpnJRD3Cv30Ej3VqTfY4dkyq/czikg74PjqXBg
 3Mmg==
X-Gm-Message-State: APjAAAVMAiFtkWxVFx6aNrz/HebB4gOpS3oQ4OxydtXk8N5ppTJO8UHJ
 EvdSxNCcgI+YOxP6GJ8Bz7MUzCD+FfkvnFEB/mKkLeb63o4iALZHuZ3rimNajepj76YgmHKmWsL
 xhHOIJ+FXViD2Vn1/q9EXWrgWi62uXXynFLhcqSj24Lfhvq3lYw85UlnMs6oXzsqCzp1PQRIPjW
 KvCfB1Re9s7A==
X-Google-Smtp-Source: APXvYqz0Jou29d+An0kJwmA3oD6R+qtudfOr3edug5Yl9IqiEZcrCJg2NRvAprrnKC4LO4HlqzjTHw==
X-Received: by 2002:ac2:4add:: with SMTP id m29mr6986997lfp.190.1578828477255; 
 Sun, 12 Jan 2020 03:27:57 -0800 (PST)
Received: from localhost.localdomain ([193.14.244.60])
 by smtp.gmail.com with ESMTPSA id v9sm4565221lfe.18.2020.01.12.03.27.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 12 Jan 2020 03:27:56 -0800 (PST)
From: juraj.vijtiuk@sartura.hr
To: openwrt-devel@lists.openwrt.org
Date: Sun, 12 Jan 2020 12:26:18 +0100
Message-Id: <20200112112618.2951-1-juraj.vijtiuk@sartura.hr>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_032801_972754_8199CF20 
X-CRM114-Status: UNSURE (   8.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:136 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: [OpenWrt-Devel] [PATCH][libubox] blobmsg: blobmsg_parse and
 blobmsg_parse_array oob read fixes
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
Cc: Juraj Vijtiuk <juraj.vijtiuk@sartura.hr>,
 Luka Perkov <luka.perkov@sartura.hr>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Fix out of bounds read in blobmsg_parse and blobmsg_check_name. The
out of bounds read happens because blob_attr and blobmsg_hdr have
flexible array members, whose size is 0 in the corresponding sizeofs.
For example the __blob_for_each_attr macro checks whether rem >=
sizeof(struct blob_attr). However, what LibFuzzer discovered was,
if the input data was only 4 bytes, the data would be casted to blob_attr,
and later on blob_data(attr) would be called even though attr->data was empty.
The same issue could appear with data larger than 4 bytes, where data
wasn't empty, but contained only the start of the blobmsg_hdr struct,
and blobmsg_hdr name was empty. The bugs were discovered by fuzzing
blobmsg_parse and blobmsg_array_parse with LibFuzzer.

Signed-off-by: Juraj Vijtiuk <juraj.vijtiuk@sartura.hr>
CC: Luka Perkov <luka.perkov@sartura.hr>

diff --git a/blobmsg.c b/blobmsg.c
index 1dd57e1..0988f60 100644
--- a/blobmsg.c
+++ b/blobmsg.c
@@ -35,10 +35,16 @@ static bool blobmsg_check_name(const struct blob_attr *attr, size_t len, bool na
 	char *limit = (char *) attr + len;
 	const struct blobmsg_hdr *hdr;
 
+	if (len < sizeof(struct blob_attr) + sizeof(struct blobmsg_hdr))
+		return false;
+
 	hdr = blob_data(attr);
 	if (name && !hdr->namelen)
 		return false;
 
+	if (len < sizeof(struct blob_attr) + sizeof(struct blobmsg_hdr) + blobmsg_namelen(hdr) + 1)
+		return false;
+
 	if ((char *) hdr->name + blobmsg_namelen(hdr) > limit)
 		return false;
 
@@ -191,7 +197,11 @@ int blobmsg_parse(const struct blobmsg_policy *policy, int policy_len,
 	}
 
 	__blob_for_each_attr(attr, data, len) {
+		if (len < sizeof(struct blob_attr) + sizeof(struct blobmsg_hdr))
+			return -1;
 		hdr = blob_data(attr);
+		if (len < sizeof(struct blob_attr) + sizeof(struct blobmsg_hdr) + blobmsg_namelen(hdr) + 1)
+			return -1;
 		for (i = 0; i < policy_len; i++) {
 			if (!policy[i].name)
 				continue;

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
