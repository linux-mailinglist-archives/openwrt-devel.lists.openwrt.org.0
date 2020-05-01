Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93DCA1C1BFA
	for <lists+openwrt-devel@lfdr.de>; Fri,  1 May 2020 19:38:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vXZcSkRNoecgmfJj59gLR6zGQNC8phATwY5QXS7vZQo=; b=hWCM/MHAVYyzJN
	a4m+IgSGdG+uN36KIhtm/ttbKE57RY+pyAOBphNQsjBSX5oKmvqop06nIEeadIP7Dy2FHPCR7jTjp
	ItUBTTVjuGJ7mn34kZ9SBEa6p+ZIxHIHS3FRxLfFxyQGiNyw1WXVZyrISsf7lLUiSjn5lo1ouPf0r
	wlksfgQzxLV1YleDwPymQOQBF3QvkOxkMt5dFH2c8nd5GC7x9CXD9dOPQrOQ87EIhLuqDxLF/zjb2
	mARrIhrdoIUqIBa6NlUgMa4bJb5bAJPeRFrpfQc0rofjFDTU2XC/FS4GMaQrWVO4V0NR5u/gEt+pe
	KEfqZIu05Z0Tx9Q9mVCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUZch-00076D-NK; Fri, 01 May 2020 17:38:51 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUZcb-00075L-AK
 for openwrt-devel@lists.openwrt.org; Fri, 01 May 2020 17:38:47 +0000
Received: by mail-il1-x142.google.com with SMTP id c16so5109834ilr.3
 for <openwrt-devel@lists.openwrt.org>; Fri, 01 May 2020 10:38:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aleksander-es.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ttajY5FQV0FYzHwK7YH76/dDF7WxJFTquAr3kQrtCTU=;
 b=Vburz69SZqC0i2KI94u79Wl2brURWQlI9Fko/J7mfH/UUHmGAuWGeRE9b0/H03UOXd
 k/Fv4viqbaFuKxeiAvkbqmASqT9r4Yy4ziy87irBZIYeAj96si8cGjUhdh2efCjpIUxZ
 5Q3f+CuAbum/6zro4Yq7yi0nbY3Z7BX3YQOQvgQhoBDYe7jfOSoIDpVqJCgPonBd3kmz
 x6wguHAdTznW9PJ8Jw1aPh2kEPPYKXvwEoG3baFpPyqJqFGB4WmVH4d++ibx/mjs/H0w
 vYXrgWhsA13MYGZQLF3Y1ozy93eoy1I0catdKLYTQGQwzdB9dw4jK8a1fw5nNFW8MAUf
 Nj1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ttajY5FQV0FYzHwK7YH76/dDF7WxJFTquAr3kQrtCTU=;
 b=AlzsEkyRbKUAD5Os5Oj7zbg89NOoDlmNqTXAEfkqBXsefGAfXzQaQCpeQoZLoE5WBx
 BGdb6JhP4ITTCBSRbyh0R1YLqTI5897a9VtViw9KHSlJXrFoJ6zPuGtGCno1a9BROgwW
 +XgcVprnTTbI8LND58ZllchjmfIb88wHhNXMZDMXIAAKZaTPXHu0IE0aYaxPQNgyZNCv
 LEoJXNy1Mb3335O9pgNVjME0X+8txzvdoc32yehQqmiH6gbsTWnN90OxXtU1sPbFzSaX
 YgsMBQ99ZPOERwg4dYsVBz83LhzOwm7DTLZT2zyzkL6ZyuXJBLmWnMMQWY06XJVhcpEp
 ij2A==
X-Gm-Message-State: AGi0PuYymIK7nthpriaSEYpdnybsR54+amvo+Rdh0Cwvpg13DVe85zUw
 OJxsn7CN/P8LppNsxSOeJfPTzzRr37r/EQehvZhmdA==
X-Google-Smtp-Source: APiQypIxQC7idSVZ9XV3PnEjIly6gxT3tWr8qf6vA9tagaqik694ysrTymliS8P34s/d/Mjt26I+sWuQNZ2bP12sOMI=
X-Received: by 2002:a92:d6c6:: with SMTP id z6mr4587668ilp.32.1588354724516;
 Fri, 01 May 2020 10:38:44 -0700 (PDT)
MIME-Version: 1.0
References: <CAAP7ucJV2RR-RbuihK8tAa2vxed44ngOYOZ4g_UqTgpc1cEBfQ@mail.gmail.com>
 <CAJsYDVLaGpsgwHvKCgP2WngP0VQo8G_eDJ-sf+jk4R80EFoLng@mail.gmail.com>
In-Reply-To: <CAJsYDVLaGpsgwHvKCgP2WngP0VQo8G_eDJ-sf+jk4R80EFoLng@mail.gmail.com>
From: Aleksander Morgado <aleksander@aleksander.es>
Date: Fri, 1 May 2020 19:38:33 +0200
Message-ID: <CAAP7ucJvahn+4QwvCCFLZodNPxh8gd-rpAOnJO-5Zyxk7sQq=w@mail.gmail.com>
To: Chuanhong Guo <gch981213@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_103845_426381_0E6D006A 
X-CRM114-Status: GOOD (  19.11  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] Issues backporting 4-byte opcode support for
 w25q256 fix to 4.14 kernel and Lima board
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>, mantas@8devices.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

Hey!

> > I'm working on porting your 4-byte opcode support fix for the w25q256
> > (in openwrt git master, 4745969ad7c0cb65f55c8de1f05eba786ca27f71) to
> > the 4.14 kernel used in 19.07 for the Lima board.
> >
> > The port is relatively easy just adding the post-bfpt parsing hook,
> > but I'm stuck much earlier than that. In the Lima board I'm testing
> > with (with a w25q256jv), the BFPT parsing is not even done. I've added
> > several logs along the spi-nor codebase to see why that happened, and
> > surprisingly the SFDP header version check done in
> > spi_nor_parse_sfdp() is failing; the header version read is 0xff000010
> > (??)
> >
> > [    0.862552] m25p80 spi0.0: found w25q256, expected m25p80
> > [    0.868205] m25p80 spi0.0: running spi_nor_init_params...
> > [    0.873799] m25p80 spi0.0: info->flags SPI_NOR_DUAL_READ |
> > SPI_NOR_QUAD_READ: yes
> > [    0.881522] m25p80 spi0.0: info->flags !SPI_NOR_SKIP_SFDP: yes
> > [    0.887553] m25p80 spi0.0: will parse SFDP
> > [    0.891780] m25p80 spi0.0: parsing SFDP...
> > [    0.896047] m25p80 spi0.0: SFDP header version check failed...
> > signature 0xff000010 (!= 0x50444653), major 0 (!= 1)
> > [    0.916268] m25p80 spi0.0: running spi_nor_setup...
> > [    0.921319] m25p80 spi0.0: enabling 4 byte addressing mode...
> > [    0.927294] m25p80 spi0.0: w25q256 (32768 Kbytes)
> >
> > The outcome is that the 4-byte opcode is not enabled and the spi-nor
> > ends up running in 4-byte addressing mode instead. Any idea or hint
> > why this could be happening? Does the 0xff000010 header version value
> > ring any bell?
>
> That's the first word of flash content, not sfdp header. You are hit
> by a flash reading patch for ath79-spi driver.[0]
> spi_flash_read interface is used by both flash data reading and
> SFDP reading. However this patch only handles the former case
> and returns flash data when reading SFDP table.
> To fix this problem, you need to check opcode in
> ath79_spi_read_flash_data and return -ENOTSUPP on SFDP
> reading request.
>
> [0] https://git.openwrt.org/?p=openwrt/openwrt.git;a=blob;f=target/linux/ath79/patches-4.14/461-spi-ath79-add-fast-flash-read.patch;h=7c24fc5e14e593e8945789c2ac3e37bd14ad92be;hb=33732f4a9c17921b782167a0dcaba9703d4e6753

That worked! I updated the read_flash_data() with the same logic found
in git master for kernel 5.4, looking like this:

diff --git a/drivers/spi/spi-ath79.c b/drivers/spi/spi-ath79.c
index 131e15b6b577..cf0b13a06443 100644
--- a/drivers/spi/spi-ath79.c
+++ b/drivers/spi/spi-ath79.c
@@ -214,7 +214,7 @@ static int ath79_spi_read_flash_data(struct spi_device *spi,
 {
        struct ath79_spi *sp = ath79_spidev_to_sp(spi);

-       if (msg->addr_width > 3)
+       if (msg->addr_width > 3 || msg->dummy_bytes != 1 ||
msg->read_opcode != 0x0b)
                return -EOPNOTSUPP;

        /* disable GPIO mode */

And that seems to have solved the problem with reading the SFDP.
Hopefully these changes aren't breaking anything else.

-- 
Aleksander
https://aleksander.es

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
