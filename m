Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 544DC73626
	for <lists+openwrt-devel@lfdr.de>; Wed, 24 Jul 2019 19:54:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=65yNJPEGfWMVsyFJIfNl0tM3QjRI4GChqCUrJ+aKhLI=; b=N7eaCadrwm9eBl9/LERejiRd9F
	ryaNwZMXOUKiJsAjo+upg0+Or2vyHr3YIWhP02mYWrCaSodbzWgBHeOxEl/g+Q758ifi/YZf7BYhC
	ylpxl/g+n6CHliUNU5WOvlYOtvBIensdHZVccNOkJHCXdhw5ORzIrTlHfg/XB871qEn7LV0g/cdCo
	bG/U8qDi0fPe3baSa1HkIpfb6vn9VNHRLvQsVHaYHg0iPI8GpX47poRT14IL/tceo/NWqg2fj6DVq
	qxCgl1asuRi/wqsVpAm7oPuKIbbkEK7Idj620MKk9CeWgViC9Q678fcjM0cX8dergshmlDmp+Iri7
	QOyKGbGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqLSu-0001e8-0K; Wed, 24 Jul 2019 17:54:12 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqLPc-0007gh-Fh
 for openwrt-devel@lists.openwrt.org; Wed, 24 Jul 2019 17:50:50 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id E2AAC4DBE;
 Wed, 24 Jul 2019 19:50:45 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id d8600704;
 Wed, 24 Jul 2019 19:50:39 +0200 (CEST)
Date: Wed, 24 Jul 2019 19:50:39 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Rosen Penev <rosenp@gmail.com>
Message-ID: <20190724175039.GC74752@meh.true.cz>
References: <20190724173231.9467-1-rosenp@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190724173231.9467-1-rosenp@gmail.com>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_105048_711413_36DA5C51 
X-CRM114-Status: UNSURE (   4.45  )
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
Subject: Re: [OpenWrt-Devel] [PATCH] ubox: Run init script through shellcheck
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

Rosen Penev <rosenp@gmail.com> [2019-07-24 10:32:31]:

> SC2004: $/${} is unnecessary on arithmetic variables.
> SC2166: Prefer [ p ] && [ q ] as [ p -a q ] is not well defined.

Can you please provide some details, why should we care about this shellcheck
warnings ?

> -	PIDCOUNT="$(( ${PIDCOUNT} + 1))"
> +	PIDCOUNT="$(${PIDCOUNT} + 1)"

You maybe fixed warning, but introduced bug:

 $ PIDCOUNT=2 echo "$(${PIDCOUNT} + 1)"
 /bin/ash: 2: not found

So that shellcheck thingy probably wanted:

 PIDCOUNT="$((PIDCOUNT + 1))"

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
