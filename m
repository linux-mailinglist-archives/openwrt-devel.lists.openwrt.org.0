Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36F121C1933
	for <lists+openwrt-devel@lfdr.de>; Fri,  1 May 2020 17:16:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TnTYhLTFkhQaI5L0X0v5h95wU3QarE3Uv4OpGR1VtHM=; b=A/53mVW/ghkLWY
	pg3HOCh7pW9NH32OxP5zVQkf6LIpdrPoG060N8l0CJ2PCwx/110a5dKq9Zyr33ym9gCRk1g1s95Eh
	CZr0OKzLeFFIRrNKs9qk+9NvxeMCANlsS5B0Fq84QdW9cFe8/2dYsYIL+Io6EssJ2WUk0G3pxCso5
	CSYRw77e79KtNPP1ARwmBEsgd057MOpgxyN11+YM97ZAtuOoZ0RdF0V+vHqfvPIiwxOFTC6rQ53hV
	UuHGIzrWRo1F7QlxWdnjlZdjlodxHUV6ahMkyDW2ouAZ16p+C7gvBBQod2Gv6VxVQp1uJ0kw+9NlA
	DUpK2lKdaHbNj7B1XS/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUXOt-0006T2-BY; Fri, 01 May 2020 15:16:27 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUXOl-0006S4-SH
 for openwrt-devel@lists.openwrt.org; Fri, 01 May 2020 15:16:21 +0000
Received: by mail-oi1-x241.google.com with SMTP id j16so6190oih.10
 for <openwrt-devel@lists.openwrt.org>; Fri, 01 May 2020 08:16:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=WoIoxbFTwhJM8gbjcNtD+cJxA5VhnLtJJ3F2F68Vzyo=;
 b=mvWAwqYi3+sPIB1jiW1jpl8H2d8YqG6WanI0sNC+Fl21F5VgR2A2T3byQzGfwINkPW
 f6xAsEcMCu8HDpxcvvqKySGPgH8iNvUIMb54LlBl1DjD92kbf0y2gDmdZJacKYFNADGP
 YvASeYTRINu539IFoiaQdZDVlN0MKoxlksYx4uH+SJzH/e203N3PMXzK7DlkOQLaYfiB
 qzGZryEtrkBv5raVr5b21N9fNP8Flmsg60eu2tnTe57tM4L663pTiptTRbf3G3Ixuno5
 4biAqQEmj3IwZTqMLzwKofx4bqRixVQldhAU2NxBPi8xj6A2SuNHfzAu+pSSTrnsrjX+
 uwWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=WoIoxbFTwhJM8gbjcNtD+cJxA5VhnLtJJ3F2F68Vzyo=;
 b=sqRbrljGK3iXMwcWyIkgzwrQUNEfmQ3joYCX2Okch0rxSNFVxJh+dmLeHXeXwxFcAx
 nqu+Z4i4PRVguy7UASFexg8Bgun6UIfl7neOSrlZsFnPxk3AtfCWzss6enGys8K4TQDY
 TIyQ7HR9iaA7amQLaC5aVxCuQyAV6yAn0nw18nLvvOwGauRtXxOTWwH/XQnqTYmC1jks
 VXRmxP4OzQ9qLFPKGvY/ipwT2YTf9HZzdzcahfYgj/cOod2HIoQmERGe0YZahHnc+i5q
 7ZaKUUkN/g74sAmt7sET9XKjPQVcOTZWgMNYdNVU6hGt0keiUHfFYWS7Iu3m7Nrb0zrP
 38gQ==
X-Gm-Message-State: AGi0PuY2Cr2Cm9L9ys1LYKOLX8NTmXXGttrBk4DgJzwVaJDnr+QrWz0D
 43jISVsKAGG5EV+bps0lMezorZCqRVOdSD3ADKK1bHAT6g8=
X-Google-Smtp-Source: APiQypJReh0ZwFHXArvIim/Ycr30b2D8wwCfJ3C873kYDnIFfTNgqP8glN3+ZvMXyll3Z/GLk8J03YQZaWsQUgachh4=
X-Received: by 2002:aca:f482:: with SMTP id s124mr58915oih.128.1588346177068; 
 Fri, 01 May 2020 08:16:17 -0700 (PDT)
MIME-Version: 1.0
References: <CAAP7ucJV2RR-RbuihK8tAa2vxed44ngOYOZ4g_UqTgpc1cEBfQ@mail.gmail.com>
In-Reply-To: <CAAP7ucJV2RR-RbuihK8tAa2vxed44ngOYOZ4g_UqTgpc1cEBfQ@mail.gmail.com>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Fri, 1 May 2020 23:16:06 +0800
Message-ID: <CAJsYDVLaGpsgwHvKCgP2WngP0VQo8G_eDJ-sf+jk4R80EFoLng@mail.gmail.com>
To: Aleksander Morgado <aleksander@aleksander.es>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_081619_933643_8B4CA043 
X-CRM114-Status: GOOD (  14.09  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gch981213[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [gch981213[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Hi!

On Fri, May 1, 2020 at 9:48 PM Aleksander Morgado
<aleksander@aleksander.es> wrote:
>
> Hey Mantas,
>
> I'm working on porting your 4-byte opcode support fix for the w25q256
> (in openwrt git master, 4745969ad7c0cb65f55c8de1f05eba786ca27f71) to
> the 4.14 kernel used in 19.07 for the Lima board.
>
> The port is relatively easy just adding the post-bfpt parsing hook,
> but I'm stuck much earlier than that. In the Lima board I'm testing
> with (with a w25q256jv), the BFPT parsing is not even done. I've added
> several logs along the spi-nor codebase to see why that happened, and
> surprisingly the SFDP header version check done in
> spi_nor_parse_sfdp() is failing; the header version read is 0xff000010
> (??)
>
> [    0.862552] m25p80 spi0.0: found w25q256, expected m25p80
> [    0.868205] m25p80 spi0.0: running spi_nor_init_params...
> [    0.873799] m25p80 spi0.0: info->flags SPI_NOR_DUAL_READ |
> SPI_NOR_QUAD_READ: yes
> [    0.881522] m25p80 spi0.0: info->flags !SPI_NOR_SKIP_SFDP: yes
> [    0.887553] m25p80 spi0.0: will parse SFDP
> [    0.891780] m25p80 spi0.0: parsing SFDP...
> [    0.896047] m25p80 spi0.0: SFDP header version check failed...
> signature 0xff000010 (!= 0x50444653), major 0 (!= 1)
> [    0.916268] m25p80 spi0.0: running spi_nor_setup...
> [    0.921319] m25p80 spi0.0: enabling 4 byte addressing mode...
> [    0.927294] m25p80 spi0.0: w25q256 (32768 Kbytes)
>
> The outcome is that the 4-byte opcode is not enabled and the spi-nor
> ends up running in 4-byte addressing mode instead. Any idea or hint
> why this could be happening? Does the 0xff000010 header version value
> ring any bell?

That's the first word of flash content, not sfdp header. You are hit
by a flash reading patch for ath79-spi driver.[0]
spi_flash_read interface is used by both flash data reading and
SFDP reading. However this patch only handles the former case
and returns flash data when reading SFDP table.
To fix this problem, you need to check opcode in
ath79_spi_read_flash_data and return -ENOTSUPP on SFDP
reading request.

[0] https://git.openwrt.org/?p=openwrt/openwrt.git;a=blob;f=target/linux/ath79/patches-4.14/461-spi-ath79-add-fast-flash-read.patch;h=7c24fc5e14e593e8945789c2ac3e37bd14ad92be;hb=33732f4a9c17921b782167a0dcaba9703d4e6753
-- 
Regards,
Chuanhong Guo

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
