Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EDE318823
	for <lists+openwrt-devel@lfdr.de>; Thu,  9 May 2019 12:04:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:
	MIME-Version:References:Message-ID:To:From:Date:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=IDDsOPn44hO3HzfdJkTlCN/+YGOufH+odkSdpWXc+4I=; b=i8q97KrIm8MlOZKnFae703daDY
	lm0eXHENdvslD5QP1j+dNvzXGPKPDgYnBiXPBWbczqbhWAJosqaO2CjCNQ5TrW/QuDgUm5Mvjlwx1
	dL3PlE4wUd89f+qvQNyPQR1griAMXbv8kcjxF6+n0FnTG/zroVg23SSbl77qiSA/48QSO77C9xkIe
	hInqZNn9RELoMslkHFcVgDAoK1f01rMHy/uL68FLGFKkiEsd1ppzFqvoKRdEAijXvpp9035cEzCdg
	BVPFDEkBuqkdLDhODFbgyVKEgqgOYfKlLDdmjIRZvZvBJcSwQTfLtx4sCruBZlUXx6SDTyDeudhVg
	/mg4Z26g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOfv4-0001s3-Ea; Thu, 09 May 2019 10:04:54 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOfut-0001rY-Jk
 for openwrt-devel@lists.openwrt.org; Thu, 09 May 2019 10:04:47 +0000
Received: from meh.true.cz (meh.true.cz [108.61.167.218])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 962B64C31;
 Thu,  9 May 2019 12:04:40 +0200 (CEST)
Received: from localhost (meh.true.cz [local])
 by meh.true.cz (OpenSMTPD) with ESMTPA id 42df4ff4;
 Thu, 9 May 2019 12:04:39 +0200 (CEST)
Date: Thu, 9 May 2019 12:04:39 +0200
From: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
To: Jeff Kletsky <lede@allycomm.com>
Message-ID: <20190509100439.GQ81826@meh.true.cz>
References: <4dfc32e2-d65b-5a93-f04e-91d80d94bf50@allycomm.com>
 <CAOX2RU4Ae_GRq+_P1RGt0=BgnodSfoT_uHkjZxTwsf5mPobLgg@mail.gmail.com>
 <5a135cb6-bb49-ee37-a4d4-85911fc9b667@allycomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5a135cb6-bb49-ee37-a4d4-85911fc9b667@allycomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_030445_891456_F28A0D9C 
X-CRM114-Status: UNSURE (   5.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [178.217.244.18 listed in list.dnswl.org]
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
Subject: Re: [OpenWrt-Devel] Build system puzzles: PCI_SUPPORT not being set
 for subtarget
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Robert Marko <robimarko@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Jeff Kletsky <lede@allycomm.com> [2019-05-09 11:23:18]:

> I reconfirmed that
> 
>   openwrt/target/linux/ath79$ cp generic/config-default nand/config-default
>   openwrt$ cat /dev/null > .config
>   openwrt$ make menuconfig
> 
> has the same behavior -- the nand target does not set PCI_SUPPORT

it works here(tm):

 CONFIG_TARGET_ath79=y
 CONFIG_TARGET_ath79_nand=y
 CONFIG_TARGET_ath79_nand_DEVICE_glinet_gl-ar300m-nand=y
 CONFIG_ATH10K-CT_LEDS=y
 CONFIG_DRIVER_11AC_SUPPORT=y
 CONFIG_PACKAGE_kmod-ath10k-ct=y
 CONFIG_PACKAGE_kmod-hwmon-core=y

-- ynezz

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
