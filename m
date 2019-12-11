Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B8A111AA2D
	for <lists+openwrt-devel@lfdr.de>; Wed, 11 Dec 2019 12:47:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1XUDIzA2nw5MJkSlFyTgvcxH9gh+/Ox2G6J/xEUrwHQ=; b=KvWrTJ4QRF7tKnkxgGKQSO5e9y
	NE+52PQDZatM9HKG8MbNLiUmEAXXEcK4pDjgcElVtSTYcf8SXURfgk14h8TS69QHkL6v1lOHCdeLX
	qkkI81NrlTt+CRtL67W8v99Ukl3iOr85WSUSEOzn4vpMBTRqexCCuC8TCEKhKxQcz4WqSLi5pIJri
	74bqbxAK47/HniY+kgAAHzExOnUWGlKYmys1KS1VoWMhdPpqkO4KmoOTbvahhkL441CBt1DENUopa
	1h3+FdDpZZTzF5KcSZuNyhtz8UZ3BgiTbbMw/Gz2Pvj2H9g74L3ghXD6Fr1N5S3lxOEEk9w6HFmVb
	bK33fEfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if0T0-0000rt-2X; Wed, 11 Dec 2019 11:47:42 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if0Ss-0000rR-Fi
 for openwrt-devel@lists.openwrt.org; Wed, 11 Dec 2019 11:47:36 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 3D2EE5299;
 Wed, 11 Dec 2019 12:47:32 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 50673f96;
 Wed, 11 Dec 2019 12:47:22 +0100 (CET)
Date: Wed, 11 Dec 2019 12:47:22 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Paul Fertser <fercerpav@gmail.com>
Message-ID: <20191211114722.GA11343@meh.true.cz>
References: <20191210142420.30748-1-fercerpav@gmail.com>
 <20191210144213.GH71465@meh.true.cz>
 <20191211110352.GL11070@home.paul.comp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191211110352.GL11070@home.paul.comp>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_034734_674650_AFDD1685 
X-CRM114-Status: UNSURE (   5.76  )
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
Subject: Re: [OpenWrt-Devel] [RFC][PATCH] base-files: send informational UDP
 message each second waiting
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

Paul Fertser <fercerpav@gmail.com> [2019-12-11 14:03:53]:

> Waiting with a timeout poses a question of what that timeout should be set
> to; and if that's reasonable to extend current 2 seconds with any
> significant amount.

As you've witnessed this default value doesn't work well in some cases.

> Current documentation says a message should be sent.

So now, this would need to be rephrased from current 0 or 1, to 0 to N, where
N depends on config settings (timeout value).

> Do you have any other possible solution in mind?

(nope, just thinking aloud)

If the fixed value doesn't work for all use cases, then its not fixed variable
anymore and should be variable, thus config option, probably finetuned per
target/device.

Question is, if it's worth the hassle for a feature which is targeted more
towards the expert users.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
