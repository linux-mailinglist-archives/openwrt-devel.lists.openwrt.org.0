Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96FAEF89E5
	for <lists+openwrt-devel@lfdr.de>; Tue, 12 Nov 2019 08:43:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zL9ZKSTsT9+fU6ii1fpppng6wkc5fFmCi81zfsUc15Y=; b=XJxAVv911qGRCMhKlmgAR+xnQc
	AwamM1N1CGnZodVIz1MiII4tK58ramTrB9GWWbak77qdKCRhcE8yt+Ea9EYNnjxZH0JVpTGe3gkko
	co1LJegWPgE5OlZoTAK7K0B4qPrzf33K0uFM7pB77Ua7AaR00PzA3tMmxVbo/irnZIPderbq627uW
	8EPftuVLNRfHf4iKfex5e31v0Txpla3ExNyozykvNMHJnsdPBN5YV2kxctx+uemTI3gKx4B1J85AS
	hrtYnweKkBzZDFe/GsvrD81DJVkAmKcMy1LXjSpkLKd1grs84OduxlvJaFDzExJTs0jLRgkzUn5zC
	JviKlP/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUQpo-0004SA-LA; Tue, 12 Nov 2019 07:43:32 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUQpg-0004Rp-GW
 for openwrt-devel@lists.openwrt.org; Tue, 12 Nov 2019 07:43:26 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 2DC563E81;
 Tue, 12 Nov 2019 08:43:21 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id b0f6b6d4;
 Tue, 12 Nov 2019 08:43:11 +0100 (CET)
Date: Tue, 12 Nov 2019 08:43:11 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Thomas Albers <thomas.gameiro@googlemail.com>
Message-ID: <20191112074310.GA71646@meh.true.cz>
References: <20191111205558.2403-1-ynezz@true.cz>
 <CALYGOBUTa_2ZfrJPoZJ31xD58E01ZMVp2ZSANtn5d1tcBtPAdg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CALYGOBUTa_2ZfrJPoZJ31xD58E01ZMVp2ZSANtn5d1tcBtPAdg@mail.gmail.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_234324_704937_92E42F67 
X-CRM114-Status: UNSURE (   5.90  )
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
Subject: Re: [OpenWrt-Devel] [PATCH] kernel-build: fix kernel_menuconfig
 breakage by forcing YACC
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
Cc: Stijn Tintel <stijn@linux-ipv6.be>, openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Thomas Albers <thomas.gameiro@googlemail.com> [2019-11-12 00:02:37]:

Hi,

> Since the purpose of the previous patch is to use host pkg-config
> instead of toolchain pkg-config, wouldn't the more correct be to also
> use host bison?

as you can see, relying on anything from the host is very fragile, but in this
limited kernel_menuconfig scope it is probably acceptable trade-off in
comparison to building of ncurses for the host. As we build bison, I think,
that it makes more sense to use that known version instead.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
