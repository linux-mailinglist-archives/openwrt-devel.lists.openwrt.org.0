Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E89D7185C4C
	for <lists+openwrt-devel@lfdr.de>; Sun, 15 Mar 2020 13:15:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AKsMGD0KvEEgfHgtGUTHM0a3wtAsHLBrgvLMs5NYCTU=; b=V+5L2ubWVFB4mJ
	kITGZZ7RoPxhkTxRZuluYpCdn5zpDKqcikOtwdiMk+jDRaoMHqpt+DjJFVWVxpgpwA/LQWJpoagx9
	ysqXlmyVsOZaAKanuDOQsHmFLCxojsQGH4q08SiqfSSJon9tsEHdl2lE7xV1rPbjL48ilBAgA+7en
	7RrwTLlnkw5d2be2MCjf1tSySBmfeNkiQ80mwNSVmA43uCqyYYgYNoBZHyVSdCcO/Z075tRW5nSR8
	ceKKmABUG5wbZeggQIdy9mvNIrzV1SdtLbtLtDw3OrsTNE33ZFE2PLSjHi078KoItXd/9uTVLtvjX
	N+5a7h2+fAjxnpMqPsUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDSAl-0005zl-0x; Sun, 15 Mar 2020 12:15:15 +0000
Received: from smtp-out.xnet.cz ([178.217.244.18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDSAW-0005nE-5Z
 for openwrt-devel@lists.openwrt.org; Sun, 15 Mar 2020 12:15:01 +0000
Received: from [127.0.0.1] (oi.rfid.io [198.211.125.99])
 (Authenticated sender: petr@true.cz)
 by smtp-out.xnet.cz (Postfix) with ESMTPSA id 39EEB3D8E;
 Sun, 15 Mar 2020 13:14:57 +0100 (CET)
Date: Sun, 15 Mar 2020 12:14:55 +0000 (UTC)
From: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
To: Robert Marko <robert.marko@sartura.hr>
Message-ID: <69406b55-912e-4195-990d-eb077d7dd827@localhost>
In-Reply-To: <CA+HBbNGbkOFOmo91x_Di3BNtxfuzExLmf=G8S=+7FObcn7wqsQ@mail.gmail.com>
References: <20200303191931.917613-1-robert.marko@sartura.hr>
 <CA+HBbNGbkOFOmo91x_Di3BNtxfuzExLmf=G8S=+7FObcn7wqsQ@mail.gmail.com>
MIME-Version: 1.0
X-Correlation-ID: <69406b55-912e-4195-990d-eb077d7dd827@localhost>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200315_051500_363160_559F43AD 
X-CRM114-Status: UNSURE (   8.59  )
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
Subject: Re: [OpenWrt-Devel] [PATCH 1/2] ipq40xx: 5.4: fix networking PHY
 driver
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Mar 15, 2020 12:42:59 Robert Marko <robert.marko@sartura.hr>:

> On Tue, Mar 3, 2020 at 8:19 PM Robert Marko <robert.marko@sartura.hr> wrote:
>
> >
> > In 5.4 kernel old u32 array way of setting network features was dropped and linkmode is now the only way.
> > So lets migrate the PHY driver to support linkmode.
> > Also, now in order for gigabit to work, PHY driver needs to advertise PHY_GBIT_FEATURES instead of PHY_BASIC_FEATURES
> >
> >
> Any chance of merging this?
> Without this networking is broken in 5.4

I wanted to merge this few days ago (hopefully you got notification from Patchwork that the patches are under review already), but unfortunately my nbg6617 ended up in the bootloop due to some OOPs in the edma_axi_probe() so I would like to sort this out first, but didn't find more time to look at this in more detail yet.



_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
