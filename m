Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D73175279A
	for <lists+openwrt-devel@lfdr.de>; Tue, 25 Jun 2019 11:09:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f9Y0b3zENFfgYL7bULBIxMh+gifj5ZkbwDssayDUn+4=; b=fJtfaYVtsUh2/Z
	6RDgJMIe/ZaPh66Tqhkv11uvIM2NbmC7lQmRAnLDL7jiD2egGoaN28raQw3X4V9D27XFPzwoCTc27
	ZvZmCo8YNp33U+MX2sK1vZ/ZDCubjokpIS4KQrTp5JcFrMdYjFgWGlLiQWbjWk7TXAbM9tEiqhhFL
	vxLCWN9p7p4QEZmrGhrz6wygHyiw07j9+n15v+x/1px0zEE7GItYlV9x+g+6UpG103g6mHLOoxqp5
	Zy1qkVENclKA2TkrDZ1q5aXorC6WerUD44OOv4eDLNciEuDlYGW3vzYkcg7bHZw+x8YvNLoY1wH6l
	3DfkUCkRP5AuO4pLxkDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfhSI-0006IG-HM; Tue, 25 Jun 2019 09:09:34 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfhRo-0006HI-Nu
 for openwrt-devel@lists.openwrt.org; Tue, 25 Jun 2019 09:09:06 +0000
Received: by mail-wr1-x443.google.com with SMTP id n4so15736412wrs.3
 for <openwrt-devel@lists.openwrt.org>; Tue, 25 Jun 2019 02:09:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=gFWKKC9VXNYkv71sn4tiPfOG3cSX0jrv88q0eC+PngQ=;
 b=dHoWUeVV4giyO9o1hipkQ33IZtkebB5l7nOQwYUI6p2xAeG5g7PBMX23t3B/+U4WS5
 H3wTIGgy0wsb+JDfrJjOG8YrKkK/d/F1gNy2LZWZ0bpTX8vVl/SMso5fmt1C3gqWev8X
 vGjPoCvOVmhGz8vJSbz19M3nWSO9CCBowPnLOALd/P53AoHV4dmYkFW70h+jz4Xbft0Y
 7+0D30Cn4HV1EgnMcRHu4T2jFhkwr53amsptHa4WFXJyf9a66FfjHgGBgiMffhXO8/4Y
 aSCDXuBwARpu2NP3ddsvhGhiZVS/JGhPlavSGKxVawF9FLGMuHu5gsw+h2ZgT+H64F5T
 /wxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=gFWKKC9VXNYkv71sn4tiPfOG3cSX0jrv88q0eC+PngQ=;
 b=jVJF+gfgEJFqnXNpGH5XdfO1Uik3/+CRz68s/8AkQQZ0iilXl0Svj2wTwBbfBzBfjL
 fzjZvo93Hzh5Q3UJJTxOu9LYqDjRq4/nSux2WuH+M+N4xY0pQyKZK3VQqa6Wev4YHOw9
 azAuSAK0YNU0raDs+MSun9TCvtJ0zrPlxUQJfDmwrBFsytrIq6NGFey9KeRryk9qu6pi
 zOxwBV2+eBDZyW3FTiCZtDx+rTKpWrEBsyKcV9XaKFDInyTqvrfDPkWFNmh6YQEQHN7t
 dNn9bnu4YrbGGXoeaNY1eMt8pDMW/6JtD1l0bivhfxvDomHla6LR/PZSs0QCZ6NkEC+x
 1sKw==
X-Gm-Message-State: APjAAAW/wDZ4YPv9w4urK+ZvNwSOGnact2iqvVAW1cHeNxX4VAlNgrnp
 PFUvl7jmD3et8RKaD3kSw0I=
X-Google-Smtp-Source: APXvYqzkBAW0eSh3gqc+LJsELkXjE0ymFkYIdcYQX/cYy4TYA68tMCkdrianXdUmRt9EnndCobfqAw==
X-Received: by 2002:adf:ea88:: with SMTP id s8mr95857858wrm.68.1561453740643; 
 Tue, 25 Jun 2019 02:09:00 -0700 (PDT)
Received: from debian64.daheim (pD9E29981.dip0.t-ipconnect.de.
 [217.226.153.129])
 by smtp.gmail.com with ESMTPSA id c4sm13303375wrt.86.2019.06.25.02.09.00
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 02:09:00 -0700 (PDT)
Received: from localhost.daheim ([127.0.0.1] helo=debian64.localnet)
 by debian64.daheim with esmtp (Exim 4.92)
 (envelope-from <chunkeey@gmail.com>)
 id 1hfhRj-0003CS-KY; Tue, 25 Jun 2019 11:08:59 +0200
From: Christian Lamparter <chunkeey@gmail.com>
To: Daniel Danzberger <daniel@dd-wrt.com>
Date: Tue, 25 Jun 2019 11:08:58 +0200
Message-ID: <1720356.R2ED481D4U@debian64>
In-Reply-To: <41cdb404-d377-92f3-22d7-5edb07d2d34e@dd-wrt.com>
References: <20190624161320.7316-1-daniel@dd-wrt.com>
 <3007342.El8puCmMqZ@debian64>
 <41cdb404-d377-92f3-22d7-5edb07d2d34e@dd-wrt.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_020904_804404_80A4ED1A 
X-CRM114-Status: GOOD (  14.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (chunkeey[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: openwrt-devel@lists.openwrt.org, gch981213@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On Tuesday, June 25, 2019 10:34:47 AM CEST Daniel Danzberger wrote:
> 
> On 6/24/19 10:17 PM, Christian Lamparter wrote:
> >> diff --git a/target/linux/ramips/dts/AP7621-001.dts b/target/linux/ramips/dts/AP7621-001.dts
> >> new file mode 100644
> >> index 0000000000..daab06ec90
> >> --- /dev/null
> >> +++ b/target/linux/ramips/dts/AP7621-001.dts
> >> @@ -0,0 +1,127 @@
> >> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
> >> +
> >> +/dts-v1/;
> >> +#include "mt7621.dtsi"
> >> +
> >> +#include <dt-bindings/gpio/gpio.h>
> >> +#include <dt-bindings/input/input.h>
> >> +
> >> +/ {
> >> +	compatible = "asiarf,ap7621-001", "mediatek,mt7621-soc";
> >> +	model = "AP7621-001";
> > 
> > Oh boy, this is tricky.
> > 
> > <https://github.com/devicetree-org/devicetree-specification/blob/4b1dac80eaca45b4babf5299452a951008a5d864/source/devicenodes.rst>
> > 'The recommended format ' (for the root node!) ' is "manufacturer,model-number".'
> > 
> > BUT. Thing is, this string here gets printed on the LuCI system
> > page and from past experience "Manufacturer Model" works best.
> >
> I am not sure if using a blank instead of ',' is a good idea, because of
> sysupgrade and the device tree board detection.
> All other DTS files use ',' in DTS and '_' in their Makefile.
> 
> Are you sure about this one ?
> 
Hm, I think this is a misunderstanding?
The compatible "asiarf,ap7621-001" is fine. But the "model" property could use
the manufacturer.

(Note: The sysupgrade codes uses the first compatible string, not the model)

Cheers,
Christian



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
