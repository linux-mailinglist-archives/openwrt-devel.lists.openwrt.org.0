Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66DEB7D80C
	for <lists+openwrt-devel@lfdr.de>; Thu,  1 Aug 2019 10:51:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZdW5YFE4oLQvOTH7oMWydYGMkoSP1e7pXrJlw44CDQ4=; b=XhcB84KAnv4sGK0TIajHR4Kzno
	E/uDK2dpyGoXlcuc3BKvi2huALvxkKBnJ7AU9yJaFlonT7CMnwF8pPS1BiyZsQ2UWfLX+X41mjmxo
	yhkuMCBs80/h/pmJhL1Kqn2SOSItSmlBpGYYWrTw00RPkuWBMtryQ85Q0BQT99VdkktjAC9fy1E48
	TY2vAw29gzd1pN/mYWftW6xB+/PDIWJRtPVQ6ikEVI7dKIKhCqVJMOUuxg74fR507Pxo+18dSlqZG
	hcOH4+atW0xQyv9sXxu5bYEiW+DNIMS38f3X1ecX2MozVKyjo1uxbWlr2D7ePdTImQEio6ZDPknST
	prwm2MnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht6o0-0001GO-CG; Thu, 01 Aug 2019 08:51:24 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht6nt-0001G2-LY
 for openwrt-devel@lists.openwrt.org; Thu, 01 Aug 2019 08:51:19 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 2A2FF4691;
 Thu,  1 Aug 2019 10:51:14 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 68c2971f;
 Thu, 1 Aug 2019 10:51:07 +0200 (CEST)
Date: Thu, 1 Aug 2019 10:51:07 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Etienne Champetier <champetier.etienne@gmail.com>
Message-ID: <20190801085107.GK74752@meh.true.cz>
References: <20190727022302.12656-1-champetier.etienne@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190727022302.12656-1-champetier.etienne@gmail.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_015117_860528_05820F37 
X-CRM114-Status: UNSURE (   8.72  )
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
Subject: Re: [OpenWrt-Devel] [PATCH] [RFC] kernel: disable EAP local hack
 when using group_fwd_mask
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
Cc: openwrt-devel@lists.openwrt.org, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Etienne Champetier <champetier.etienne@gmail.com> [2019-07-26 19:23:02]:

Hi,

I've noticed your request for feedback on IRC.

> and 640-bridge-only-accept-EAP-locally.patch hack is there to prevent
> bridges from forwarding these EAP frames

it would be nice to know if this patch is still needed so we could possibly
remove[1] it from 4.19 kernel.

> -+	if (skb->protocol == htons(ETH_P_PAE))
> ++	if (skb->protocol == htons(ETH_P_PAE) && !(br->group_fwd_mask & (1u << 3)))
>  +		return br_pass_frame_up(skb);

This usage of magic numbers is usually a warn sign to me, so I went ahead and
read the surrounding code and it seems to me, that you probably wanted
something like this instead:

  u16 fwd_mask = p->br->group_fwd_mask_required;
  fwd_mask |= p->br->group_fwd_mask;
  const unsigned char *dest = eth_hdr(skb)->h_dest;

  if (skb->protocol == htons(ETH_P_PAE) && !(fwd_mask & (1u << dest[5])))
          return br_pass_frame_up(skb);

1. https://patchwork.ozlabs.org/patch/884518/

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
