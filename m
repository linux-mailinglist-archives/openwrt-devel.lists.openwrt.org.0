Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 254451C187F
	for <lists+openwrt-devel@lfdr.de>; Fri,  1 May 2020 16:56:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=owxyrmPJi5S9nX8UatllhSmhFya80jVh0UbllGGQw1U=; b=NijKMYf5kiT1LsWrkRCAl/aVu
	MXdWwTw8/IB/T0S54Tvrdl1LWsrp0zoH86Z6ymxe/63O/buKv6XhAoppYj9bDtkvD+Pzl5pCBNu6G
	fk2LnMVXfHSgRS5J3KcMCZDXCHoFwvHs5dzmlucS3tovtAa3qJGMuvXtnl/IK/nbNcQWKy2mpXbJI
	vupwKBNkb9eFewwdj2Wvlaum0U5y6DgorXrsSWjjHiGE08pXFrbN1jLdB8oH0jYbbmJrJgRFFenUn
	8TXGU/f+NtacJnXBmpJYnmn6+HzdjX6B8ZWV6SCg7Wtx4DFSWH2Bw7+OTsQG2KnN5DzurClBj1GAy
	p5Q9kq9pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUX4Z-0005ei-GN; Fri, 01 May 2020 14:55:27 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUX4N-0004CO-Ly
 for openwrt-devel@lists.openwrt.org; Fri, 01 May 2020 14:55:20 +0000
Received: by mail-lj1-x243.google.com with SMTP id j3so2815654ljg.8
 for <openwrt-devel@lists.openwrt.org>; Fri, 01 May 2020 07:55:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=LQhQ5w4n3qo2vtdkh4KDvGMjtPTTUsovbANo+7TwZeM=;
 b=LPRxy6Lb5lSFccyt7UV41n4L21Fjc+DwKmF1E0gT4dLPjYqrlk2R5UeGTrkVmVgz6M
 vMTH/CjK1egOSSx5u+uHckbALCqwbCXsUT9jmmr4TFMImwNxuq2XwLjRwU7KTr8W5F2s
 NUjBiSumu8UELVemwP0QfsKsVzqfbhz0kYooz0qLhiJM1HYbLV5Akn9eRNuHYeRAAQRf
 UHJ4+23Dlw+104szOUrVmfVju8rqOGqWVzWRO/060//Bg7sHsWqrW6l8ewVmiHRF4ncZ
 /xVmtC9lZQKNOIvX/SXqFCf/TEZtQUs4gvTc1fBAj7VzmlcrdvUvypcrZfsADi2PcDHn
 g+Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=LQhQ5w4n3qo2vtdkh4KDvGMjtPTTUsovbANo+7TwZeM=;
 b=ugFP00ICLD3O9YtjKMexa/kX/Lh7Zltgmz6HOMavIUPTUHKq4Fy8cECS/YO39SsT6J
 Sj5WgZd6DCb8jGFXm/h32ammAPZyPzn0XqHKBcCarHro6HgusMwUceAYaY7+zCua3QG3
 mabjrUxuUBpsp8zno/aMujArq4zLpoQruQqrGRp7noopcJRabDG0OnMo8JKvwWE6FrcC
 QliMqG5H+/clsfa1ILOkW+/wElrkVIBdESPITQnsCxVJJmMqjU7OJz+USiY+oGo9/dzz
 jtAOUIkE2paJFqin/mUzMIz4/oBln2AaNuz2cAIocSyk2ZxriS9RWPVw8EYkOatGGntX
 lC1g==
X-Gm-Message-State: AGi0PuZcs6SUGKGcQOys354sjJcTNv0E6TkfP/DVhxhjRkrKHscCHr5s
 YvkxqGVAr++QbQxa//nAhzvm3aID
X-Google-Smtp-Source: APiQypIZn1h9kpRRdvmIl3vWnM9YPfEdh3wPCkeh/1kmL7flkHd56KMvHKsKud8zsmghuMkGOMTQyg==
X-Received: by 2002:a05:651c:2046:: with SMTP id
 t6mr2409158ljo.275.1588344913168; 
 Fri, 01 May 2020 07:55:13 -0700 (PDT)
Received: from elitebook.lan (ip-194-187-74-233.konfederacka.maverick.com.pl.
 [194.187.74.233])
 by smtp.googlemail.com with ESMTPSA id j24sm2094357ljg.60.2020.05.01.07.55.12
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 01 May 2020 07:55:12 -0700 (PDT)
To: "Kenneth J. Miller" <ken@miller.ec>, openwrt-devel@lists.openwrt.org
References: <20190409180839.1815-1-ken@miller.ec>
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Message-ID: <b2e0deab-5e73-47e3-53a4-8b1b545cc0dc@gmail.com>
Date: Fri, 1 May 2020 16:55:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20190409180839.1815-1-ken@miller.ec>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_075515_771352_3D47D033 
X-CRM114-Status: GOOD (  21.10  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zajec5[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [zajec5[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH] fstools: block: make extroot mount
 preparation more robust
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 09.04.2019 20:08, Kenneth J. Miller wrote:
> The extroot mount preparation code for r/w rootfs overlay discovery, and
> determining the user-defined /etc/config/fstab location within, would only
> discover overlays residing on JFFS2 or UBIFS MTD storage.
> 
> This led to attempts at loading the uci fstab configuration without the
> required /tmp/overlay directory prefix on devices with a non-MTD r/w
> rootfs overlay, and thus failure to find any custom fstab /overlay extroot
> entries on PREINIT.
> (example: the default openwrt eMMC partition layout on the zyxel nbg6817)
> 
> Futher, with UBIFS_EXTROOT enabled (fstools package default), and no MTD
> rootfs partitions present, check_extroot would not attempt rootfs
> discovery on block devices, such as the ext4 mmcblk rootfs overlay on the
> nbg6817.
> 
> With this patch:
> 1) main_extroot now attempts to load uci fstab configuration from an
>     already mounted overlay, before defaulting to the prefix-less uci
>     config dir when no MTD rootfs partitions are detected.
> 2) check_extroot now also attempts to find rootfs partitions on block >     devices when no MTD rootfs partitions are detected.

There were some questions about this old patch on IRC so I took a moment
to review it (finally). It touches some rarely used code and there are
no enough experienced people who remember how it's supposed to work.


>   block.c | 17 +++++------------
>   1 file changed, 5 insertions(+), 12 deletions(-)
> 
> diff --git a/block.c b/block.c
> index 39212d2..3dfc4a5 100644
> --- a/block.c
> +++ b/block.c
> @@ -1301,7 +1301,7 @@ static int find_block_ubi_RO(libubi_t libubi, char *name, char *part, int plen)
>   	return err;
>   }
>   
> -#else
> +#endif
>   
>   static int find_root_dev(char *buf, int len)
>   {
> @@ -1332,8 +1332,6 @@ static int find_root_dev(char *buf, int len)
>   	return -1;
>   }
>   
> -#endif
> -
>   static int test_fs_support(const char *name)
>   {
>   	char line[128], *p;
> @@ -1363,25 +1361,20 @@ static int check_extroot(char *path)
>   	struct probe_info *pr = NULL;
>   	char devpath[32];
>   
> -#ifdef UBIFS_EXTROOT
>   	if (find_block_mtd("\"rootfs\"", devpath, sizeof(devpath))) {
>   		int err = -1;
> +#ifdef UBIFS_EXTROOT
>   		libubi_t libubi;
>   
>   		libubi = libubi_open();
>   		err = find_block_ubi_RO(libubi, "rootfs", devpath, sizeof(devpath));
>   		libubi_close(libubi);
> -		if (err)
> -			return -1;
> -	}
> -#else
> -	if (find_block_mtd("\"rootfs\"", devpath, sizeof(devpath))) {
> -		if (find_root_dev(devpath, sizeof(devpath))) {
> +#endif
> +		if (err && find_root_dev(devpath, sizeof(devpath))) {
>   			ULOG_ERR("extroot: unable to determine root device\n");
>   			return -1;
>   		}
>   	}
> -#endif
>   
>   	list_for_each_entry(pr, &devices, list) {
>   		if (!strcmp(pr->dev, devpath)) {
> @@ -1585,7 +1578,7 @@ static int main_extroot(int argc, char **argv)
>          }
>   #endif
>   
> -	return mount_extroot(NULL);
> +	return mount_extroot("/tmp/overlay");

Did you consider consequences of this change? This breaks reading
/etc/config/fstab from "rootfs" partition. You need to handle your
case properly (carefully). Please don't suggest random change that
just happen to work for your scenario.

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
