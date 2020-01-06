Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 604371317BE
	for <lists+openwrt-devel@lfdr.de>; Mon,  6 Jan 2020 19:48:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H7HMcqnlOBNewrYj+rJFc32u//zxKYzUWweSjCPUsno=; b=IzOskTaxcsYR8W
	rD7t/KBU2q/qfQF1KPTKpIx/z6449SDKuDLpjecD9h91tnypyroBH0ac3GvwJBCGHBAROfwtBS0Ju
	0BE/eekOhzboENRKzyHLBQlXEkpoaozwH/BpioZtXG92v3ZCdRUVirTwOLcu7NzOWGDRSZC8rgXxN
	j8Avk/xgjJLBc5sWwunBvmIAeszr6SV0UZiEN5FM4VhXgjumB7wTsWEmV+Va2sYPg3psNi0LQKhUq
	4aXqniZ8XWwffXSW5UqeCInJ42ZCMmOL2O5QzBXnt6v7VxLjSx4CU5+YvgrDCyWKfQjxqt3/cOglA
	vLJ7qOqzMSXgseLQLzkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioXPu-0001YH-Fy; Mon, 06 Jan 2020 18:47:54 +0000
Received: from mail.nic.cz ([217.31.204.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioXPj-0001Wg-RO
 for openwrt-devel@lists.openwrt.org; Mon, 06 Jan 2020 18:47:45 +0000
Received: from [10.111.111.6] (ip-78-102-138-110.net.upcbroadband.cz
 [78.102.138.110])
 by mail.nic.cz (Postfix) with ESMTPSA id 70BC9140B12
 for <openwrt-devel@lists.openwrt.org>; Mon,  6 Jan 2020 19:47:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nic.cz; s=default;
 t=1578336457; bh=/qQWP10PVBzKcYZNAVNtAjDa9/nLoQ7Xvpc61VMlxrs=;
 h=To:From:Date;
 b=e+XrnpWXjnCKfXLfdogUEkLTNxv2y0kAd4+//21zlKWc/rjp7HU9G8HKw29Pxveyn
 /lSYuH1lH/KBmATh19Z+wPKXHTpanl/ihV+ZR95JUOj04ViK82Uz+nqdUjVD2kCdXg
 djXmV/fXzBVUuyQIKnilHVfyiLno412w6StiNMy0=
To: openwrt-devel@lists.openwrt.org
References: <20200106175038.22485-1-pepe.schlehofer@gmail.com>
From: Josef Schlehofer <josef.schlehofer@nic.cz>
Autocrypt: addr=josef.schlehofer@nic.cz; keydata=
 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
Message-ID: <6173bcca-bb3d-c276-1ae7-5b497043d9b7@nic.cz>
Date: Mon, 6 Jan 2020 19:47:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200106175038.22485-1-pepe.schlehofer@gmail.com>
Content-Language: en-US
X-Virus-Scanned: clamav-milter 0.101.4 at mail
X-Virus-Status: Clean
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,SHORTCIRCUIT
 shortcircuit=ham autolearn=disabled version=3.4.2
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on mail.nic.cz
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_104744_334762_22107CB5 
X-CRM114-Status: GOOD (  13.16  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.31.204.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
Subject: Re: [OpenWrt-Devel] [PATCH] [18.06] tools/expat: Update to version
 2.2.9
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

Hello,

Someone can be asking why I'm sending this patch just now when Hauke
wants to tag the new release of OpenWrt 18.06. I sent this patch on 1st
January 2020, but since then it is waiting for moderator approval
because my message is being held.

Unfortunately, I wrote about this a few times in IRC channel
#openwrt-devel on Freenode, but it didn't help. That's why I resend it.

Regards,
Josef

On 06. 01. 20 18:50, Josef Schlehofer wrote:
> Fixes two CVEs:
> - CVE-2019-15903 (Fix heap overflow triggered by XML_GetCurrentLineNumber)
> - CVE-2018-20843 (Fix extraction of namespace prefixes from XML names)
>
> Signed-off-by: Josef Schlehofer <pepe.schlehofer@gmail.com>
> ---
>  tools/expat/Makefile | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/tools/expat/Makefile b/tools/expat/Makefile
> index 54527a7d0a..de7f2a0deb 100644
> --- a/tools/expat/Makefile
> +++ b/tools/expat/Makefile
> @@ -9,10 +9,10 @@ include $(TOPDIR)/rules.mk
>  
>  PKG_NAME:=expat
>  PKG_CPE_ID:=cpe:/a:libexpat:expat
> -PKG_VERSION:=2.2.5
> +PKG_VERSION:=2.2.9
>  
>  PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.bz2
> -PKG_HASH:=d9dc32efba7e74f788fcc4f212a43216fc37cf5f23f4c2339664d473353aedf6
> +PKG_HASH:=f1063084dc4302a427dabcca499c8312b3a32a29b7d2506653ecc8f950a9a237
>  PKG_SOURCE_URL:=@SF/expat
>  
>  HOST_BUILD_PARALLEL:=1


_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
