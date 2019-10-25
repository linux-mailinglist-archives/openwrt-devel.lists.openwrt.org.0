Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85975E48D3
	for <lists+openwrt-devel@lfdr.de>; Fri, 25 Oct 2019 12:49:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8ZmNoF85euFUoGUeFF0rjpsP+fBBrM80QT75Q/AQInw=; b=N/RYiHrPbSiDBc
	a9pAsYt+Pjqx7e397CPYksu2aHwarUjAOJ2XRIORnDm1sYTeksEOm6YWgIGrUnfaS0yOsN1QK4U6g
	laTyrSHfAh2xQ67qvE7ds1knTpFXo2pmu0DNkDtR4yk2b2fK0X24mTMn2HHsthKiAIs90KQXQOz/r
	H/H7cHdL5UyZ6t0u5p9VJhftHMdTH9vH4PW0ijnROI9x3mqO3qaaKI0dL53tsUgkDhsZNYps3acSV
	GmAS3kSQgHtK4SD/zOy30s3Zs3hwppsPSEZXrzJhMkmttkjFSzIVBPcF2HRPt8qMnKnlfDeRlW4Yd
	eH03gArPXhmj+XU6scBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNx9Z-0003io-5A; Fri, 25 Oct 2019 10:49:09 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNx9S-0003iK-2o
 for openwrt-devel@lists.openwrt.org; Fri, 25 Oct 2019 10:49:03 +0000
Received: by mail-pg1-x544.google.com with SMTP id e10so1284123pgd.11
 for <openwrt-devel@lists.openwrt.org>; Fri, 25 Oct 2019 03:49:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=MdMeMdcggYj6DcCjge3BEsVexb6Rj56Nyj9LN/VBcsM=;
 b=Pys7xagnuQrjW73AKyzEyFKLhtSBCDIcaiS/pG1OhqXlC5av+BA9YNbX+VuVWCY1AE
 VPlH7x1oYNVtzaDqXAmo8/ZWBtFjuUKwBdImijTrzXKeAt88lkkjmKYtA6/RzOD83Zfq
 vllxjpDT3I4zW8BE2rNEnknhklbd6+RXk1vA6ZkyLPi0BbUgE7us8DIwalxXud4I4FSi
 iU0SYijTmpHh7AfldQEZtUgPeP26+/Dkmlosbo2C8cBr/hc4d0i50X4ncD+MODlM3QDq
 3nh474F60TCQz/oVXeqiQ3PkAEiQhtOLsVFsJKaJc4JSsLWiCtPel0lcZA71dE94CC/J
 +P0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=MdMeMdcggYj6DcCjge3BEsVexb6Rj56Nyj9LN/VBcsM=;
 b=Oo0riHNnXR4JXA3wUdGrqxogT4TSDxAtXyV0qYc0vNNXRsNy6aHJHPwo68B1OH6ksl
 d39cAVVRUPoRkS4onk3hw4q046AJ4/tsrvlEBCstzzpgtNooARoY73UOZ79j9MsHR+Aw
 Dm3dx08L8jU7BQUOGP7+OXkwquXFvEcmVjeJEvbfZRZThjJMdIoIi1iqhefU/NLOtOw4
 EXZwL/oQtuhy/xQlRpa+bbrbBWYdaClAUoL7cCEwOM8QNGiKybtgzyGRbTm01IXaXeIe
 ENgTrFeH0svsoMI8C97WMxp8euS0b73I0+dAuqUtUfTydHpTopyYzN48H1pDZeijC0r1
 pEUQ==
X-Gm-Message-State: APjAAAVAiixI9YAsFl632Fqg3E7iI5SXhiIBxXaaz3QjmEOW1MloIAsL
 PDz8fDEDRqM+kSxIIfe+Mt8=
X-Google-Smtp-Source: APXvYqwJtyLsoU0/6IIXiLAc+79qWZLhGluGOdqPXw5YttuCWuSGsJmHIAlUI/WZFFrwrGnDgpr9Wg==
X-Received: by 2002:a17:90a:ad0c:: with SMTP id
 r12mr3333062pjq.1.1572000540820; 
 Fri, 25 Oct 2019 03:49:00 -0700 (PDT)
Received: from titan.hq.cloud.yunionyun.com ([161.117.5.46])
 by smtp.gmail.com with ESMTPSA id 129sm2303766pfg.38.2019.10.25.03.48.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 25 Oct 2019 03:48:59 -0700 (PDT)
From: Yousong Zhou <yszhou4tech@gmail.com>
To: rafal@milecki.pl
Date: Fri, 25 Oct 2019 10:48:47 +0000
Message-Id: <20191025104847.24591-1-yszhou4tech@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_034902_150475_28555150 
X-CRM114-Status: UNSURE (   7.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (yszhou4tech[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: [OpenWrt-Devel] [PATCH fstools v2] libblkid-tiny: ntfs: fix
 use-after-free
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
Cc: Yousong Zhou <yszhou4tech@gmail.com>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

The memory pointed to by ns can be reallocated when checking mft records

Fixes FS#2129

Signed-off-by: Yousong Zhou <yszhou4tech@gmail.com>
---
v2 <- v1

 -Fix bad DBG() call in previous patch missing volume_serial as arg

 libblkid-tiny/ntfs.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/libblkid-tiny/ntfs.c b/libblkid-tiny/ntfs.c
index 3a9d5cb..2426e70 100644
--- a/libblkid-tiny/ntfs.c
+++ b/libblkid-tiny/ntfs.c
@@ -86,6 +86,7 @@ static int probe_ntfs(blkid_probe pr, const struct blkid_idmag *mag)
 
 	uint32_t sectors_per_cluster, mft_record_size;
 	uint16_t sector_size;
+	uint64_t volume_serial;
 	uint64_t nr_clusters, off, attr_off;
 	unsigned char *buf_mft;
 
@@ -146,15 +147,16 @@ static int probe_ntfs(blkid_probe pr, const struct blkid_idmag *mag)
 		return 1;
 
 
+	volume_serial = ns->volume_serial;
 	off = le64_to_cpu(ns->mft_cluster_location) * sector_size *
 		sectors_per_cluster;
 
 	DBG(LOWPROBE, ul_debug("NTFS: sector_size=%"PRIu16", mft_record_size=%"PRIu32", "
 			"sectors_per_cluster=%"PRIu32", nr_clusters=%"PRIu64" "
-			"cluster_offset=%"PRIu64"",
+			"cluster_offset=%"PRIu64", volume_serial=%"PRIu64"",
 			sector_size, mft_record_size,
 			sectors_per_cluster, nr_clusters,
-			off));
+			off, volume_serial));
 
 	buf_mft = blkid_probe_get_buffer(pr, off, mft_record_size);
 	if (!buf_mft)
@@ -203,9 +205,9 @@ static int probe_ntfs(blkid_probe pr, const struct blkid_idmag *mag)
 	}
 
 	blkid_probe_sprintf_uuid(pr,
-			(unsigned char *) &ns->volume_serial,
-			sizeof(ns->volume_serial),
-			"%016" PRIX64, le64_to_cpu(ns->volume_serial));
+			(unsigned char *) &volume_serial,
+			sizeof(volume_serial),
+			"%016" PRIX64, le64_to_cpu(volume_serial));
 	return 0;
 }
 

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
