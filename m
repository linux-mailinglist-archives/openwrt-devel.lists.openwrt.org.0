Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE28313071A
	for <lists+openwrt-devel@lfdr.de>; Sun,  5 Jan 2020 11:41:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qFm6ZHjLPmWrJe4BuU4kers15k0L9wwKvKV5EmHOBf8=; b=tfBcSSQtwpGIsVPMcnzTm/25IW
	+xLmPj8ELwUiqo+4197km/Agyufjv/P+HyKNmA4gTEtHQux9rKpZJbmWqdvE+ToCzA5vUvG+d0kJs
	3++SagPqQAJP9qif1wRlRr/VCcb1583gB6cc+J5mKiMhFAGBC54VS5pNLET8yKpVYL0U/AeFnxkTl
	WYO/BG8b1XDKvd17WkUJ7g++1zHBQk83iqJIDMfJhjBZEcMC29/1aNI/dzlAxvS3ANobJvpYz/PsF
	8zzNK4oF/F72IEIdovMKwSBgm+UgRymgKY3CrKXt3OcI6rAb3oeROGmz7mynfe4mayl4zwpNrsYfN
	c+Jp9IIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1io3L7-0006Ve-PI; Sun, 05 Jan 2020 10:40:57 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1io3L1-0006VC-3P
 for openwrt-devel@lists.openwrt.org; Sun, 05 Jan 2020 10:40:52 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 7A1324D91;
 Sun,  5 Jan 2020 11:40:40 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 682e2be3;
 Sun, 5 Jan 2020 11:40:29 +0100 (CET)
Date: Sun, 5 Jan 2020 11:40:29 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Hauke Mehrtens <hauke@hauke-m.de>
Message-ID: <20200105104029.GX70184@meh.true.cz>
References: <20200103004638.16307-1-ynezz@true.cz>
 <20200103004638.16307-4-ynezz@true.cz>
 <75fc5a11-2610-b298-ec69-24595184b5d9@hauke-m.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <75fc5a11-2610-b298-ec69-24595184b5d9@hauke-m.de>
X-PGP-Key: http://ynezz.true.cz/EC796FB2DC69CEF9.asc
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_024051_295253_F9823279 
X-CRM114-Status: UNSURE (   7.58  )
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
Subject: Re: [OpenWrt-Devel] [PATCH procd 3/4] system: sysupgrade: rework
 firmware validation
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
Cc: =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hauke Mehrtens <hauke@hauke-m.de> [2020-01-04 20:41:44]:

Hi,

thanks for the review!

> Please annotate the function with:
> __attribute__ ((format (printf, 2, 3)));

Done.

> > +	va_start(va, fmt);
> > +	r = vsnprintf(buf+r, sizeof(buf)-r, fmt, va);
>
> Please check here for truncation:
>
> rv = vsnprintf(buf+r, sizeof(buf)-r, fmt, va);
> if (rv < 0 || rv >=  sizeof(buf)-r ) {

I think, that it's better to get truncated message to 256B (if we hit this
corner cases, we can increase the buffer), then "vsnprintf error".

> > +		blobmsg_add_object(&b, jsobj);
> > +		json_object_put(jsobj);
> > +		return VJSON_SUCCESS;
> > +	}
> > +
> > +	return vjson_error(err, "failed to parse JSON: %s (%d)",
> > +			   json_tokener_error_desc(json_tokener_get_error(tok)),
> > +			   json_tokener_get_error(tok));
> 
> Why don't you free it here too json_object_put()?

It should be NULL, json_tokener_parse_ex returns object only in case it
returns json_tokener_success.

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
