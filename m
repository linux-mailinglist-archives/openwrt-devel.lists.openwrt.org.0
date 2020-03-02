Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68D7F175B77
	for <lists+openwrt-devel@lfdr.de>; Mon,  2 Mar 2020 14:23:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:
	Content-Type:MIME-Version:References:Message-ID:In-Reply-To:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ofzjtw1NtVpVrkvoxk7B3vJQ5KBmBF4rQRhzpkAHfEY=; b=B+dig9c1ANgicOcp3bEMpxqce
	l0RLkapJ1pygYB1Ssxyo4yQ887h/krurmHjew+knO06Bwo4KH+XLKC85ES7LvESwlcGRdapNipEmE
	T96ZrpyziFG2OrIHE9X7N0xk74XJSdG2To2EYQqMyW0NISY7aDMC8N4sx8MS5Eks2tkSAlypWHEx4
	fM03zC3vmdgSkFpitucXtfmupE3TfJTCgX99MDBX3sabWrz2FAuIHC3SY3Qj9O2mcgku91qz+lcFX
	3wu3S0n01W6BHwIJF8iLZ6RO/laFF19LRHbJCG7V0Wq/vYO9DRdLPGahJs6JmGeMxkW+HLh+10lH/
	9kvdkcWKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8l2I-0004Su-7Q; Mon, 02 Mar 2020 13:23:06 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8l2A-0004SP-1n
 for openwrt-devel@lists.openwrt.org; Mon, 02 Mar 2020 13:22:59 +0000
Received: by mail-wr1-x442.google.com with SMTP id j16so12598856wrt.3
 for <openwrt-devel@lists.openwrt.org>; Mon, 02 Mar 2020 05:22:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :mime-version; bh=ZZUJKPimWh7pF/xwNOrAsRW1VHWe6c3Ec6UQPnQ98gs=;
 b=udqNimndbJrCkq/RPMXcoOPgTT3/OPAwBkxmZEtjlS/o/+zYqOXRjGEtdathC5OrVr
 j+CQfZMsJvjt14ph7PfZaaBmHx5XoqPU6fTltIVxFfPZRew/GPQUKwtvcLpMtms/4QE0
 m2uA/2zO9ALYmhMWsBloNRdCeJsXBb0zn397qvXq535cl1tU2IVah3FsRb50EWNjgRpM
 WYbUXi2cwaHJ3x49P1p/ew/ai8L8wv5r74AU2HE1assSeV2ZmlVfo4Cv7V8YneIkc5pl
 F+p6atcq/pu3GEQ4vWxlGFRl/EE7keSKZUHiuClEQfYxPZqo70BHXiLCnGB4HhzqKUnO
 QrPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:mime-version;
 bh=ZZUJKPimWh7pF/xwNOrAsRW1VHWe6c3Ec6UQPnQ98gs=;
 b=qWl63C98e9atsOoQmsw8IVS3c53YXy6E0LOhbbE9xwUkwMYL0LrPyP+l7D3rC1s13p
 OzEd1MYZRaZjdFYFwRIkQJk5NE+nB7jYEHuj84PQnZPyLfOUE4WGcSSQQJjrBFvAjXUd
 MNcQBsZc2U3zKs2SO9dUn8f0GhySPIx74rWxnPoWxkxuQXL/W72RDGrQZdwudqdBnMcd
 Yi22SP9KjwWQ0w1Q9NVS6C7a/juabMaYrHRCmv8RMlc/2HJo4cqROf2LIw4f9rw3jfzW
 G9L1rwQq8+H2VpFerzUxBf12mDokvuLuavycfqaoDbA8WQ9kYIzCLr79JtLSv4rPtG/R
 Sd+Q==
X-Gm-Message-State: APjAAAUX+eExQH1uJ6L6UEASBAn/KgL34uVOKCJ130ifhjZmWMLO6zL+
 exXaZvGz3UCIx0rFEQoDcKY=
X-Google-Smtp-Source: APXvYqwln4PmogePo4h74+gqio+vL0qIA4szo9f2vDBiT7qWL87evjKvJVGH69n/n1tqaLAlCRRF1Q==
X-Received: by 2002:a05:6000:14d:: with SMTP id
 r13mr22098881wrx.63.1583155374581; 
 Mon, 02 Mar 2020 05:22:54 -0800 (PST)
Received: from mStation (host224-250-dynamic.8-87-r.retail.telecomitalia.it.
 [87.8.250.224])
 by smtp.gmail.com with ESMTPSA id n8sm26823344wrm.46.2020.03.02.05.22.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 05:22:53 -0800 (PST)
Date: Mon, 2 Mar 2020 14:22:51 +0100 (CET)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-X-Sender: mrkiko@mStation.localdomain
To: =?ISO-8859-15?Q?Petr_=A6tetiar?= <ynezz@true.cz>
In-Reply-To: <20200302125820.12353-1-ynezz@true.cz>
Message-ID: <alpine.LNX.2.21.99999.353.2003021417570.1103162@mStation.localdomain>
References: <20200302125820.12353-1-ynezz@true.cz>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-133567131-1583155373=:1103162"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_052258_120181_95287362 
X-CRM114-Status: GOOD (  18.54  )
X-Spam-Score: 1.2 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mrkiko.rs[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.4 MALFORMED_FREEMAIL     Bad headers on message from free email
 service
Subject: Re: [OpenWrt-Devel] [PATCH] Revert "kernel: rewrite
 run_parsers_by_type() to use add_mtd_partitions()"
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
Cc: =?ISO-8859-2?Q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>,
 Yousong Zhou <yszhou4tech@gmail.com>, Neil Brown <neilb@suse.de>,
 openwrt-devel@lists.openwrt.org, DENG Qingfang <dengqf6@mail2.sysu.edu.cn>
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-133567131-1583155373=:1103162
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8BIT

Ok, reverting this commit fixes my issue. So please guys, do rever this.



On Mon, 2 Mar 2020, Petr Štetiar wrote:

> Date: Mon, 2 Mar 2020 13:58:20
> From: Petr Štetiar <ynezz@true.cz>
> To: openwrt-devel@lists.openwrt.org
> Cc: Rafał Miłecki <rafal@milecki.pl>, Petr Štetiar <ynezz@true.cz>
> Subject: [OpenWrt-Devel] [PATCH] Revert
>     "kernel: rewrite run_parsers_by_type() to use add_mtd_partitions()"
> 
> This reverts commit 15a0701cdde8eeae2a54880b813cdb8cdc09a384.
>
> Seems like this patch has introduced some regressions on the ramips
> target which is still on 4.14 kernel as this commit touches only 4.14
> kernel patches.
>
> jffs2: Erase at 0x00378000 failed immediately: errno -22
> jffs2: Node CRC ffffffff != calculated CRC f09e7845 for node at 00c08510
>
> Ref: FS#2837, FS#2862
> Ref: https://forum.openwrt.org/t/jffs2-partition-not-save-new-package-installation-or-save-settings
> Cc: Rafał Miłecki <rafal@milecki.pl>
> Signed-off-by: Petr Štetiar <ynezz@true.cz>
> ---
> ...for-different-partition-parser-types.patch | 33 ++++++++++++-------
> ...arsers-for-rootfs-and-firmware-split.patch |  4 +--
> .../404-mtd-add-more-helper-functions.patch   |  2 +-
> 3 files changed, 24 insertions(+), 15 deletions(-)
>
> diff --git a/target/linux/generic/pending-4.14/401-mtd-add-support-for-different-partition-parser-types.patch b/target/linux/generic/pending-4.14/401-mtd-add-support-for-different-partition-parser-types.patch
> index ae13112ef6d0..057d47368443 100644
> --- a/target/linux/generic/pending-4.14/401-mtd-add-support-for-different-partition-parser-types.patch
> +++ b/target/linux/generic/pending-4.14/401-mtd-add-support-for-different-partition-parser-types.patch
> @@ -20,35 +20,44 @@ Signed-off-by: Gabor Juhos <juhosg@openwrt.org>
>
>  /*
>   * Given a pointer to the MTD object in the mtd_part structure, we can retrieve
> -@@ -762,6 +766,27 @@ int mtd_del_partition(struct mtd_info *m
> +@@ -762,6 +766,36 @@ int mtd_del_partition(struct mtd_info *m
>  }
>  EXPORT_SYMBOL_GPL(mtd_del_partition);
> 
> +static int
> +run_parsers_by_type(struct mtd_part *slave, enum mtd_parser_type type)
> +{
> -+	struct mtd_partitions pparts = { };
> -+	int err;
> ++	struct mtd_partition *parts;
> ++	int nr_parts;
> ++	int i;
> +
> -+	pparts.nr_parts = parse_mtd_partitions_by_type(&slave->mtd, type,
> -+						       &pparts.parts, NULL);
> -+	if (pparts.nr_parts <= 0)
> -+		return pparts.nr_parts;
> ++	nr_parts = parse_mtd_partitions_by_type(&slave->mtd, type, (const struct mtd_partition **)&parts,
> ++						NULL);
> ++	if (nr_parts <= 0)
> ++		return nr_parts;
> +
> -+	if (WARN_ON(!pparts.parts))
> ++	if (WARN_ON(!parts))
> +		return 0;
> +
> -+	err = add_mtd_partitions(&slave->mtd, pparts.parts, pparts.nr_parts);
> ++	for (i = 0; i < nr_parts; i++) {
> ++		/* adjust partition offsets */
> ++		parts[i].offset += slave->offset;
> +
> -+	kfree(pparts.parts);
> ++		mtd_add_partition(slave->parent,
> ++				  parts[i].name,
> ++				  parts[i].offset,
> ++				  parts[i].size);
> ++	}
> ++
> ++	kfree(parts);
> +
> -+	return err ? err : pparts.nr_parts;
> ++	return nr_parts;
> +}
> +
>  #ifdef CONFIG_MTD_SPLIT_FIRMWARE_NAME
>  #define SPLIT_FIRMWARE_NAME	CONFIG_MTD_SPLIT_FIRMWARE_NAME
>  #else
> -@@ -1147,6 +1172,61 @@ void mtd_part_parser_cleanup(struct mtd_
> +@@ -1147,6 +1181,61 @@ void mtd_part_parser_cleanup(struct mtd_
>  	}
>  }
> 
> diff --git a/target/linux/generic/pending-4.14/402-mtd-use-typed-mtd-parsers-for-rootfs-and-firmware-split.patch b/target/linux/generic/pending-4.14/402-mtd-use-typed-mtd-parsers-for-rootfs-and-firmware-split.patch
> index 149c328ac4d5..2cc06dd463b3 100644
> --- a/target/linux/generic/pending-4.14/402-mtd-use-typed-mtd-parsers-for-rootfs-and-firmware-split.patch
> +++ b/target/linux/generic/pending-4.14/402-mtd-use-typed-mtd-parsers-for-rootfs-and-firmware-split.patch
> @@ -10,7 +10,7 @@ Signed-off-by: Gabor Juhos <juhosg@openwrt.org>
> 
> --- a/drivers/mtd/mtdpart.c
> +++ b/drivers/mtd/mtdpart.c
> -@@ -795,6 +795,7 @@ run_parsers_by_type(struct mtd_part *sla
> +@@ -804,6 +804,7 @@ run_parsers_by_type(struct mtd_part *sla
>
>  static void split_firmware(struct mtd_info *master, struct mtd_part *part)
>  {
> @@ -18,7 +18,7 @@ Signed-off-by: Gabor Juhos <juhosg@openwrt.org>
>  }
>
>  static void mtd_partition_split(struct mtd_info *master, struct mtd_part *part)
> -@@ -804,6 +805,12 @@ static void mtd_partition_split(struct m
> +@@ -813,6 +814,12 @@ static void mtd_partition_split(struct m
>  	if (rootfs_found)
>  		return;
> 
> diff --git a/target/linux/generic/pending-4.14/404-mtd-add-more-helper-functions.patch b/target/linux/generic/pending-4.14/404-mtd-add-more-helper-functions.patch
> index d1a32872af21..7b481ffb47a5 100644
> --- a/target/linux/generic/pending-4.14/404-mtd-add-more-helper-functions.patch
> +++ b/target/linux/generic/pending-4.14/404-mtd-add-more-helper-functions.patch
> @@ -11,7 +11,7 @@ Signed-off-by: Gabor Juhos <juhosg@openwrt.org>
> 
> --- a/drivers/mtd/mtdpart.c
> +++ b/drivers/mtd/mtdpart.c
> -@@ -1251,6 +1251,24 @@ int mtd_is_partition(const struct mtd_in
> +@@ -1260,6 +1260,24 @@ int mtd_is_partition(const struct mtd_in
>  }
>  EXPORT_SYMBOL_GPL(mtd_is_partition);
> 
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
--8323329-133567131-1583155373=:1103162
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--8323329-133567131-1583155373=:1103162--

