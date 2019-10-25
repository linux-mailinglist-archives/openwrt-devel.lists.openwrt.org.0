Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FFFCE469C
	for <lists+openwrt-devel@lfdr.de>; Fri, 25 Oct 2019 11:05:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=l/zOhuC6wjLBROw7/o5P0F1gZ4uP/PMJJlgWxeCg1Ho=; b=mmvEroo7e9U6WJ
	xI0wbvnWZOieeBTp94TF9OaqfGxpTJxGi4DJvjC4E/DakpoSIZiMuwCjHFXxb+HgPiHQT+AoKbY03
	wJR81O1DFUpglz05684H0QYHf61y5jvlJtSgX4xgO+R1YpYuASwkA82aypkER97d3XgvAVCIzRBbZ
	aKdQlCrNMfbVHyXoOGyOKk9t3o1bp3ELfgFshktv2l1WlB6UD0wRI+zDvrQHgV0A7U4dGX6IT4iYJ
	AiEnwxRsV7YgWRU1VlSh0i+ictO+fD6UVAV9n1ukAD+1bWxKWclJ0AXLskI/7fvjmCfIqSa3CjWwv
	GH5dic6b6q/fujEgl9EA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNvXC-0007tk-DT; Fri, 25 Oct 2019 09:05:26 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNvX4-00077O-OD
 for openwrt-devel@lists.openwrt.org; Fri, 25 Oct 2019 09:05:20 +0000
Received: by mail-pf1-x443.google.com with SMTP id v4so1156554pff.6
 for <openwrt-devel@lists.openwrt.org>; Fri, 25 Oct 2019 02:05:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RO1yjZ59owgaWLihVAZ6jNTiDfSgFb53tRi90Q3Wf9I=;
 b=UReXAH45eEv2pN3yFI62tPT2w5CWPNxCNUFUIVA+BWAqU0Iqv9cNILa0sJRxR4NdHF
 HPFFRd37hmWN0isNRgSOQDzEb+XLsWCPgCNT6deoyVHLoacEZiI1J25Xbc7h+Y7C6vim
 GLhCNNw9h16jnb1PxBZ+aWi/VnlG4HQJqoKoYCwUlBvdI3WIkT1W57/0LmTrAtU/iUwf
 GWu9i/yBU4R4JmeC6zoVbAFapiPcrXyAYWNxOuCcOjQoZ70cHECsXPHmRC8ZhHWqY5Wh
 MdyD1fTN793wuPTcCJTOrUyKXIhe0l4MsHn0lPnnieKnT+RIU4l3YT7lDqHMzdoUeSsF
 zQKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=RO1yjZ59owgaWLihVAZ6jNTiDfSgFb53tRi90Q3Wf9I=;
 b=TfTdBXXUAcrBHndZ3bJI50UL3+BsD5UXGy5EuBdzdkzT61hQBnwO+GDkuio9bogjPb
 kg3AwdobYI4yBiYa2izGDPMXpcNLC+ZnewqMdlelcoDeiO8hhvNvWd3FJfOJtdZzf3v8
 ijGVqizKPbIxz6HsvSl4HLCllFHIbMwKb1+g3BbeeZaL3r9mFP4ZuKsUw2RXt2oI0m8s
 oLaJH+qxhmXYLEiiX9XC68vJgksEQhAcrnBA6a4aTmQAIyngHm9lLi7zWUmuOgX7U2Vm
 JU571Utx7aFARkeOX+e4CQm/SRiEOiqbaLsMhAI4iqChUqdL8qZhZtEzNs4a8RHb2IOa
 JpGw==
X-Gm-Message-State: APjAAAXHW1wqkbs2AW1nWR1Iw0V14emFAQNArL3rfbN/+nXgTv1A9N3D
 3qKH6jbi7DieHTcUKciMENM=
X-Google-Smtp-Source: APXvYqyFgTM0Yg93TEdxYD5h4bQxHzy1SOBFWph3MMqtn5SH4G6jZ+s+ARcO8XyFHGGrqN1x7kKEuA==
X-Received: by 2002:a63:934d:: with SMTP id w13mr2971344pgm.185.1571994317511; 
 Fri, 25 Oct 2019 02:05:17 -0700 (PDT)
Received: from titan.hq.cloud.yunionyun.com ([161.117.5.46])
 by smtp.gmail.com with ESMTPSA id 30sm1848263pjk.25.2019.10.25.02.05.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 25 Oct 2019 02:05:16 -0700 (PDT)
From: Yousong Zhou <yszhou4tech@gmail.com>
To: rafal@milecki.pl
Date: Fri, 25 Oct 2019 09:04:49 +0000
Message-Id: <20191025090449.113130-1-yszhou4tech@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_020518_818237_46288A58 
X-CRM114-Status: UNSURE (   7.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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
Subject: [OpenWrt-Devel] [PATCH fstools] libblkid-tiny: ntfs: fix
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

Signed-off-by: Yousong Zhou <yszhou4tech@gmail.com>
---
 libblkid-tiny/ntfs.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/libblkid-tiny/ntfs.c b/libblkid-tiny/ntfs.c
index 3a9d5cb..dfe22e2 100644
--- a/libblkid-tiny/ntfs.c
+++ b/libblkid-tiny/ntfs.c
@@ -86,6 +86,7 @@ static int probe_ntfs(blkid_probe pr, const struct blkid_idmag *mag)
 
 	uint32_t sectors_per_cluster, mft_record_size;
 	uint16_t sector_size;
+	uint64_t volume_serial;
 	uint64_t nr_clusters, off, attr_off;
 	unsigned char *buf_mft;
 
@@ -146,12 +147,13 @@ static int probe_ntfs(blkid_probe pr, const struct blkid_idmag *mag)
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
 			off));
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
