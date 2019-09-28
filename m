Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16C23C0F38
	for <lists+openwrt-devel@lfdr.de>; Sat, 28 Sep 2019 03:39:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CxmQJrdLVUbvw4d1viJGh34UgxHypb/o05WZV+ZDq/g=; b=HAeboYX3bG7Y9M
	fsW/J8KETPm+OVlkmusgSHLFYEUHrkmp8wmW3F+vHKSjvRiREjYUOpmnihGn4p+4dIBbP2VU4i8kK
	X5KWXZE1YQH0LEy5cy0jgYWHls5WKM3iDIxT33xirnzGVMVI6LMRrEMF2V9Q66XVAtPvlSTgRqlwW
	uM406HkV4D7E4zUl4KQ3BXyy/cOW70SpfxOut8KoE5iVaH4Kr073PIf7Wd88obbAmB/C3KFVunTl6
	hrNEY7fgRiBc0Ci4c61uChv0TTsBVMIoY6URccJv2CqIecoxSL2Hv4nD1DWCCjWw0UuBQ0kTSumUC
	NezTJHLLP6myBLPqlYfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iE1i8-0005ig-9y; Sat, 28 Sep 2019 01:39:48 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iE1i3-0005iM-7T
 for openwrt-devel@lists.openwrt.org; Sat, 28 Sep 2019 01:39:44 +0000
Received: by mail-ot1-x342.google.com with SMTP id g13so3855664otp.8
 for <openwrt-devel@lists.openwrt.org>; Fri, 27 Sep 2019 18:39:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Uo2lz0ypBuhjTJD6YPCoMptam124VHRPQQz+ZJ5v2rI=;
 b=MDn7SLzJjzUb+GRSAcUCJYfVYnaEc/C5Zk0eRZpxksYS2MdFqW/lSULKp4FkP08ATu
 xIdpTTISt1IOms5Vf6AfSINixAEeXBfTgHw1cRDb03yOyg3z53RcB1IZVC/czqCbHfQI
 N38v3/oiThHfkpST6ItlU40RwwUGM8oogyjgBYknVxcQHsyaGxQvWxs4xh8MEFAM2QRG
 20ZlZi512fSZEzhaCzapH3EkTVWoF6FZ1WdDCHJ0vHyOKG06tKmkipQ2dyasnCVK6JIF
 GzcDCO5Qqgw2ejCF8S7OGC7tTPWSonZPVWH4J+TK/2MeObDJcsMhMmlOxwncfht0KWbz
 DvtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Uo2lz0ypBuhjTJD6YPCoMptam124VHRPQQz+ZJ5v2rI=;
 b=Ye2/Tp4FL5BabMerhemaytBz8r6ojG22+oW2bvLXWaR+rGWWBGhuPL6c04StztAk+f
 tSqCh99Rj/S4Sw1Wa0mV9CROLcuhZfrjGAK03Zy72EvIvopbfXJqLy/K6nbf/0tGy6Ej
 aQ+T6+Ivwf2J9Qz3HYJYV6L4Uz5KtaOm4LGKfKY5+z/Ne2zjLqS3WJC/b+JBeZDr/l6C
 WuA+TfXWmLbKfZWD1WMCuUkmgs/eOPi9c6x3czDKw2xO7UArJR7Ul726LqEZy1g+0S/v
 O7KWiZr/bT9dChCZyjPWC6hdHiK7DnI8WxTQHHznyYxA+DITnON2P2PNLRTvKqIMHZAv
 6BQQ==
X-Gm-Message-State: APjAAAVLXcROmSiq3DTwYGpKv9ZDS8IaYEmt+nVZQ3otInZ+MxkWJg2o
 981GDuFsKpweI3fVCk8RX8Wr+o7OeOEDnuJexxk=
X-Google-Smtp-Source: APXvYqxl49tYwkkEYfOxq4BPnKXQBku6Mu3Vmdky1gTB0wbyaBqQ+ZmKw9URwRqNPiYqKxioQSi+I7J+tbOzc6jwgxs=
X-Received: by 2002:a9d:4b8c:: with SMTP id k12mr5674725otf.86.1569634781133; 
 Fri, 27 Sep 2019 18:39:41 -0700 (PDT)
MIME-Version: 1.0
References: <20190927163322.10386-1-lede@allycomm.com>
In-Reply-To: <20190927163322.10386-1-lede@allycomm.com>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Sat, 28 Sep 2019 09:39:29 +0800
Message-ID: <CAJsYDV+OexhmkTSN4KppYzr_LSUdzapEAooPJBMRZ7tKrDy+kA@mail.gmail.com>
To: Jeff Kletsky <lede@allycomm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_183943_292768_F476CE38 
X-CRM114-Status: UNSURE (   7.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gch981213[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gch981213[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH 0/1] ath79: Restore GL.iNet
 GL-AR300M-Lite first-boot connectivity
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

Hi!

On Sat, Sep 28, 2019 at 12:33 AM Jeff Kletsky <lede@allycomm.com> wrote:
> [...]
> As suggested by Alberto Bursi in the linked thread, one approach to
> resolution would be to disable the "unused" interface, GMAC1. This
> would have the additional advantage of removing the unconnected
> interface from the kernel and end-user visibility. By disabling GMAC1,
> it was expected that GMAC0 would be identified by the kernel as "eth0"
> as the sole Ethernet interface visible.
>
> &eth1 {
>        status = "disabled";
> };
>

To disable GMAC1, you should use the following:
&eth1 {
       compatible = "syscon", "simple-mfd";
}

Regards,
Chuanhong Guo

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
