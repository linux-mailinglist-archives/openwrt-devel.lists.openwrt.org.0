Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8A7B17CDAC
	for <lists+openwrt-devel@lfdr.de>; Sat,  7 Mar 2020 11:40:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BOFxKhCDU8NtIQy1ZGpKA7FBmlOE2LKLBn0zB+yp8GQ=; b=ZXYdHGN3KDYioQXCZ669kkViqj
	s9BlbzC63IASyoizy3REEhb4AMcDzYDMtRTDwkytCGZZl6/78YeT+bihFE8hmqa3YIb/CjkIZ/Fle
	WxfRT9JsMnOWDWvLNnTNVGoiOdWxRLIG0idMMYzYoQ8jLSk1STgjigRJd3dbp9KphQHVv5veVqp6/
	J7Bs+3slQaBik+SupSC1dfkUl2eVb68F0cgDawYPFBiEFDEIuX7ZlY0bA4joIk61rDSIFwaY9cSWA
	X5E3zRJQeFEb8ozQbG3SgX6wOfGyMxPRCeFcJQEy0SsaRTnTflWG0uyo9scpZuYL7IVrb56qUg7eF
	F9GpCxMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAWsO-0000Ep-Vr; Sat, 07 Mar 2020 10:40:12 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAWs8-0000EV-QO
 for openwrt-devel@lists.openwrt.org; Sat, 07 Mar 2020 10:39:58 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 771624F57;
 Sat,  7 Mar 2020 11:39:55 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id feb11016;
 Sat, 7 Mar 2020 11:39:42 +0100 (CET)
Date: Sat, 7 Mar 2020 11:39:42 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Tim Harvey <tharvey@gateworks.com>
Message-ID: <20200307103942.GJ86312@meh.true.cz>
References: <1583532565-30087-1-git-send-email-tharvey@gateworks.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1583532565-30087-1-git-send-email-tharvey@gateworks.com>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_023957_009716_115CB7CB 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH] kernel: 5.4: add missing symbols
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
Reply-To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Cc: openwrt-devel@lists.openwrt.org,
 Koen Vandeputte <koen.vandeputte@ncentric.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Tim Harvey <tharvey@gateworks.com> [2020-03-06 14:09:25]:

Missing commit description.

> Signed-off-by: Tim Harvey <tharvey@gateworks.com>
> ---
>  target/linux/generic/config-5.4 | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/target/linux/generic/config-5.4 b/target/linux/generic/config-5.4
> index 0c246ee..597cd8e 100644
> --- a/target/linux/generic/config-5.4
> +++ b/target/linux/generic/config-5.4
> @@ -783,6 +783,7 @@ CONFIG_CC_OPTIMIZE_FOR_PERFORMANCE=y
>  # CONFIG_CGROUPS is not set
>  # CONFIG_CGROUP_BPF is not set
>  # CONFIG_CGROUP_DEBUG is not set
> +# CONFIG_CGROUP_HUGETLB is not set
>  # CONFIG_CGROUP_NET_CLASSID is not set
>  # CONFIG_CGROUP_NET_PRIO is not set
>  # CONFIG_CGROUP_RDMA is not set
> @@ -992,6 +993,7 @@ CONFIG_CRYPTO_BLKCIPHER2=y
>  # CONFIG_CRYPTO_DEV_FSL_CAAM_CRYPTO_API_DESC is not set
>  # CONFIG_CRYPTO_DEV_HIFN_795X is not set
>  # CONFIG_CRYPTO_DEV_HISI_SEC is not set
> +# CONFIG_CRYPTO_DEV_HISI_ZIP is not set
>  # CONFIG_CRYPTO_DEV_IMGTEC_HASH is not set
>  # CONFIG_CRYPTO_DEV_MARVELL_CESA is not set
>  # CONFIG_CRYPTO_DEV_MV_CESA is not set
> @@ -3962,6 +3964,7 @@ CONFIG_PINMUX=y
>  CONFIG_PLUGIN_HOSTCC=""
>  # CONFIG_PLX_HERMES is not set
>  # CONFIG_PM is not set
> +# CONFIG_PMS7003 is not set
>  # CONFIG_PMBUS is not set
>  # CONFIG_PMC_MSP is not set
>  # CONFIG_PMIC_ADP5520 is not set
> -- 
> 2.7.4
> 
> 
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> 

-- 
ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
