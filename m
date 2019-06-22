Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2753C4F373
	for <lists+openwrt-devel@lfdr.de>; Sat, 22 Jun 2019 05:51:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=quZz8SRMVlyOSzdqNAAkBmuf//G2PhysjVCpk3KK3uY=; b=fU8HhovzZrlRh+sdQCXxWEGLB9
	fbYNr+UuBoO40g/6KvJI1rHrr0b5b1+5Lk6Vhjx/JLyNuyWWz7DqTeIutqt9cxeibLaUxaGeSAk6t
	+T/3N2Jtgy+4fpi5n5aQVnySu4YMxMpoYdGHyEREEGP/lEMqN7zziJHmcjkxUjXgynWJso2PjfCJT
	VvsltGQIx+hjOa+Le1RoQXbkPOGJUociDGUmnLemQcfi0YVhixC1XNkkydlXA6WOnW2gEe3L9bQLo
	i69w2uNs6f/Lzc/LdNRpRkvk4GEc69Dsy4SaJQzxzcQQ7JsgSMMw6Z3z9Nk5iVznshY2JiXLkFs/M
	I9KCyNGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heX30-0006Z9-8Q; Sat, 22 Jun 2019 03:50:38 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heX2r-0006YR-0C
 for openwrt-devel@lists.openwrt.org; Sat, 22 Jun 2019 03:50:30 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 889AA5081;
 Sat, 22 Jun 2019 05:50:23 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id b3c1ccb6;
 Sat, 22 Jun 2019 05:50:21 +0200 (CEST)
Date: Sat, 22 Jun 2019 05:50:21 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Daniel Danzberger <daniel@dd-wrt.com>
Message-ID: <20190622035021.GG95426@meh.true.cz>
References: <20190621155023.16220-1-daniel@dd-wrt.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190621155023.16220-1-daniel@dd-wrt.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_205029_190449_BC337A62 
X-CRM114-Status: UNSURE (   4.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH] ramips: mt7621: Add new device AsiaRF
 AP7621-001
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Daniel Danzberger <daniel@dd-wrt.com> [2019-06-21 17:50:23]:

Hi,

just one addition to the previous comments.

> +	gpio-keys-polled {
> +		compatible = "gpio-keys-polled";
> +		#address-cells = <1>;
> +		#size-cells = <0>;

You can drop `#address-cells = <1>;` and `#size-cells = <0>;` properties, it's a
copy&paste probably, needed by child node with reg property.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
