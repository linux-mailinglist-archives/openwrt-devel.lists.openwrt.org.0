Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB57DBB942
	for <lists+openwrt-devel@lfdr.de>; Mon, 23 Sep 2019 18:14:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:From:To:MIME-Version
	:References:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BwjZndJtAZsoVfJq3ZVnBMbsQ8DIZ31u81DkacBbPK8=; b=hc8ZCd9yBdofL4
	/6RUoCpNh/KJCLP3MIpO0nDAMKsnNshtqppRyw0xqNrcwxD6MtIEEzFv3AnhPuMQbfN/t0lmBDNWY
	NR9yagjap612gGjwm3Zdt7++lFGAYQV1/6yZeqvFWB+dURabVZWU44v6ZE9MYaCYVKsHKFXQp70xC
	NKjdmpRlOiS91VsDl6GSmSOGHG6Xiyo0RqAyp9pL5XKmBMQB51niNcl7P7WrMb8sSp5gX/RcrZeN7
	sKGdVfaUOZzUPC+mJVF2NMb8yg82o1Mmff0uC9vP9Ui5VH3wcu2x/LwE4evWhiqdCKZLLI9zX579U
	CzsWEcxe4Qr0N0xTC2PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCQyo-00033S-Tl; Mon, 23 Sep 2019 16:14:27 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCQyg-000333-GP
 for openwrt-devel@lists.openwrt.org; Mon, 23 Sep 2019 16:14:20 +0000
Received: from localhost (oi.rfid.io [198.211.125.99])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 9C0DB48FB;
 Mon, 23 Sep 2019 18:14:14 +0200 (CEST)
Date: Mon, 23 Sep 2019 16:14:11 +0000
In-Reply-To: <QtuLhyrBCeHYVp9GPNCtuLV5K5TmzGr6JJ8cjxSa2379@mailpile>
References: <20190921090912.GB40628@meh.true.cz>
 <QtuLhyrBCeHYVp9GPNCtuLV5K5TmzGr6JJ8cjxSa2379@mailpile>
MIME-Version: 1.0
To: Karl Palsson <karlp@tweak.net.au>
From: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
Message-ID: <35696569-8A53-4D02-B1EF-BDBFE7DD426B@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_091418_700642_1D340D7A 
X-CRM114-Status: UNSURE (   3.83  )
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
Subject: Re: [OpenWrt-Devel] the change 'base-files,
 procd: add generic service status' breaks several packages
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
Cc: Dirk Brenken <dev@brenken.org>,
 openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On September 23, 2019 3:17:00 PM UTC, Karl Palsson <karlp@tweak.net.au> wrote:
>
>While this might _fix_ things, it surely goes against the expectation
>that the user provided script takes precedence?  

I fail to see the issue, the callback was just renamed from `status` to `status_service`, otherwise it's expected to work as before.

-- ynezz

Hi,

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
