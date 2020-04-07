Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76D941A0AE9
	for <lists+openwrt-devel@lfdr.de>; Tue,  7 Apr 2020 12:16:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QuFXlvaKwQWAnTQ3OVGdzMN1KbQrDgG5CRI+n+yPIZs=; b=hE+vpC0WYtY/JC
	fqH66cZj7u/tsIxYoFYs/4Oox1mR83yJZqkFdh0vrQWUgl38Mc2nMOyxcDBWDsh3wqJt4VVNeQj5D
	IXjvxhYmRHLTSKeZAxYeizWa8samyz8+Xu76QKbLqHUBOVtKL2nANX0zU2VYBWHI7PSgltCqxWnGl
	EpGv1JdESs46v7uyvqGbwqNI4wM5rLxUf8v3mVaPMUzb2KccA0p4fWRVPMa0o2/LF7NrAE+ByRdSr
	9FoYJ+HpKORqExgVJMEmNa0tKFGzHIn6nwMCDIa2Ltdivy0oRqA3KNwMQ0PC0OmyayBsNZeOR5Hm0
	5RzNwunQn7xtZptzo5ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLlHY-0000xV-O6; Tue, 07 Apr 2020 10:16:36 +0000
Received: from mail-ot1-x336.google.com ([2607:f8b0:4864:20::336])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLlHQ-0000x1-Ta
 for openwrt-devel@lists.openwrt.org; Tue, 07 Apr 2020 10:16:30 +0000
Received: by mail-ot1-x336.google.com with SMTP id l23so2551927otf.3
 for <openwrt-devel@lists.openwrt.org>; Tue, 07 Apr 2020 03:16:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Fvy4w1XPn4VOuW2cZT9Jjt5LUSu3yV1cszet1l0WfvE=;
 b=kiemuW3gyjVN+p86ugSUP5B+/B/UZGV6rBO3J9Y63cjK1GpMb9+EDbugx/4BPH3HKo
 VyeHSvG58/8+UQcG7fJPSCyWYVvKNFtgII22ZB2FhYRGfz9WRwuJFmnpDTlEfUF4b3ti
 1CF8/p9P/QT383hoyLJL9cb7OcPwR/I2Zlg/DFypdNnhMS3QBWeheAymZkrplNwwM4gL
 nqoGN0YMSF3wmVnNvFeTjEU80o/G1AQjc/uELqqTWubFHugYCkBUvPLpT6rBGNPtlayD
 ZCbgqYj89OLC8BdNQUfVxLuz7n+nkSDXgYyF5WJqO8r5JRjhkssoHhmB+VKqC2wF6lfD
 lohQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Fvy4w1XPn4VOuW2cZT9Jjt5LUSu3yV1cszet1l0WfvE=;
 b=fptz7+Kdvf5h5kdQnTgAv24INwCc66e1ZiEvq1g4/OMttHpnpSOr/0uae8XFJf0N05
 iSTCtB1rb10yZ/2aHngG1NkR+VvnjjNQxsrilxX9IJyAkG4ohelsv8A9WhiF+SksJkAd
 A/qreJVT8kmOk4nygVYLtEQ7MRaecB8Tj3FbyCM1ID8NkohXoxIk6atw2YMbi2j4QuR6
 wzaEciNS+yLiFQpugp7pU0ClhVvRUbzUogNwofhTTeTiFqpWYl+2l0eH6EidxMfL9aWL
 xC5SrK78SDkvUu5VaM2nPh8GRKRIDRVtYNrN3iKU5x9Wtu19APdfXEIExpZ8pE9/aOBO
 Q5+A==
X-Gm-Message-State: AGi0PubbSM+WTlg3Yn/XjbS2/jWFkieoF3Opzb7KS7UO0Gd2jUS/xtvY
 4uxvJ3IT89bTqjEvI5605aQw1I5xErtmbPnrk98=
X-Google-Smtp-Source: APiQypIz4vmL+2W59dYOSmdrbSoQ806FpEPXkH5B1uSdYbor5oO8YfVJfNwWi42yvTOa11WNTEkWM893vP8rfc9cNXc=
X-Received: by 2002:a4a:c595:: with SMTP id x21mr1263548oop.10.1586254587636; 
 Tue, 07 Apr 2020 03:16:27 -0700 (PDT)
MIME-Version: 1.0
References: <82a851f6-1e86-201c-f8d2-7a3c5d915af4@marcant.net>
In-Reply-To: <82a851f6-1e86-201c-f8d2-7a3c5d915af4@marcant.net>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Tue, 7 Apr 2020 18:16:16 +0800
Message-ID: <CAJsYDVLEDyEurCgdvm365WtymgOYpO1Lq7O5QcqimcTgH_24jQ@mail.gmail.com>
To: Andre Valentin <avalentin@marcant.net>, 
 Sergio Paracuellos <sergio.paracuellos@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_031628_954637_89B15F01 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:336 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gch981213[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [gch981213[at]gmail.com]
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

[CC Sergio who worked on upstream PCIE driver]

On Tue, Apr 7, 2020 at 4:45 PM Andre Valentin <avalentin@marcant.net> wrote:
>
> Hi!
>
> Currently I'm having some serious problems with the new 5.4 port.
> 1) PCIe
> I'm developing on the ZyXEL LTE3301-PLUS. It has PCIe and a mt7615e connected to second bus on the first phy.
> If booting the device, kernel hangs with a RST message, telling the device is not detected. It seems the PCIe bus 1
> cannot be reseted because nothing is connected to bus 0.
> An upport of the old PCI driver reenables the function. I can provide more logs on this if needed.

Hi Sergio:
You may want to look into this.

> 2) DSA
> These are my first experiments with DSA. I've configured 2 bridges:
> lan: lan1 lan2 lan3 lan4
> dmz: lan1.20 lan2.20 lan3.20 lan4.20
>
> Inbound traffic on vlan 20 is comming in, outgoing traffic passes the lan1 port but does note arrive at the other end.
>
> Should this work with DSA on mediathek?

It's supposed to work so this may be yet another bug upstream.

> If not, I can offer that I write a patch for traditional swconfig.

swconfig is considered deprecated so there's no need to do so.
In fact, this driver under mediatek target also works for mt7621:
target/linux/mediatek/files-5.4/drivers/net/phy/mtk/mt753x

-- 
Regards,
Chuanhong Guo

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
