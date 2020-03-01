Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D40AE174D63
	for <lists+openwrt-devel@lfdr.de>; Sun,  1 Mar 2020 13:56:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XpUj3p/ejadg4EaUjIb2BQXNNiWzf+x5S7V5rPeXFcM=; b=XZRXB8HwMNhQvFfwrfnBG75pDQ
	8rdi1aW4MVdLamH+BufyP2oWTWYkae4/RixMwAzjPKTQyrgh7xnqPs1M+Zp4CynIIvRV27T3aiVC+
	JgJ//bhpU5WgxabvZdRcU29ZJpwcF8xmJlGv6XDqGF/yNb7oNv46TLJlLVh0aWEZjh33yH6eW+Hhc
	9q3bl/6fm8nztpfHDLEO2x5jnVOp9YFVAWrOXCzM5kv4DSdk/tMBXFnsJcKlLsqd7G7SsFxHmnXeN
	U3hg4gJJK0xBXNwFUzv7Xl4K5LlZW3ZCU9UnKrP7Xw+efk36ejOSe6S3M4cE5HgLDJFjawdw9eqod
	Vjf4c38g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8O9L-0002uO-KB; Sun, 01 Mar 2020 12:56:51 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8O9F-0002tE-4u
 for openwrt-devel@lists.openwrt.org; Sun, 01 Mar 2020 12:56:46 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 4239D3037;
 Sun,  1 Mar 2020 13:56:42 +0100 (CET)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id b220c74a;
 Sun, 1 Mar 2020 13:56:29 +0100 (CET)
Date: Sun, 1 Mar 2020 13:56:29 +0100
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: admin@kryma.net
Message-ID: <20200301125629.GA70913@meh.true.cz>
References: <20200219023923.29574-1-admin@kryma.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200219023923.29574-1-admin@kryma.net>
X-PGP-Key: https://gist.githubusercontent.com/ynezz/477f6d7a1623a591b0806699f9fc8a27/raw/a0878b8ed17e56f36ebf9e06a6b888a2cd66281b/pgp-key.pub
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_045645_341840_E07431D5 
X-CRM114-Status: UNSURE (   5.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] [PATCH v5] ath79: add support for COMFAST
 CF-E130N v2
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

admin@kryma.net <admin@kryma.net> [2020-02-19 02:39:23]:

Hi,

...

> +			partition@20000 {
> +				compatible = "denx,uimage";
> +				label = "firmware";
> +				reg = <0x020000 0x7c0000>;
> +			};
> +
> +			partition@7e0000 {
> +				compatible = "denx,uimage";
> +				label = "configs";
> +				reg = <0x7e0000 0x010000>;
> +			};

are you sure about that 2nd denx,uimage compatible? I would remove it and
added `read-only` instead.

> +define Device/comfast_cf-e130n-v2
> +  ATH_SOC := qca9531
> +  DEVICE_VENDOR := COMFAST
> +  DEVICE_MODEL := CF-E130N
> +  DEVICE_VARIANT := v2
> +  DEVICE_PACKAGES := rssileds kmod-leds-gpio -swconfig -uboot-envtools
> +  IMAGE_SIZE := 8000k

0x7c0000 = 7936k

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
