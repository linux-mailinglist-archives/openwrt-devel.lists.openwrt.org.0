Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E48961F84A
	for <lists+openwrt-devel@lfdr.de>; Wed, 15 May 2019 18:15:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7PjxFJacrIGx5CkjJlL+X8vQy2OYlPvgej/8zarMmZk=; b=RgqDPB73TxKnmo
	umbMTKlHjlsV9ur304PJBAq0BFDYmBbd0ZPTEPv+7whucBV45qoVfISy/VLXQvcsDYnXXRdm3+meE
	VgWENO88MXoU+HVyFJ6VIka3cWofZmqxKSRfCZy1OeLQRiECwmk1T7iYN1feRe+IAhc0GfPBL3opp
	6q87lnrgjbaWFtZL/OkeBKCG/9JEygo85o1FpUBBk0XjjO6kUH/rr1A0aRFHHAUBh5PXnWwJ/MZ6l
	CvkK0AJ6LXU1ryMF2y4ZZCt/UEYaYMDn4mkwtQ+CIJs2oIprxT5TOuVw6qimrnffpD5kgy3C1RTwt
	tHyu5qYu0G6tlODaOPVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQwZC-000624-FQ; Wed, 15 May 2019 16:15:42 +0000
Received: from mail-out.xnet.cz ([82.113.55.122])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQwZ4-00061n-1K
 for openwrt-devel@lists.openwrt.org; Wed, 15 May 2019 16:15:35 +0000
Received: from smtp-out.xnet.cz (smtp-out.xnet.cz [178.217.244.18])
 by mail-out.xnet.cz (8.15.2/8.15.2) with ESMTPS id x4FGFSUF047635
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Wed, 15 May 2019 18:15:28 +0200 (CEST) (envelope-from ynezz@true.cz)
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 0090D37E5;
 Wed, 15 May 2019 18:15:25 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 4e9ad66c;
 Wed, 15 May 2019 18:15:24 +0200 (CEST)
Date: Wed, 15 May 2019 18:15:24 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Patrick McDermott <patrick.mcdermott@libiquity.com>
Message-ID: <20190515161524.GA20298@meh.true.cz>
References: <20190417175405.2659-1-patrick.mcdermott@libiquity.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190417175405.2659-1-patrick.mcdermott@libiquity.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_091534_396411_4DE4ED68 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH][opkg-lede] build: Allow overriding opkg
 state dir prefix
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Cc: openwrt-devel@lists.openwrt.org, Jo-Philipp Wich <jo@mein.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Patrick McDermott <patrick.mcdermott@libiquity.com> [2019-04-17 13:54:05]:

You've probably forget to add commit description, which would explain us why
you need this changes or what problem it fixes as requested in 

 https://openwrt.org/submitting-patches

> Signed-off-by: Patrick McDermott <patrick.mcdermott@libiquity.com>
> ---
>  CMakeLists.txt | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/CMakeLists.txt b/CMakeLists.txt
> index 26230b3..f57fe10 100644
> --- a/CMakeLists.txt
> +++ b/CMakeLists.txt
> @@ -7,6 +7,7 @@ INCLUDE(TestBigEndian)
>  SET(HOST_CPU "" CACHE STRING "Override Host CPU")
>  SET(BUILD_CPU "" CACHE STRING "Override Host CPU")
>  SET(LOCK_FILE "/var/lock/opkg.lock" CACHE STRING "Override lock file path")
> +SET(STATE_DIR_PREFIX "/usr/lib" CACHE STRING "Override opkg state directory prefix")
>  SET(PATH_SPEC "/usr/sbin:/usr/bin:/sbin:/bin" CACHE STRING "Override default PATH value")
>  SET(VERSION "" CACHE STRING "Override version")
>  
> @@ -39,7 +40,7 @@ ADD_DEFINITIONS(-Os -Wall --std=gnu99 -g3 -Wmissing-declarations
>  	-DDATADIR="/usr/share"
>  	-DOPKGETCDIR="/etc"
>  	-DOPKGLOCKFILE="${LOCK_FILE}"
> -	-DOPKGLIBDIR="/usr/lib"
> +	-DOPKGLIBDIR="${STATE_DIR_PREFIX}"
>  	-DHOST_CPU_STR="${HOST_CPU}"
>  	-DBUILD_CPU=${BUILD_CPU}
>  	-DPATH_SPEC="${PATH_SPEC}"

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
