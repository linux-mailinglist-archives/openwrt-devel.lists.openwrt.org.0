Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23C5FE59AF
	for <lists+openwrt-devel@lfdr.de>; Sat, 26 Oct 2019 12:55:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w7bjMzEWEfpHW3QoLAL3htliL75sEIslVcVvWYWnnGE=; b=f26CnL+VuojWfO
	ytMj/YjOS6yUdifJZKMaZiwJTbqxrISj60z+ifoFGA09lJ2cPXp1ApPHxScpUlH07bq9rAZrlFZoc
	mvRM+n3cmNESq1ZG78rvtnDisDBbkZDtp7pHgZOfyTygyEBY16Kw9qnat6IJ+OiB3rGDWiqgKt8JY
	FT1iagy1dCzCHP7W2QlRZVAJBi0OOQZwUPv/r1vzcUwmyIlU72CXqI1cQ7XruBGQrDImiEpp0uJmO
	1jLO0bc3cqc6QIYkpjEiSXly+8L2RM7ylWLgz2JP+ve4DT5TwR11bR6r/Q2LS6ZvjIS/QMJd+lSn5
	j/+khq6wO/Ihbn/1NXZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOJj1-0007Od-K2; Sat, 26 Oct 2019 10:55:15 +0000
Received: from mx4.wp.pl ([212.77.101.12])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOJit-00064I-OC
 for openwrt-devel@lists.openwrt.org; Sat, 26 Oct 2019 10:55:09 +0000
Received: (wp-smtpd smtp.wp.pl 27731 invoked from network);
 26 Oct 2019 12:54:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wp.pl; s=1024a;
 t=1572087294; bh=A2QpK5DHwSKuGJ7X2zdMRD8tLtEO51RwYWauTP3PiuE=;
 h=From:To:Cc:Subject;
 b=ogS02bmEP7wawTlMvwnMFminE9oeduy6peR8KoGdbcHGQvDVX5QMdDHYLEzI36O9Z
 ySAVUN7cqTsxpSi+GTf6gsCCeACTiDjctBxAQ70dWEDCQbcwa6EMxzoA89iWMmZLuP
 0RInhQtLvaegAWRF4xwooizokm4EKlFDyjXkS44U=
Received: from 89-79-49-72.dynamic.chello.pl (HELO kosmio.komorska)
 (michal.cieslakiewicz@wp.pl@[89.79.49.72])
 (envelope-sender <michal.cieslakiewicz@wp.pl>)
 by smtp.wp.pl (WP-SMTPD) with ECDHE-RSA-AES256-GCM-SHA384 encrypted SMTP
 for <lede@allycomm.com>; 26 Oct 2019 12:54:54 +0200
Date: Sat, 26 Oct 2019 12:54:52 +0200
From: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
To: Jeff Kletsky <lede@allycomm.com>, Jeff Kletsky <git-commits@allycomm.com>
Message-ID: <20191026125452.343eb9ed@kosmio.komorska>
In-Reply-To: <20191025035501.3063-3-lede@allycomm.com>
References: <20191025035501.3063-1-lede@allycomm.com>
 <20191025035501.3063-3-lede@allycomm.com>
X-Mailer: Claws Mail 3.17.1 (GTK+ 2.24.32; x86_64-slackware-linux-gnu)
MIME-Version: 1.0
X-WP-MailID: 5c5affaaa441ce216eead141f2daf060
X-WP-AV: skaner antywirusowy Poczty Wirtualnej Polski
X-WP-SPAM: NO 000000A [McPk]                               
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191026_035508_153581_44930900 
X-CRM114-Status: UNSURE (   6.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.77.101.12 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (michal.cieslakiewicz[at]wp.pl)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
Subject: Re: [OpenWrt-Devel] [PATCH 2/2] ath79: Prepare NAND subtarget for
 upstream support of SPI NAND
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Thu, 24 Oct 2019 20:55:01 -0700
Jeff Kletsky <lede@allycomm.com> wrote:

> 
> Cc: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>
> 
> [...]
>
> diff --git a/target/linux/ath79/nand/config-default
> b/target/linux/ath79/nand/config-default index c8114a4985..695afdce88
> 100644 --- a/target/linux/ath79/nand/config-default
> +++ b/target/linux/ath79/nand/config-default
> @@ -1,15 +1,26 @@
> -CONFIG_BCH=y
> +CONFIG_BLK_MQ_PCI=y
>  CONFIG_MTD_NAND=y
>  CONFIG_MTD_NAND_AR934X=y
> -CONFIG_MTD_NAND_BCH=y
> +CONFIG_MTD_NAND_CORE=y
>  CONFIG_MTD_NAND_ECC=y
> -CONFIG_MTD_NAND_ECC_BCH=y
> -CONFIG_MTD_SPINAND_MT29F=y
> -CONFIG_MTD_SPINAND_ONDIEECC=y
> +CONFIG_MTD_SPI_NAND=y
>  CONFIG_MTD_UBI=y
> +CONFIG_MTD_UBI_BLOCK=y
> +CONFIG_MTD_UBI_WL_THRESHOLD=4096
>  CONFIG_MTD_UBI_BEB_LIMIT=20
> -# CONFIG_MTD_UBI_BLOCK is not set
>  # CONFIG_MTD_UBI_FASTMAP is not set
>  # CONFIG_MTD_UBI_GLUEBI is not set
> -CONFIG_MTD_UBI_WL_THRESHOLD=4096
> -# CONFIG_UBIFS_FS is not set
> +CONFIG_OF_ADDRESS_PCI=y
> +CONFIG_OF_PCI=y
> +CONFIG_OF_PCI_IRQ=y
> +CONFIG_PCI=y
> +# CONFIG_PCI_AR71XX is not set
> +CONFIG_PCI_AR724X=y
> +CONFIG_PCI_DISABLE_COMMON_QUIRKS=y
> +CONFIG_PCI_DOMAINS=y
> +# CONFIG_PHY_AR7100_USB is not set
> +CONFIG_PHY_AR7200_USB=y
> +CONFIG_UBIFS_FS=y
> +CONFIG_UBIFS_FS_ADVANCED_COMPR=y
> +CONFIG_UBIFS_FS_LZO=y
> +CONFIG_UBIFS_FS_ZLIB=y

Hi Jeff,

Kernel config supplied here works OK with my Netgear WNDR4300 ath79/nand
support patch and provides full functionality.
I will drop 'config-default' file from my patchset and rely on your
version.

Tested-by: Michal Cieslakiewicz <michal.cieslakiewicz@wp.pl>

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
