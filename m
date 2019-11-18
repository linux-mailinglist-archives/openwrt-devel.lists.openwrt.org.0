Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A40C100466
	for <lists+openwrt-devel@lfdr.de>; Mon, 18 Nov 2019 12:39:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jZdqtHfLrc0J4MlSfL4DA/xI4dvLgzrhRO72yitjl4M=; b=Q0//tI/dU0qDqhbP5AHm84SC9
	PY7iMJR8E+Roa+Yf3E8Q8mEdgWJv5AtDs/2yqrE9wO4WnhSU7tNqWNAAYJYKe1KEZJVfEBY1+ha5N
	O1tQE6PP40/ariKP3v46XrlXx1GS834waviWcQUt8lY69A2T0ZnH6axsqFOb83oOhR4WbfQSyDSyB
	Gmiocew4kUAL+vc/EtC3BHX5rQCos6lbjo7gNBgUtGcWQ/mmZXlgFYJsJ+/r0h4fm/zNOgYoo7meG
	QwA3vZewcXj5u+H422Gvjq20Q1rBtl2BQHVdLagWhG+y8EY4r/+6/CVIgrefGgUAdhiPiiALBMKGP
	AULJyz5CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWfNq-0001AJ-Ji; Mon, 18 Nov 2019 11:39:54 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWfIg-0003ZU-IW
 for openwrt-devel@lists.openwrt.org; Mon, 18 Nov 2019 11:34:36 +0000
Received: from p5dcfbb96.dip0.t-ipconnect.de ([93.207.187.150]
 helo=[192.168.45.104])
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1iWfIe-0007j7-H6; Mon, 18 Nov 2019 12:34:32 +0100
To: Russell Senior <russell@personaltelco.net>, openwrt-devel@lists.openwrt.org
References: <87pnhp77om.fsf@husum.klickitat.com>
From: John Crispin <john@phrozen.org>
Message-ID: <9d8dede1-a66a-b042-0977-ebb48ceeca27@phrozen.org>
Date: Mon, 18 Nov 2019 12:34:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <87pnhp77om.fsf@husum.klickitat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_033434_797107_941E5C42 
X-CRM114-Status: GOOD (  14.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
Subject: Re: [OpenWrt-Devel] [PATCH] mediatek: remove extraneous "+" typo in
 mt7629 kernel config
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
Cc: Hauke Mehrtens <hauke@hauke-m.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 18/11/2019 12:19, Russell Senior wrote:
> 
> As noted by Hauke in IRC.
> Introduced in commit 50735df7b238ce886c6f718b3e9437a09c8efb28
> 
> Cc: John Crispin <john@phrozen.org>
> Cc: Hauke Mehrtens <hauke@hauke-m.de>
> Signed-off-by: Russell Senior <russell@personaltelco.net>
> ---
>   target/linux/mediatek/mt7629/config-4.19 | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/target/linux/mediatek/mt7629/config-4.19 b/target/linux/mediatek/mt7629/config-4.19
> index f32d9d1919..2dab4e393d 100644
> --- a/target/linux/mediatek/mt7629/config-4.19
> +++ b/target/linux/mediatek/mt7629/config-4.19
> @@ -235,7 +235,7 @@ CONFIG_MTD_NAND=y
>   CONFIG_MTD_NAND_CORE=y
>   CONFIG_MTD_NAND_ECC=y
>   CONFIG_MTD_NAND_MTK=y
> -+CONFIG_MTD_SPI_NAND=y
> +CONFIG_MTD_SPI_NAND=y
>   CONFIG_MTD_SPI_NOR=y
>   CONFIG_MTD_SPLIT_FIRMWARE=y
>   CONFIG_MTD_SPLIT_FIT_FW=y
> 

https://git.openwrt.org/?p=openwrt/openwrt.git;a=commit;h=d4f1937a21ae81194918bc1eb5a91118e0ff6267

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
