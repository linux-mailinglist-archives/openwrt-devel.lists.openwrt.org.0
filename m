Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B698713862D
	for <lists+openwrt-devel@lfdr.de>; Sun, 12 Jan 2020 13:10:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bQoZU1Lx6dBA9apn2TbcmhDp7fzuK7sM59nd8Ce1sSQ=; b=H1FJyxIp0XqzqjeUTTMgBV7cMi
	46T7tQDlnj+BopfAauobWh13ZRVrUyPt9RmTxSLqE1hvYiadxjly1dEY6LWR8s9XT7HlKFY0pvT+E
	VUQ0LPyKaB5Fo5QSsUbta+4wRrQI3ktliprgzfiJZ2u/yS/O8YCYSmq2Rfr0tE8b3q/wLYgRUWFD1
	RhIhWT2KbVrA1BiXO5NfX2pwaLJEG6JMdQFQYx49iR6zKAMeAmYCp9Dhon0bHsmOChqRHP9oeJOTg
	vVlaRxKM//iQViS6JEyQyDKyOdLZA1Ss9VulTnqLncxMaX6xGC6uo0F2DJEFwV9eyi/gNXYR/AOYD
	2gmeT4SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqc4U-0006ws-7P; Sun, 12 Jan 2020 12:10:22 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqc4I-0006wN-PX
 for openwrt-devel@lists.openwrt.org; Sun, 12 Jan 2020 12:10:12 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 399AE4CC0;
 Sun, 12 Jan 2020 13:10:08 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 4c086e97;
 Sun, 12 Jan 2020 13:09:57 +0100 (CET)
Date: Sun, 12 Jan 2020 13:09:57 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: juraj.vijtiuk@sartura.hr
Message-ID: <20200112120957.GF86978@meh.true.cz>
References: <20200112112618.2951-1-juraj.vijtiuk@sartura.hr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200112112618.2951-1-juraj.vijtiuk@sartura.hr>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_041010_984743_72481E9F 
X-CRM114-Status: UNSURE (   8.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH][libubox] blobmsg: blobmsg_parse and
 blobmsg_parse_array oob read fixes
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
Cc: openwrt-devel@lists.openwrt.org, Luka Perkov <luka.perkov@sartura.hr>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

juraj.vijtiuk@sartura.hr <juraj.vijtiuk@sartura.hr> [2020-01-12 12:26:18]:

Hi,

> @@ -35,10 +35,16 @@ static bool blobmsg_check_name(const struct blob_attr *attr, size_t len, bool na
>  	char *limit = (char *) attr + len;
>  	const struct blobmsg_hdr *hdr;
>  
> +	if (len < sizeof(struct blob_attr) + sizeof(struct blobmsg_hdr))
> +		return false;
> +

why is this change needed? If I'm reading it correctly, then blobmsg_check_name
is only called from blobmsg_check_attr_len and there is already much stricter guard:

 bool blobmsg_check_attr_len(const struct blob_attr *attr, bool name, size_t len)
 {
        if (len < sizeof(struct blob_attr))
                return false;

        if (!blobmsg_check_name(attr, len, name))
                return false;

>  	hdr = blob_data(attr);
>  	if (name && !hdr->namelen)
>  		return false;
>  
> +	if (len < sizeof(struct blob_attr) + sizeof(struct blobmsg_hdr) + blobmsg_namelen(hdr) + 1)
> +		return false;

Didn't checked it in detail yet, but isn't it almost the same as the check few
lines bellow, just written differently?

>  	if ((char *) hdr->name + blobmsg_namelen(hdr) > limit)
>  		return false;

...

> @@ -191,7 +197,11 @@ int blobmsg_parse(const struct blobmsg_policy *policy, int policy_len,
>  	}
>  
>  	__blob_for_each_attr(attr, data, len) {
> +		if (len < sizeof(struct blob_attr) + sizeof(struct blobmsg_hdr))
> +			return -1;

If there is such problem, then this should be probably fixed directly in
__blob_for_each_attr so we possibly protect other __blob_for_each_attr
users[1].

>  		hdr = blob_data(attr);
> +		if (len < sizeof(struct blob_attr) + sizeof(struct blobmsg_hdr) + blobmsg_namelen(hdr) + 1)
> +			return -1;

It would be really nice to have blobmsg which could prove, that this check is needed.

1. https://lxr.openwrt.org/ident?i=__blob_for_each_attr

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
