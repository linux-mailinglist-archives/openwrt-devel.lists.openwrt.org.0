Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 845EE17CF5A
	for <lists+openwrt-devel@lfdr.de>; Sat,  7 Mar 2020 17:58:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:
	Content-Type:MIME-Version:References:Message-ID:In-Reply-To:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=55Z7CuOmSO9NFrtyuwFrPIlF2w2DQOwQ4fUWeBtjMFE=; b=DAy4l2BfsYUHyc5nQh9eekaEF
	5P+QDny2wgJqmw2GVn1uggEhPcy2BMv87egn6qcoYNca6ydiKYHUSy5zqnDs9EyERtND+/ic9WaAg
	kdzoPDJCvmvQearpcW9Ct8X4dpE4Bj9HPcVyqHqbnn5C0oCW/fT35JP0WkDdhhhjvjrFDUQs887yd
	jkSWiHdkSCCnn29jFNj5qEVFhg7AyAMHs3OqJPMOent2fmwe2UI5AbecXAC7Y/HEL17LwBkZX2HKg
	QnZgNFTPVEoYYM+bra+6BaUpF1hF/Z106SBY3P6kJBAXj+HMR5Nw2fdX0v1cy3JDUQyGP+4r+dlS5
	2QWXfyVxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAcmW-0007Xt-33; Sat, 07 Mar 2020 16:58:32 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAcmP-0007XR-42
 for openwrt-devel@lists.openwrt.org; Sat, 07 Mar 2020 16:58:27 +0000
Received: by mail-wm1-x342.google.com with SMTP id n8so1669457wmc.4
 for <openwrt-devel@lists.openwrt.org>; Sat, 07 Mar 2020 08:58:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :mime-version; bh=5zhELyYZmYlnpRTV9PnaHUhL5dEa4E6UUOY5A9kELQY=;
 b=l4NmIG+b/PVWU4HGhb8b+UdhiytR0IHHE3Ac1ZAvAwp3OL1jY6vX10dJupeUOVsYtt
 LGcdouBix+AVcP/CHjU/7eEkP+wlt9kPgC7muS0QC8FXS4gjsApSgiZUT0Zm+nVeCa2i
 E5ndChG5Xg+Ppv1iNxkL/YslxQTSuGJnYYNmA7m1BNBH/TE7QtVmYsIaGNM2t2XpgnfX
 ClGWDGwQxDsEo01rNm4Ef2NnHkVdfvBUzP82vP0CJIIV1arJuYeYXOiTRyFBPAvQDgwr
 FV1tg72siiw+5NKR/82bOkmaB6jS9B2mSL/C6Q+BT+mca8xsofDuQEEcawx91cSGdYP0
 k9qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:mime-version;
 bh=5zhELyYZmYlnpRTV9PnaHUhL5dEa4E6UUOY5A9kELQY=;
 b=kPnt+ZnA6LMTFZNSwsjTCM5vQ3X7nhfGU6rse7DNB8TbtAIVJb7gxzniQCOCBulLXc
 t47qOWkOqWaavAOBGGutKag/STYWlxUH9v6HXkIBjjF5CUCP4kV4MOAAlSrfqvHyQTCI
 9SnJ2RZcbSuAJu53duznAzt+xbFnow8SwvrR3UwVczQRrOA2ad1upXJC/k4JeS0ezhZH
 71Zo38v3xR36Bu4CoOEfr2IOLlWD02sHHGHvOdg1nRYo6OKi64Z7lD+srCrbSPZztzeX
 zH1eT34asgBnWxSYc4yDbdAU9RIWxuzlgfJfTHLRyQcdvdj5VwrqtLtsDiPWjejMHh6k
 u8WA==
X-Gm-Message-State: ANhLgQ2sz6dCPUz2K5BMXddW+ETlsN7+SI/xM85Ip0VhMkItfnSa2uE/
 HQth2Pul+M/s/2e8HlFcwCM=
X-Google-Smtp-Source: ADFU+vvXgENOYOjKj2KhGX5RtKocliWOYm+QUSvolG8NwvE/tnjKm8u28EOXpAg47rVBgCNM61sdgg==
X-Received: by 2002:a7b:cbc9:: with SMTP id n9mr10592767wmi.89.1583600301866; 
 Sat, 07 Mar 2020 08:58:21 -0800 (PST)
Received: from gatosaldo (net-31-27-176-207.cust.vodafonedsl.it.
 [31.27.176.207])
 by smtp.gmail.com with ESMTPSA id i67sm31646103wri.50.2020.03.07.08.58.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 07 Mar 2020 08:58:21 -0800 (PST)
Date: Sat, 7 Mar 2020 17:58:19 +0100 (CET)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-X-Sender: mrkiko@localhost.localdomain
To: Piotr Dymacz <pepe2k@gmail.com>
In-Reply-To: <6fed6fd3-271f-5d78-978c-63e76bef7156@gmail.com>
Message-ID: <alpine.LNX.2.21.99999.382.2003071756580.18702@localhost.localdomain>
References: <20200302125820.12353-1-ynezz@true.cz>
 <6fed6fd3-271f-5d78-978c-63e76bef7156@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323328-466247299-1583600301=:18702"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_085825_192536_7BABD755 
X-CRM114-Status: GOOD (  16.21  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mrkiko.rs[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 1.7 MALFORMED_FREEMAIL     Bad headers on message from free email
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
 =?ISO-8859-15?Q?Petr_=A6tetiar?= <ynezz@true.cz>,
 openwrt-devel@lists.openwrt.org
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-466247299-1583600301=:18702
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8BIT

Hello guys!
why can't we revert this patch right now, while working out what's goin on?
thank you! and sorry for the insistence.

Enrico


On Fri, 6 Mar 2020, Piotr Dymacz wrote:

> Date: Fri, 6 Mar 2020 09:09:15
> From: Piotr Dymacz <pepe2k@gmail.com>
> To: Petr Štetiar <ynezz@true.cz>, openwrt-devel@lists.openwrt.org
> Cc: Rafał Miłecki <rafal@milecki.pl>
> Subject: Re: [OpenWrt-Devel] [PATCH] Revert
>     "kernel: rewrite run_parsers_by_type() to use add_mtd_partitions()"
> 
> Hi Petr, Rafał,
>
> On 02.03.2020 13:58, Petr Štetiar wrote:
>> This reverts commit 15a0701cdde8eeae2a54880b813cdb8cdc09a384.
>> 
>> Seems like this patch has introduced some regressions on the ramips
>> target which is still on 4.14 kernel as this commit touches only 4.14
>> kernel patches.
>>
>>   jffs2: Erase at 0x00378000 failed immediately: errno -22
>>   jffs2: Node CRC ffffffff != calculated CRC f09e7845 for node at 00c08510
>> 
>> Ref: FS#2837, FS#2862
>
> Fixes also very serious (erase of ART) FS#2864.
> Ref: https://bugs.openwrt.org/index.php?do=details&task_id=2864
>
> -- 
> Cheers,
> Piotr
>
>> Ref: 
> https://forum.openwrt.org/t/jffs2-partition-not-save-new-package-installation-or-save-settings
>> Cc: Rafał Miłecki <rafal@milecki.pl>
>> Signed-off-by: Petr Štetiar <ynezz@true.cz>
>> ---
>>   ...for-different-partition-parser-types.patch | 33 ++++++++++++-------
>>   ...arsers-for-rootfs-and-firmware-split.patch |  4 +--
>>   .../404-mtd-add-more-helper-functions.patch   |  2 +-
>>   3 files changed, 24 insertions(+), 15 deletions(-)
>> 
>> diff --git 
> a/target/linux/generic/pending-4.14/401-mtd-add-support-for-different-partition-parser-types.patch 
> b/target/linux/generic/pending-4.14/401-mtd-add-support-for-different-partition-parser-types.patch
>> index ae13112ef6d0..057d47368443 100644
>> --- 
> a/target/linux/generic/pending-4.14/401-mtd-add-support-for-different-partition-parser-types.patch
>> +++ 
> b/target/linux/generic/pending-4.14/401-mtd-add-support-for-different-partition-parser-types.patch
>> @@ -20,35 +20,44 @@ Signed-off-by: Gabor Juhos <juhosg@openwrt.org>
>>
>>    /*
>>     * Given a pointer to the MTD object in the mtd_part structure, we can 
> retrieve
>> -@@ -762,6 +766,27 @@ int mtd_del_partition(struct mtd_info *m
>> +@@ -762,6 +766,36 @@ int mtd_del_partition(struct mtd_info *m
>>    }
>>    EXPORT_SYMBOL_GPL(mtd_del_partition);
>>
>>   +static int
>>   +run_parsers_by_type(struct mtd_part *slave, enum mtd_parser_type type)
>>   +{
>> -+	struct mtd_partitions pparts = { };
>> -+	int err;
>> ++	struct mtd_partition *parts;
>> ++	int nr_parts;
>> ++	int i;
>>   +
>> -+	pparts.nr_parts = parse_mtd_partitions_by_type(&slave->mtd, type,
>> -+						       &pparts.parts, NULL);
>> -+	if (pparts.nr_parts <= 0)
>> -+		return pparts.nr_parts;
>> ++	nr_parts = parse_mtd_partitions_by_type(&slave->mtd, type, (const 
> struct mtd_partition **)&parts,
>> ++						NULL);
>> ++	if (nr_parts <= 0)
>> ++		return nr_parts;
>>   +
>> -+	if (WARN_ON(!pparts.parts))
>> ++	if (WARN_ON(!parts))
>>   +		return 0;
>>   +
>> -+	err = add_mtd_partitions(&slave->mtd, pparts.parts, pparts.nr_parts);
>> ++	for (i = 0; i < nr_parts; i++) {
>> ++		/* adjust partition offsets */
>> ++		parts[i].offset += slave->offset;
>>   +
>> -+	kfree(pparts.parts);
>> ++		mtd_add_partition(slave->parent,
>> ++				  parts[i].name,
>> ++				  parts[i].offset,
>> ++				  parts[i].size);
>> ++	}
>> ++
>> ++	kfree(parts);
>>   +
>> -+	return err ? err : pparts.nr_parts;
>> ++	return nr_parts;
>>   +}
>>   +
>>    #ifdef CONFIG_MTD_SPLIT_FIRMWARE_NAME
>>    #define SPLIT_FIRMWARE_NAME	CONFIG_MTD_SPLIT_FIRMWARE_NAME
>>    #else
>> -@@ -1147,6 +1172,61 @@ void mtd_part_parser_cleanup(struct mtd_
>> +@@ -1147,6 +1181,61 @@ void mtd_part_parser_cleanup(struct mtd_
>>    	}
>>    }
>> 
>> diff --git 
> a/target/linux/generic/pending-4.14/402-mtd-use-typed-mtd-parsers-for-rootfs-and-firmware-split.patch 
> b/target/linux/generic/pending-4.14/402-mtd-use-typed-mtd-parsers-for-rootfs-and-firmware-split.patch
>> index 149c328ac4d5..2cc06dd463b3 100644
>> --- 
> a/target/linux/generic/pending-4.14/402-mtd-use-typed-mtd-parsers-for-rootfs-and-firmware-split.patch
>> +++ 
> b/target/linux/generic/pending-4.14/402-mtd-use-typed-mtd-parsers-for-rootfs-and-firmware-split.patch
>> @@ -10,7 +10,7 @@ Signed-off-by: Gabor Juhos <juhosg@openwrt.org>
>>
>>   --- a/drivers/mtd/mtdpart.c
>>   +++ b/drivers/mtd/mtdpart.c
>> -@@ -795,6 +795,7 @@ run_parsers_by_type(struct mtd_part *sla
>> +@@ -804,6 +804,7 @@ run_parsers_by_type(struct mtd_part *sla
>>
>>    static void split_firmware(struct mtd_info *master, struct mtd_part 
> *part)
>>    {
>> @@ -18,7 +18,7 @@ Signed-off-by: Gabor Juhos <juhosg@openwrt.org>
>>    }
>>
>>    static void mtd_partition_split(struct mtd_info *master, struct mtd_part 
> *part)
>> -@@ -804,6 +805,12 @@ static void mtd_partition_split(struct m
>> +@@ -813,6 +814,12 @@ static void mtd_partition_split(struct m
>>    	if (rootfs_found)
>>    		return;
>> 
>> diff --git 
> a/target/linux/generic/pending-4.14/404-mtd-add-more-helper-functions.patch 
> b/target/linux/generic/pending-4.14/404-mtd-add-more-helper-functions.patch
>> index d1a32872af21..7b481ffb47a5 100644
>> --- 
> a/target/linux/generic/pending-4.14/404-mtd-add-more-helper-functions.patch
>> +++ 
> b/target/linux/generic/pending-4.14/404-mtd-add-more-helper-functions.patch
>> @@ -11,7 +11,7 @@ Signed-off-by: Gabor Juhos <juhosg@openwrt.org>
>>
>>   --- a/drivers/mtd/mtdpart.c
>>   +++ b/drivers/mtd/mtdpart.c
>> -@@ -1251,6 +1251,24 @@ int mtd_is_partition(const struct mtd_in
>> +@@ -1260,6 +1260,24 @@ int mtd_is_partition(const struct mtd_in
>>    }
>>    EXPORT_SYMBOL_GPL(mtd_is_partition);
>> 
>> 
>> _______________________________________________
>> openwrt-devel mailing list
>> openwrt-devel@lists.openwrt.org
>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>> 
>
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>
--8323328-466247299-1583600301=:18702
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--8323328-466247299-1583600301=:18702--

