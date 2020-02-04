Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A536515226B
	for <lists+openwrt-devel@lfdr.de>; Tue,  4 Feb 2020 23:36:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:
	References:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QN6zKYGiSmONVixQJVZ0XwU3O8kRveCm3OxgdwtOH/c=; b=HDEFlTh2xgeLV/
	VSBM/0BAgxhTyiHggIpo2QIid5o0r5BPofzf6x88MQv9frDJ99Tv6qnehXnh785nkEkrKxN3amdKv
	aRLLJ8/Z/eG5gzNYnsMeNhiVGg8xc35y4qo+xW14WQn8sS51YczYTri5zcw/Fs4lhtJ6Qb5f0xnoQ
	cAcUe5a6kTUuakeebqEqvcUo2BkIpmYTyRa+HFf2pMZ/e64dZB4mWCNvyVDyuXfTI9rl2bs5pk22/
	jOyynkNaVU2nilhjzipx1mNyoqeNbUpvhFRylsgei2XoOibZsFQgsUFAo/2JIUqK61aNvj88RjS+W
	D8qten5h5qOgzWUXfeeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz6nm-0003Xm-Im; Tue, 04 Feb 2020 22:36:14 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz6nf-0003XC-Lf
 for openwrt-devel@lists.openwrt.org; Tue, 04 Feb 2020 22:36:09 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92.2) (envelope-from <daniel@makrotopia.org>)
 id 1iz6nc-0006AR-Nm; Tue, 04 Feb 2020 23:36:05 +0100
Date: Wed, 5 Feb 2020 00:34:27 +0200
From: Daniel Golle <daniel@makrotopia.org>
To: Piotr Dymacz <pepe2k@gmail.com>
Message-ID: <20200204223427.GC4491@makrotopia.org>
References: <20200202163756.GA9941@makrotopia.org>
 <78ab693a-0913-e70b-e7b4-557cb51df386@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <78ab693a-0913-e70b-e7b4-557cb51df386@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_143607_709528_D89C825E 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
Subject: Re: [OpenWrt-Devel] [PATCH 3/3] ath79: add support for Teltonika
 RUT955
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
Cc: openwrt-devel@lists.openwrt.org,
 Adrian Schmutzler <mail@adrianschmutzler.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi Piotr,

On Mon, Feb 03, 2020 at 11:51:29PM +0100, Piotr Dymacz wrote:
> Hi Daniel, Adrian,
> 
> See my comments inline.
> 
> On 02.02.2020 17:41, Daniel Golle wrote:
> > The Teltonika RUT955 is an industrial 2G/3G/4G WiFi router with
> > various additional inputs and outputs.
> > 
> > Specification:
> > 
> > - 550/400/200 MHz (CPU/DDR/AHB)
> > - 128 MB of RAM (DDR2)
> > - 16 MB of FLASH (SPI NOR)
> > - 4x 10/100 Mbps Ethernet, with passive PoE support on LAN1
> > - 2T2R 2,4 GHz (AR9344)
> 
> Have you tested RF sensitivity? I remember external GPIO-driven LNA in
> RUT900 has to be defined, otherwise the radio was almost deaf.

Seems like RUT955 hasn't got that external LNA.
The GPIO line (2) used for that in mach-rut9xx.c is used for DIN3
digital input on the RUT955 board...
Signal level seems very ok:
laptop 4m away from device:		signal: -38 [-42, -41] dBm
phone in other room (>6m + wall):	signal: -55 [-65, -55] dBm


Cheers


Daniel

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
