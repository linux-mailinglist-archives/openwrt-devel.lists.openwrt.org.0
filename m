Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7F38E013B
	for <lists+openwrt-devel@lfdr.de>; Tue, 22 Oct 2019 11:54:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:Message-ID:
	From:References:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5Tl6t9NWGOaDVQVvDACWftIsZGQyZMJ05XAGHDms1uQ=; b=EybMzo8hKN9F72C5V0c1RtE0n
	dZcj71BD4wZp0Xno6W38SWpzxCPEedtarldNZ4saaz3oAaquciJXCc4hcI8f437crPu73ldvwFwPk
	DBP+Z8UNjoXBpBksaLmXDK44VsaIGEkZmsh8iqMnMhBHXaPx8HlvYXfC8jzAimxWFJJ+iaLA++mug
	BJxviMO+DDvOg74gv0RxOfMuyv5dXhLMta/x4n4h4C19sR1Rjt0RWtkhX8XK32h3XLJCExFtucm5U
	0/ETOmVv2TEB0ern+mK3Gtiwj0yygbafey1++BLfbPCm8uHFyyXFRmM/ViqzTMuTAgH2I2HGvqwt3
	67qTZm21w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMqrv-0001mF-4q; Tue, 22 Oct 2019 09:54:23 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMqrn-0001lX-54
 for openwrt-devel@lists.openwrt.org; Tue, 22 Oct 2019 09:54:16 +0000
Received: from [46.183.103.8] (helo=[172.18.152.140])
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <john@phrozen.org>)
 id 1iMqrj-0001v7-Le; Tue, 22 Oct 2019 11:54:11 +0200
To: vargagab@gmail.com, openwrt-devel@lists.openwrt.org
References: <20191010111525.596862-1-vargagab@gmail.com>
From: John Crispin <john@phrozen.org>
Message-ID: <fdd99d68-5906-68c3-347e-cb31273fbaed@phrozen.org>
Date: Tue, 22 Oct 2019 11:54:04 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20191010111525.596862-1-vargagab@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_025415_354220_EF2CE2B5 
X-CRM114-Status: GOOD (  10.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH v2] ramips: add support for Asus RT-AC65P
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
Cc: ynezz@true.cz, gch981213@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

On 10/10/2019 13:15, vargagab@gmail.com wrote:
> diff --git a/target/linux/ramips/dts/mt7621_asus_rt-ac[68]5p.dtsi b/target/linux/ramips/dts/mt7621_asus_rt-ac[68]5p.dtsi
> new file mode 100644
> index 0000000000..d0f8a4b3ca
> --- /dev/null
> +++ b/target/linux/ramips/dts/mt7621_asus_rt-ac[68]5p.dtsi
> @@ -0,0 +1,159 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT

Hi,
please dont use [] inside the filename
	John

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
