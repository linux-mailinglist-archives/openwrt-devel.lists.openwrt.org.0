Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4566A1A134B
	for <lists+openwrt-devel@lfdr.de>; Tue,  7 Apr 2020 20:05:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j0rLxZlr8sydfBpGq2+WdrJhTkRT3npxzD3EHBhetAw=; b=kfdBBQYac10mBN
	KWDj2/4j1MWdqzyd6DYZxqt2IuNNOmA9IT0JNdsFJ7u9dHzv1CxvCbonK0udXtr1Dc2c657LQ9k5Z
	f9hZk9R4CL9v6TSXLZtwIfih5vLGjRaWmk3SfaC1x33spMAfLtAIFDSfnmhdFOLL2mw3UKWveGfdD
	qqiU/kpA+x5H1Nn5xUgztzdHgY/BgI0E1t0B9gDwYK9tZ6UWUQzUzcfTCfrwsWVDAM6zEUP2o624+
	RJW2OwXxAdlqIEs0YRdrkUYk5RqgyjOjP9vS/O4QlUXAUZfHA0/2SJuWQ1GEJnl8por9rCKl8ZVzX
	WO7mHIXBIplJWGMnd/2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLsbE-0004Ux-Fq; Tue, 07 Apr 2020 18:05:24 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLsb6-0004UH-Bu
 for openwrt-devel@lists.openwrt.org; Tue, 07 Apr 2020 18:05:17 +0000
Received: by mail-ot1-x341.google.com with SMTP id m2so4122575otr.1
 for <openwrt-devel@lists.openwrt.org>; Tue, 07 Apr 2020 11:05:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dSWUgaf5ypMpR6H2jx2+yhy19b9N8QoanLosahJM8Ls=;
 b=TzgsZGMCDhNNR33UTFWx3K+p2/2IgLskdEE+nW7iCkR4gOmcxWau6bAZNOKFddNOsW
 2xtJcL/hKRYSkLmUSmEUXWZhViKcR6bHv9ge+hSiMjTkRcz9stAp31ALeR6blVVHbtP7
 D+3fsDO9kIxE9rJ0cuC4rfyQnx5h7DhkDVuIuvqjn02gjcddmys2PXcamiWibmtTW/aJ
 dSV9oVoZ6swZr4mBwnd/GizynQ5Q1mlCPjW2Pnc7j9jnyDrQj/9eFo5srP0s/M7Uohoy
 E776+ef/alxLUYRvpa2NUFaXU8uyOlhArQ8d2lxDKuR4i+jCWyoR7htGl1UXHJ08eKT8
 cBAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dSWUgaf5ypMpR6H2jx2+yhy19b9N8QoanLosahJM8Ls=;
 b=TYHUJz/BJTqGzfeanoaDj8tfWxqy+Ef5+SpiKBl3Aw7/KVBFqsSEOGdcr7GXm9N6EZ
 8bylGyefLxxdygpBcsr/FtNylgaIHWtOKfoxOfzAvy6vl6SGLaZmj2iCHyznlCTQOvNa
 5YWC/jaSm0jzS9zdluX8c691dz3olOn2C4xdYH2A+4iwq3JMq1/6UCPu5TGPMruINsEr
 ICR5gCyNSLyIrwNwQ9W7RjtL5zhIq50h5ikkK8yBOQm5+mmtIWWEHTl0iQZVpqJ6WskT
 +CXA9vbNc3uOiyS4qv2CKQOWkxhdrcWAIvkC8ytlcGw2p4L5oHWbTRCNVcJNr69ZU7jO
 M+GA==
X-Gm-Message-State: AGi0PuaRsVUh67rWVB1f6b40R4br1AyIzYKRXr+df4qyCf+t8Mt1vlXh
 vjeZmf+wT9OlUEOsMxY49rmqV09OE8XTwc3Kym4=
X-Google-Smtp-Source: APiQypLSb57xE6hR1XuRuzQlXWnxbwhENQT4J2nxDAdb5+X35yfsPSak4IffGamZmMmXX3r/68QDc090QaGGAZyjkzQ=
X-Received: by 2002:a4a:8552:: with SMTP id l18mr2841328ooh.31.1586282714610; 
 Tue, 07 Apr 2020 11:05:14 -0700 (PDT)
MIME-Version: 1.0
References: <82a851f6-1e86-201c-f8d2-7a3c5d915af4@marcant.net>
 <CAJsYDVLEDyEurCgdvm365WtymgOYpO1Lq7O5QcqimcTgH_24jQ@mail.gmail.com>
In-Reply-To: <CAJsYDVLEDyEurCgdvm365WtymgOYpO1Lq7O5QcqimcTgH_24jQ@mail.gmail.com>
From: Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date: Tue, 7 Apr 2020 20:05:03 +0200
Message-ID: <CAMhs-H_VWuxyFF7v9YaJaF1FJ-C-HSD9nS93mTd58RwrRMEtbA@mail.gmail.com>
To: Chuanhong Guo <gch981213@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_110516_429985_CE34F891 
X-CRM114-Status: GOOD (  16.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sergio.paracuellos[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] ramips/mt7621 after 5.4 switch
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Andre Valentin <avalentin@marcant.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hi,

On Tue, Apr 7, 2020 at 12:16 PM Chuanhong Guo <gch981213@gmail.com> wrote:
>
> [CC Sergio who worked on upstream PCIE driver]
>
> On Tue, Apr 7, 2020 at 4:45 PM Andre Valentin <avalentin@marcant.net> wrote:
> >
> > Hi!
> >
> > Currently I'm having some serious problems with the new 5.4 port.
> > 1) PCIe
> > I'm developing on the ZyXEL LTE3301-PLUS. It has PCIe and a mt7615e connected to second bus on the first phy.
> > If booting the device, kernel hangs with a RST message, telling the device is not detected. It seems the PCIe bus 1
> > cannot be reseted because nothing is connected to bus 0.
> > An upport of the old PCI driver reenables the function. I can provide more logs on this if needed.

Logs and dmesg traces are always welcome and would be helpful. Both
working and not working traces.

>
> Hi Sergio:
> You may want to look into this.
>
> > 2) DSA
> > These are my first experiments with DSA. I've configured 2 bridges:
> > lan: lan1 lan2 lan3 lan4
> > dmz: lan1.20 lan2.20 lan3.20 lan4.20
> >
> > Inbound traffic on vlan 20 is comming in, outgoing traffic passes the lan1 port but does note arrive at the other end.
> >
> > Should this work with DSA on mediathek?
>
> It's supposed to work so this may be yet another bug upstream.
>
> > If not, I can offer that I write a patch for traditional swconfig.
>
> swconfig is considered deprecated so there's no need to do so.
> In fact, this driver under mediatek target also works for mt7621:
> target/linux/mediatek/files-5.4/drivers/net/phy/mtk/mt753x
>
> --
> Regards,
> Chuanhong Guo

Best regards,
    Sergio Paracuellos

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
