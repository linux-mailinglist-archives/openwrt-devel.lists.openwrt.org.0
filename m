Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2009BF4FC0
	for <lists+openwrt-devel@lfdr.de>; Fri,  8 Nov 2019 16:33:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:Message-ID:
	In-Reply-To:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rEbvZIJFmra80/DnwzTH3p+g+87VBvDTXPZj53gd8Ak=; b=DG9Tq8XyJQTexlLTKaDC2u6Np
	M8k6xPd/ydOVN8p/MOuE+CFJF/PAfUWc+8O4RegSvS80V/18vJswAFCSOpTiBIXdO9WWq2QCeMzUB
	LjMeCyb1DRNffWhClw40+sEsAHgLOP8VWkQ3GZ2busFaTnjodEbfuYqsYtb8PGikZDQtVln2C9t8/
	nzqsroZTGF3dkC8FmMZXShkcoF7kXclR1TwgJlw7DY8pZW41srbA8DUVWxBBvlf7zQgIkxhHXUgre
	6t4UiF6ngLxjo2LbfDceG3uxGs80VR/0m6zximUwxKwQbt0D+J26+yaTSdZiAK/8Pn5ekmT2uyQf+
	6njxXt98Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT6GP-0000sP-LJ; Fri, 08 Nov 2019 15:33:29 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT6GH-0000rs-2W
 for openwrt-devel@lists.openwrt.org; Fri, 08 Nov 2019 15:33:22 +0000
Received: by mail-wm1-x329.google.com with SMTP id c22so6666654wmd.1
 for <openwrt-devel@lists.openwrt.org>; Fri, 08 Nov 2019 07:33:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :mime-version; bh=NfftclBVtZn2d/QrKwYSe/MP2j1qRLy2oFZ5mUPkrno=;
 b=SlH7jaXsEaInhab6ixUGJuaLwk/wMYl19SQrLkCiCsObJOdf2xt7X5Gm8XaGul9FAb
 PXVsqlZhzRERPdLCi3RiYq6i2teim/CaWeSCiqvuWvVPxMi20p2+JJBNSPQrteGwSWzW
 O7f1EcOvxolvO8cvoh3/QiutTp0PIIDRXDmv9lFPB2KzkA5xH+u9RUGxOh3BDEW2SVq5
 kgKYgPgCOBQSwdjfdwyRQAUgMP/H3XNHXGt2HuCw65JXep9GC+rH671QzGRy/BnwvJdZ
 qJNgqVK7/vM01hdb7P8FRVmEuptsMjwdlW5t8ZFMEJXoBScpI4tpaxrEtRLALAjCcKSH
 NpuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:mime-version;
 bh=NfftclBVtZn2d/QrKwYSe/MP2j1qRLy2oFZ5mUPkrno=;
 b=oUwMjAZLs7WY4DYHOdLl2dm2ryNwWwCukV5FfAhGxZXd5qTCttxQa5r9xEnwlZGvDO
 oPlZKjuOLpAotVmolmxW2ibJdjHdjIKe42PsgRKy2GtIQ2dV++JRYhh4Aek5gR6D8fBv
 muYAV8FC3eqALSWe5aLiUhPDdQAvg4daN8GwA+mAJJnDHaPserskitiyFrSxn8/mT2ra
 ue1tW9ISvglh3r3OspRplx2zOWfxZoPDCL/7W5ecri7puc97rT7L3eaTOpl0rPwtd0Qt
 iw29kLViJ+3ugBs4LjN9Ud3Rs76yR+KoFEylYBcesNZAw9MVzE+wnVfCqoGBptXOmWaw
 rBlg==
X-Gm-Message-State: APjAAAX4JGzlqIUaE7xpN3hkAyu5KOJevLO/6eCwRIvJCdZ1cSf1Ozj0
 ypFLPJ+d1ezB6n0yhSC5+3c=
X-Google-Smtp-Source: APXvYqxpJXjFlic+gPMzf2uk/eXkEjPyW2QggnxQIJnk+633MeXcDwwGKZ/xP+zTx68c4fq0mo8IIw==
X-Received: by 2002:a05:600c:2944:: with SMTP id
 n4mr8828837wmd.57.1573227199232; 
 Fri, 08 Nov 2019 07:33:19 -0800 (PST)
Received: from mStation (host120-32-dynamic.15-87-r.retail.telecomitalia.it.
 [87.15.32.120])
 by smtp.gmail.com with ESMTPSA id c9sm4771429wmb.42.2019.11.08.07.33.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Nov 2019 07:33:18 -0800 (PST)
Date: Fri, 8 Nov 2019 16:33:16 +0100 (CET)
From: Enrico Mioso <mrkiko.rs@gmail.com>
X-X-Sender: mrkiko@mStation.localdomain
To: Adrian Schmutzler <mail@adrianschmutzler.de>
In-Reply-To: <00cf01d59648$fdcf4a50$f96ddef0$@adrianschmutzler.de>
Message-ID: <alpine.LNX.2.21.99999.353.1911081632290.710449@mStation.localdomain>
References: <20190917193029.1336491-1-mrkiko.rs@gmail.com>
 <20191007214054.GA14886@moc6.cz>
 <alpine.LNX.2.21.99999.353.1910080711190.3029597@mStation.localdomain>
 <01d001d582a7$2a3edd90$7ebc98b0$@adrianschmutzler.de>
 <alpine.LNX.2.21.99999.353.1911081610340.709261@mStation.localdomain>
 <00cf01d59648$fdcf4a50$f96ddef0$@adrianschmutzler.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_073321_138234_1D8F1A41 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:329 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mrkiko.rs[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 1.3 MALFORMED_FREEMAIL     Bad headers on message from free email
 service
Subject: Re: [OpenWrt-Devel] [PATCH V2] ath79: add support for TP-Link
 TL-MR6400
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
Cc: Filip Moc <lede@moc6.cz>, openwrt-devel@lists.openwrt.org,
 Koen Vandeputte <koen.vandeputte@ncentric.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

thanks Adrian!

Yeah sure, I'll do this soon (e.g.: tomorrow, if all goes according to plans).

thanks again,

Enrico


On Fri, 8 Nov 2019, Adrian Schmutzler wrote:

> Date: Fri, 8 Nov 2019 16:27:11
> From: Adrian Schmutzler <mail@adrianschmutzler.de>
> To: Enrico Mioso <mrkiko.rs@gmail.com>, openwrt-devel@lists.openwrt.org
> Cc: Filip Moc <lede@moc6.cz>, openwrt-devel@lists.openwrt.org,
>     Koen Vandeputte <koen.vandeputte@ncentric.com>
> Subject: RE: [OpenWrt-Devel] [PATCH V2] ath79: add support for TP-Link
>     TL-MR6400
> 
>> -----Original Message-----
>> From: openwrt-devel [mailto:openwrt-devel-bounces@lists.openwrt.org] On
>> Behalf Of Enrico Mioso
>> Sent: Freitag, 8. November 2019 16:14
>> To: openwrt-devel@lists.openwrt.org
>> Cc: Filip Moc <lede@moc6.cz>; openwrt-devel@lists.openwrt.org; Koen
>> Vandeputte <koen.vandeputte@ncentric.com>
>> Subject: Re: [OpenWrt-Devel] [PATCH V2] ath79: add support for TP-Link TL-
>> MR6400
>>
>> Hello all! I am back again on this.
>> First of all - Thank you a lot Adrian for your patience and multiple reviews. I would
>> be happy to have your signoff in the final version of the patch, of course when all
>> of this is fixed.
>> Still - the main issue, that's stopping me from doing / fixing all the rest is related
>> to the fact I am not able to understand what's goin on.
>
> Hi Enrico,
>
> maybe you can send a V3 with the other remarks being addressed and rebased on the base-files split?
>
> So we have more overview to deal with the network stuff ...
>
> Best
>
> Adrian
>

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
