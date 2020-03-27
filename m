Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3BE1195748
	for <lists+openwrt-devel@lfdr.de>; Fri, 27 Mar 2020 13:41:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JPRHD36R6QMhsh3rsy0geaFyUCPFu3zHU+/mXN+sxYg=; b=oBNrSqPv2Q3EWv
	DncJx94EwQrarPa84vAuKG+QcApkS+rda6stvnRnuFnMKhIfcLmnNW9lPOB/gHxZ1YLn5ow2wXVaG
	zel7NF1CinOq9XLF6chzokMonivISs8r86aiZwLGweVhvkVOtZw7iNhDD6B/D/9PQycfYR82aDIBN
	wSh4M8c8OZcQIlF3sEZHzb7j99mB9sbC2bFCvglmF6y9eF4pdAoWDE5lYVLfj9h0s5/uVFe1Kkc9Z
	8HT2Uq2ZUQXonTvXrn1Kx9CADHr4Nzu/fxZ+pThVR/ZSmpY1L9fw/7tmUuusyzGBIuTJdt7keWDM2
	7qGB3v9ugwep3UunnfSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHoJ9-0006D2-M4; Fri, 27 Mar 2020 12:41:55 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHoJ3-0006CZ-6g
 for openwrt-devel@lists.openwrt.org; Fri, 27 Mar 2020 12:41:50 +0000
Received: by mail-ot1-x343.google.com with SMTP id c9so9480002otl.12
 for <openwrt-devel@lists.openwrt.org>; Fri, 27 Mar 2020 05:41:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tj8RJQ1+pHXYwDQo6OcGAWji1tRDeAPjm8gDF6R190w=;
 b=NPR+4x3NAkDe2gFC7MOMkb3qi/5dYy7u7UlrNqThRZH3wtTvwOjW4/T5/Ft2TIyTXM
 A770VfUlQ6ydg4mRQa5yejC2IzZBwfcunjT37treIdD6sIk10NtBX6xi0q+sYxvawWLc
 5I+JDuBGqQWd6OwHOACGL2m8dyJ/9vnAsG6KvoORqK5Aj8L5aMyJ/l5OQ2W2d9hLPYxF
 um7gvXAeU/aw98iRFO7ucaIY+YNKcW9hPFzfPo4ZS8ncsk58uNe92Ri4xOIk686+nrwd
 80wKcHVRvaVRAsNAcVEVQnYtTZ/EPVldPOFYqBD9eR5/BfQKMR1YCMnr97lGC1281EF6
 wfDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tj8RJQ1+pHXYwDQo6OcGAWji1tRDeAPjm8gDF6R190w=;
 b=Rc5f2fDz+q8cxm7RXnzGDPUV6ticih06ZiIyGk3FHZDMQBXD5wtpmWs10miJTCE9WT
 7BWH2UTdsGR630XpOqF0DXnX09JfAXp8FgsXH7WTBUuiKIbpYbuJvb5pkU/F0HPTLG6N
 cmeC3YP05nsY/niATl9mpSA8uFNZ3C4jP4WKlu+t/3hTu9lggP+VAjnHh9KZFn2GivES
 b6a3baV8w6ieTJYfgluVqiaLAY4Km3JJaVkY8KZKmD7Cc61EHYGWvwAwB13ftU3ZL5I0
 a3JZ88ysHBxTynZiQ4mVyiGmDKo3hNUPXlrqebZMuYDJUbNjKEibPKzgIHjv2yDvTKhh
 YIXg==
X-Gm-Message-State: ANhLgQ0W/Gvd6tsK8nPkSElfm7GOsz9NpPVzxr0lDKPeBZYJ4pU/5Swr
 aEbjO+eNyLGv3mLxVe3bTut0LeICFwT91L2G+94=
X-Google-Smtp-Source: ADFU+vsZZSCwxfgn+MaxyREekQIN2me2rqwlQ4RW5bblmM3XwlBGHDuQDeLUekFHLYvdDJwN00005MxHsHhcKiFwwq8=
X-Received: by 2002:a9d:1b6d:: with SMTP id l100mr6335373otl.70.1585312906625; 
 Fri, 27 Mar 2020 05:41:46 -0700 (PDT)
MIME-Version: 1.0
References: <20200326155654.48317-1-freifunk@adrianschmutzler.de>
In-Reply-To: <20200326155654.48317-1-freifunk@adrianschmutzler.de>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Fri, 27 Mar 2020 20:41:35 +0800
Message-ID: <CAJsYDV+Ni_DML0T3LtuW4Ls0b8a=QHqdfrb4QTJx_DOJLxBBOQ@mail.gmail.com>
To: Adrian Schmutzler <freifunk@adrianschmutzler.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_054149_244594_01EF3F3A 
X-CRM114-Status: GOOD (  17.95  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [gch981213[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [gch981213[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] [RFC PATCH] ath79: clarify purpose of factory
 image
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

Hi!

On Thu, Mar 26, 2020 at 11:57 PM Adrian Schmutzler
<freifunk@adrianschmutzler.de> wrote:
>
> While the purpose of a factory image in general is to flash a
> device with vendor OS "directly", some vagueness has evolved over
> the years with respect to additional uses of these images.

I think factory image is supposed to be packaged in exactly the
same way as vendor firmware upgrade package, which can be
flashed however vendor ones can be flashed. (e.g. firmware
upgrade page in web interface or user-friendly firmware recovery
methods designed by vendors.)

> One common case is when a device supports TFTP recovery.
> Particularly with TP-Link devices in ar71xx/ath79, it is common
> that the factory image can be flashed via TFTP without any additional
> measures.

These tftp recovery methods are designed by vendors and are
supposed to take their own firmware upgrade packages as well.

> In contrast, on some ramips devices the same procedure might
> overwrite your u-boot partition and make the device unbootable.

This only happens when vendors don't provide an official tftp
recovery method and users are at on their own risk by trying
to use factory images with these undocumented bootloader
features.

> However, in both cases you might only have a factory.bin which
> won't reveal any further information just by itself.
>
> To improve the situation at least a bit, this commit tries to
> clarify the image names by introducing the following three schemes:
>
> factory.bin - used from vendor OS, _not_ suitable for TFTP
> factory-tftp.bin - used from vendor OS, _also_ suitable for TFTP

I think there's no need to differentiate these two variants.
We should instead make it clear that factory should be
used the same way as vendor fw image and name other
images by their use cases like tftp/recovery etc.

> tftp.bin - can _not_ be used from vendor OS, but can be used via TFTP
>
> Since factory.bin and tftp.bin are already used widely, this will
> keep the impact relatively small by only adding the "combined"
> factory-tftp.bin image name. No additional images are built, just
> the name of the existing one is slightly adjusted for matching cases.
> Despite, the name change as an indicator for the new TFTP capability
> will have to be added manually, so in case of uncertainty the image
> name will indicate the lesser functionality by default.
>
> Thus, this patch introduces the factory-tftp.bin name for all devices
> where TFTP flashing instructions are indicated by the commit message,
> and for all TP-Link devices with v1 image/header or tplink-safeloader.

TP-Link doesn't provide an official tftp recovery method for
their earlier devices (most devices with tp-link v1 headers).
In order to unbrick these devices, one would need to attach
serial console and use u-boot command line to manually
erase a certain area on flash and write new firmware image
to it. I think it doesn't worth to mark these factory images as
'tftp capable'.

BTW I have no idea about how tplink-safeloader stuff works.

-- 
Regards,
Chuanhong Guo

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel
