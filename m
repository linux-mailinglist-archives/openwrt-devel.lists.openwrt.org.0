Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABB501439D4
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 Jan 2020 10:51:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Date:To:From:Message-ID:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=N+WPUR0wbNgjSY5gxxMTJkPYkCHxnA/w+CIUUVOasVw=; b=ctDSbWpKJjp2rwV3BI8q9WzCm9
	h9OOVWWmGpiaF/mQ5zaXGHRetS1a/9blKpWn8jYaHSk30mfMY4dpYSa+8Vv/KnkVQgd2nSxd2Upje
	4oCVPAcJVnZICyyYGOEBdbkGVArRWoSavHIbLlADApmbZ71kXTzS3u3uKJ+XOr/geYROJTuCeY+vX
	vtBc4sqJLn7xp3lvaG4kgwOJ2HDurJj5f1XXHVzERABYqEI10O1De5w4Dkiij+nFOfNQ5mBIWMZYx
	yxSoTglDy6QFQ+7L9vBHrZKY+MkJlDknxdP6J7BykP+AHahCg016B69UH5l/M2iKqnk7wg4xmNVly
	XJfm//bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itqCD-0007HP-Om; Tue, 21 Jan 2020 09:51:41 +0000
Received: from jax4mhob01.myregisteredsite.com ([64.69.218.81])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itqBt-000790-Sb
 for openwrt-devel@lists.openwrt.org; Tue, 21 Jan 2020 09:51:28 +0000
Received: from mailpod.hostingplatform.com
 (atl4qobmail01pod5.registeredsite.com [10.30.71.94])
 by jax4mhob01.myregisteredsite.com (8.14.4/8.14.4) with ESMTP id
 00L9pEj8002486
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=FAIL)
 for <openwrt-devel@lists.openwrt.org>; Tue, 21 Jan 2020 04:51:18 -0500
Received: (qmail 50872 invoked by uid 0); 21 Jan 2020 09:51:14 -0000
X-TCPREMOTEIP: 208.85.15.155
X-Authenticated-UID: sbrown@opensat.com
Received: from unknown (HELO 155-15-85-208.altiusbb.net)
 (sbrown@opensat.com@208.85.15.155)
 by 0 with ESMTPA; 21 Jan 2020 09:51:13 -0000
Received: from localhost (localhost [127.0.0.1])
 by 155-15-85-208.altiusbb.net (Postfix) with ESMTP id 403BB154053D;
 Tue, 21 Jan 2020 04:51:13 -0500 (EST)
X-Virus-Scanned: Debian amavisd-new at ewol.com
X-Spam-Flag: NO
X-Spam-Score: -2.9
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 tagged_above=-999 required=6.31
 tests=[ALL_TRUSTED=-1, BAYES_00=-1.9] autolearn=ham autolearn_force=no
Received: from 155-15-85-208.altiusbb.net ([127.0.0.1])
 by localhost (fl-server.ewol.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H-7q040E9Eus; Tue, 21 Jan 2020 04:51:07 -0500 (EST)
Received: from w7.lan (w7.lan [192.168.1.9])
 by 155-15-85-208.altiusbb.net (Postfix) with ESMTP id E204215404F1;
 Tue, 21 Jan 2020 04:51:06 -0500 (EST)
Message-ID: <0cf18b56d78d859f8d7bf30bccc6ce0762d35302.camel@ewol.com>
From: Steve Brown <sbrown@ewol.com>
To: Bruno Pena <brunompena@gmail.com>, openwrt-devel@lists.openwrt.org
Date: Tue, 21 Jan 2020 04:51:06 -0500
In-Reply-To: <1578138728-1256-1-git-send-email-brunompena@gmail.com>
References: <1578138728-1256-1-git-send-email-brunompena@gmail.com>
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_015122_083960_A831A6E4 
X-CRM114-Status: GOOD (  19.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [64.69.218.81 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH v2] fstools: Add support to read-only
 MTD partitions (eg. recovery images)
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

Hi Bruno,

On Sat, 2020-01-04 at 12:52 +0100, Bruno Pena wrote:
> This patch enables fstools to open read-only MTD partitions, which in
> turn also enables OpenWrt to boot from read-only partitions.
> 
> The use of read-only partitions is of special importance for WiFi-
> only
> devices, where a protected read-only recovery image can be used in
> case
> something goes wrong with the main firmware (eg. user gets locked out
> due to bad settings, flash of an unbootable dev firmware, etc).
> 
> Signed-off-by: Bruno Pena <brunompena@gmail.com>
> ---
>  libfstools/mtd.c | 19 +++++++++++++++----
>  1 file changed, 15 insertions(+), 4 deletions(-)
> 
> diff --git a/libfstools/mtd.c b/libfstools/mtd.c
> index 77c71ee..aae633e 100644
> --- a/libfstools/mtd.c
> +++ b/libfstools/mtd.c
> @@ -36,20 +36,31 @@ struct mtd_volume {
>  
>  static struct driver mtd_driver;
>  
> +static int mtd_open_device(const char *dev)
> +{
> +	int ret;
> +
> +	ret = open(dev, O_RDWR | O_SYNC);
> +	if (ret < 0)
> +		ret = open(dev, O_RDONLY);
> +
> +	return ret;
> +}
> +
>  static int mtd_open(const char *mtd, int block)
>  {
>  	FILE *fp;
>  	char dev[PATH_MAX];
> -	int i, ret, flags = O_RDWR | O_SYNC;
> +	int i, ret;
>  
>  	if ((fp = fopen("/proc/mtd", "r"))) {
>  		while (fgets(dev, sizeof(dev), fp)) {
>  			if (sscanf(dev, "mtd%d:", &i) && strstr(dev,
> mtd)) {
>  				snprintf(dev, sizeof(dev),
> "/dev/mtd%s/%d", (block ? "block" : ""), i);
> -				ret = open(dev, flags);
> +				ret = mtd_open_device(dev);
>  				if (ret < 0) {
>  					snprintf(dev, sizeof(dev),
> "/dev/mtd%s%d", (block ? "block" : ""), i);
> -					ret = open(dev, flags);
> +					ret = mtd_open_device(dev);
>  				}
>  				fclose(fp);
>  				return ret;
> @@ -58,7 +69,7 @@ static int mtd_open(const char *mtd, int block)
>  		fclose(fp);
>  	}
>  
> -	return open(mtd, flags);
> +	return mtd_open_device(mtd);
>  }
>  
>  static void mtd_volume_close(struct mtd_volume *p)


This patch and related commit de80424f706682e8bba27c60bcd2a9c1b4a5e875
break the jffs erase on my Archer a7 v5.

    [   11.787856] jffs2_scan_eraseblock(): End of filesystem marker found at 0x10000
    [   11.795357] jffs2_build_filesystem(): unlocking the mtd device...
    [   11.795390] done.
    [   11.803771] jffs2_build_filesystem(): erasing all blocks after the end marker...
    [   11.803781] jffs2: Erase at 0x009e0000 failed immediately: -EROFS. Is the sector locked?
         -------------
    [   13.138841] jffs2: Erase at 0x00010000 failed immediately: -EROFS. Is the sector locked?
    [   13.147188] done.
    [   13.149202] jffs2: notice: (487) jffs2_build_xattr_subsystem: complete building xattr subsystem, 0 of xdatum (0 unchecked, 0 orphan) and 0 of xref (0 .
    [   13.165896] mount_root: unable to set filesystem state
    [   13.171443] mount_root: switching to jffs2 overlay
    [   13.201867] overlayfs: failed to resolve '/overlay/upper': -2
    [   13.223939] mount_root: mount failed: lowerdir=/,upperdir=/overlay/upper,workdir=/overlay/work, options No such device
    [   13.235145] mount_root: switching to jffs2 failed - fallback to ramoverlay

Verified by reverting de80424f7. 

Steve



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
