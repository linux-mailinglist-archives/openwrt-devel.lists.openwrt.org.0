Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D68C47606
	for <lists+openwrt-devel@lfdr.de>; Sun, 16 Jun 2019 19:02:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zZulH4NDY2Ghfsroa9cMGoWDy9b0vLOwiOHbFofV1/w=; b=jDtSUvSbmEx0qp
	298ZuyZBzcoUhEWHLDytYzxeq6D7o882R1bINNj567kwbGywmroAWzhW4SX26HR+4pTXTiC5PSMDO
	wCYCH8laYWzCAANWaf6gAbMPXFtUwR8TbGG6gtMEpV/m0rrEcCCAveaNMUG/eML+A6qK0SI2S8Pr0
	7Ny/5lqiQwwl8+ceA2GH/HgjIhLtnSsQVHBCObaIQaBhnPnU4YrWiWEU7h76A3I3x6ZNO/YhTZ95L
	5H5L33266vd+5HnMMSo1elwsl64RZFSa773GZzVMYzAByAHLZZEQMiRTy9AMqXzQhCBeN6vEJhdUx
	ulldBydKhcqk2h8FVYqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcYXa-0001Xu-EM; Sun, 16 Jun 2019 17:02:02 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcYWa-0000lN-Su
 for openwrt-devel@lists.openwrt.org; Sun, 16 Jun 2019 17:01:02 +0000
Received: by mail-wm1-x334.google.com with SMTP id w9so2849667wmd.1
 for <openwrt-devel@lists.openwrt.org>; Sun, 16 Jun 2019 10:01:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xsnQltkr30uC84/+aA/PiFOF5en2qSwqWYp8xTYEMUg=;
 b=rXHrbTBE9UsG0Ls9cXb7U6IN6FalEFe0AZO4B6FUVTAyLoPybFyxCLeqd9UsksB1OC
 dKN+Xp46SPC1kSypJC99aSO2Wo6RwAHv9tMldNiPO8Cqb1kTORdjA0FAjjeDH1RxpFpe
 DJnjSD0oWMqA8gFuXH6wi4frpC0Qlb2MY0ceKS+xNavVSM783FibljoKBmFHE+pPgi2K
 WsmCP58suZzkw1QkmtfVgTJfq0Q8JwTIrkbNINaRnq0RR+TIHfcl7KeIZ6zYluKZOM+w
 a+LQmBRAbzmODgDv8SXQ0ift61lXwjguXoWxScmRVl4qaDKDkb5g+ow7A8lqTlnVU/Wv
 4qAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xsnQltkr30uC84/+aA/PiFOF5en2qSwqWYp8xTYEMUg=;
 b=RLOwnt9DAtooBoPMkfb1d/fOtzbEldI44PY8v1egtUYXo4eFxaCUDzrWko661D8imD
 5kxtsSC1a19yZgoUo0JUcz8w5Fb016SHh7ULlfPajN42OeRyjFSn5wYprIaruG8hfeYA
 0beqYhYKmiWa7YIcNSsU9SVdNk7TH1YRIYJwszCd9O34HX95BhNgP3Mlbkr9VXPEiTKr
 4BJ8sGRrzMkGpdrEzuwKvReFk2vHpd64wncwyh4+qhJDBtK6/cTfGH819EP3xaTvjO5B
 rBaDDGNs+f2GNCCTYYFLKNEOy+uHqK4prd5+yxpQqnUGGB7qV7IHoEmHNWFqk1Fx4MXH
 4otg==
X-Gm-Message-State: APjAAAV0xdmOwH7JPBNOUoRAC6qMYpFz8xESD95+RPfLRYhVJkidEI2X
 GDBvQrjy0/Oi68uoL2EHO03CAdxe1lI=
X-Google-Smtp-Source: APXvYqxk0/6/91ZepemdBTjlQhLjnBT3Pi09hUqQGHeQFGTkokv6SfRXojxIPpvBATj89WedLNS7Uw==
X-Received: by 2002:a1c:3dc1:: with SMTP id k184mr16048530wma.88.1560704458784; 
 Sun, 16 Jun 2019 10:00:58 -0700 (PDT)
Received: from Ansuel-XPS.localdomain (93-44-105-95.ip96.fastwebnet.it.
 [93.44.105.95])
 by smtp.googlemail.com with ESMTPSA id l8sm28907931wrg.40.2019.06.16.10.00.57
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 16 Jun 2019 10:00:57 -0700 (PDT)
From: Ansuel Smith <ansuelsmth@gmail.com>
To: openwrt-devel@lists.openwrt.org
Date: Sun, 16 Jun 2019 19:00:50 +0200
Message-Id: <20190616170050.27126-4-ansuelsmth@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190616170050.27126-1-ansuelsmth@gmail.com>
References: <20190616170050.27126-1-ansuelsmth@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190616_100100_930503_77582930 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (ansuelsmth[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:334 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] [fstools PATCH: 4/4] libblkid-tiny: use
 blkid_probe_set_utf8label for label set
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
Cc: Ansuel Smith <ansuelsmth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Signed-off-by: Ansuel Smith <ansuelsmth@gmail.com>
---
 libblkid-tiny/f2fs.c | 2 --
 libblkid-tiny/hfs.c  | 2 --
 libblkid-tiny/ntfs.c | 6 +-----
 3 files changed, 1 insertion(+), 9 deletions(-)

diff --git a/libblkid-tiny/f2fs.c b/libblkid-tiny/f2fs.c
index 6efce61..2bf0f5e 100644
--- a/libblkid-tiny/f2fs.c
+++ b/libblkid-tiny/f2fs.c
@@ -71,12 +71,10 @@ static int probe_f2fs(blkid_probe pr, const struct blkid_idmag *mag)
 	if (major == 1 && minor == 0)
 		return 0;
 
-#if 0
 	if (*((unsigned char *) sb->volume_name))
 		blkid_probe_set_utf8label(pr, (unsigned char *) sb->volume_name,
 						sizeof(sb->volume_name),
 						BLKID_ENC_UTF16LE);
-#endif
 
 	blkid_probe_set_uuid(pr, sb->uuid);
 	blkid_probe_sprintf_version(pr, "%u.%u", major, minor);
diff --git a/libblkid-tiny/hfs.c b/libblkid-tiny/hfs.c
index 8676d36..04f25a1 100644
--- a/libblkid-tiny/hfs.c
+++ b/libblkid-tiny/hfs.c
@@ -294,11 +294,9 @@ static int probe_hfsplus(blkid_probe pr, const struct blkid_idmag *mag)
 	if (be32_to_cpu(key->parent_id) != HFSPLUS_POR_CNID)
 		return 0;
 
-#if 0
 	blkid_probe_set_utf8label(pr, key->unicode,
 			be16_to_cpu(key->unicode_len) * 2,
 			BLKID_ENC_UTF16BE);
-#endif
 
 	return 0;
 }
diff --git a/libblkid-tiny/ntfs.c b/libblkid-tiny/ntfs.c
index 93c1d88..3a9d5cb 100644
--- a/libblkid-tiny/ntfs.c
+++ b/libblkid-tiny/ntfs.c
@@ -82,13 +82,11 @@ enum {
 static int probe_ntfs(blkid_probe pr, const struct blkid_idmag *mag)
 {
 	struct ntfs_super_block *ns;
-#if 0
 	struct master_file_table_record *mft;
-#endif
 
 	uint32_t sectors_per_cluster, mft_record_size;
 	uint16_t sector_size;
-	uint64_t nr_clusters, off; //, attr_off;
+	uint64_t nr_clusters, off, attr_off;
 	unsigned char *buf_mft;
 
 	ns = blkid_probe_get_sb(pr, mag, struct ntfs_super_block);
@@ -174,7 +172,6 @@ static int probe_ntfs(blkid_probe pr, const struct blkid_idmag *mag)
 	if (memcmp(buf_mft, "FILE", 4))
 		return 1;
 
-#if 0
 	mft = (struct master_file_table_record *) buf_mft;
 	attr_off = le16_to_cpu(mft->attrs_offset);
 
@@ -204,7 +201,6 @@ static int probe_ntfs(blkid_probe pr, const struct blkid_idmag *mag)
 
 		attr_off += attr_len;
 	}
-#endif
 
 	blkid_probe_sprintf_uuid(pr,
 			(unsigned char *) &ns->volume_serial,
-- 
2.20.1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
