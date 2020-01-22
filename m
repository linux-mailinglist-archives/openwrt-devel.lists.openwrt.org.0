Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16D23145404
	for <lists+openwrt-devel@lfdr.de>; Wed, 22 Jan 2020 12:47:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jgOiqdl5Lf44E6gAolyt9xQqBOGgWs0s0OlGxbs4dc0=; b=ndij0s9B041xtVXEdr2uzGklg
	ZDOcuCCJSMC1iITfraLsj7sfc+g+7P11nQR4YGmHiq9swfMw1K3KdEhOeHzqlXHAE/kYRaTETkXZl
	oaDkypNoTErwxkiCzLgCXb57oF+C/V/BeTK6G0HErMYgX0H1u71hRYKirdOdGPd50QhGI9fqAdbg/
	YCLqMEXzrAozxcpSiOk5fgrHU4ALJBi1zZjGEFP8sKK0OB8KQZ6AUyry8BdrrkpCgExSqMUs3VcwE
	fNewzqzxwLiSlsDWVJ4QMR7YFRC3MUfFGJjHEynqcSnoW4mCEdvaGq76oAv1Kp0dJMiwe0oV1+9sk
	k/JTN8U0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuETM-0004zO-0T; Wed, 22 Jan 2020 11:47:00 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuETA-0004yn-3a
 for openwrt-devel@lists.openwrt.org; Wed, 22 Jan 2020 11:46:51 +0000
Received: by mail-vs1-xe43.google.com with SMTP id n27so3991728vsa.0
 for <openwrt-devel@lists.openwrt.org>; Wed, 22 Jan 2020 03:46:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CYpSjyBuIK0o9IXTCGO9QnNaF0EckF22vqSyxSqG6FE=;
 b=nKJOiVSG7Q9V+49ZOexVuGQKuqGfWZwdLL2CllwrMGT6zYL5JlRq2nn7SE+ZoqFuhy
 MUotZy+3iLCLkDuYEYFmOwHCW3z2nzGP5AereudsjZdgSsuxmaAXPUoGpnexT8hwfdNU
 6s1qYSI7bCpyAa9rIvVd6Jf58yl7vj7MPHyDm4xxPfDZpz4P+UxhP/r90fTMOuBCaxRD
 UFAHTTobJHz1EABgm4DxpIKCz5fGU+hcJ6vmjiO0UPWBSeOgv5YpkIlOgMT7tLzDIBRF
 KgivVKvcwGweUZirVZEUt+eyS+X3foGamthIIaClovrx4rBoEjbmuu1V37ZKzC7IGX9X
 bldQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CYpSjyBuIK0o9IXTCGO9QnNaF0EckF22vqSyxSqG6FE=;
 b=NZE1ypGnT+2+UrlUI0/hO27Oy9iPhSHRUt0qDqjYMMyJjFgRf3skKXZpJokrh5uQiC
 qbcBRKQRWP6sh0AUtab4DnLyYgTRAbtyWKTU79Q4cl9MCkNivlc8UpUVwfgIctC0YIAW
 up6C5czhPXDdfELpUskCacOcNbtbuBjoJbpP0sK5rbBJiu7WUGa4EKyIpawleST0c2vm
 ce6/7ejDOpIJNwpubPOMB5LIVllCcUhy6cQg1rx0aAfnOXaTXM0p5f/qZtINHlIn0ldb
 YS/RJ8jXM9s2LMXxdNiwolvO02V95SnVdPPydolTbNIAV7pv9bmm2gvpt9BpjNJ0ZpgB
 F/1A==
X-Gm-Message-State: APjAAAVheyjf6LEP9135n/jG31zyQS4qOAq3eOPcJ3jUnOlGVAefTDGx
 HG92esIiSF2t5S+WI+vn/sYipS2MoGKaUDGaUfA=
X-Google-Smtp-Source: APXvYqz2Y5rgsrQrmhfHJP5iBZy83Mm3zUyGYWOWncaHNgMVIAvCk9zAEmsIG85WMNv1ydOWCp9rYqXgMxSVwUKkbCk=
X-Received: by 2002:a67:7a03:: with SMTP id v3mr2490787vsc.66.1579693606743;
 Wed, 22 Jan 2020 03:46:46 -0800 (PST)
MIME-Version: 1.0
References: <1578138728-1256-1-git-send-email-brunompena@gmail.com>
 <0cf18b56d78d859f8d7bf30bccc6ce0762d35302.camel@ewol.com>
 <CADwgkMUhZ4TrqhiJJPHLL0aVyxxvKfABwDz-4wv_QZ_cyZvj9A@mail.gmail.com>
 <CADwgkMWzviYbcOcbY1R5C9gyY_WAwQpyyYW0eWptm369k-d7-Q@mail.gmail.com>
 <20200121104934.GA2465@makrotopia.org>
 <CADwgkMWQxN5WLeG9oyR0RdeahC+ZHeykLNGj0PfKtCvG81Qxxw@mail.gmail.com>
 <20200121185716.GL69327@meh.true.cz>
 <CADwgkMVVX_kX8w18AtGwhvwoY=MOW=_7chPScey-7T32+g1uDA@mail.gmail.com>
 <CADwgkMUy5--GR3du_-qj+m0Ag=fTA9pfOhDJO0DCbWcDtvHjZg@mail.gmail.com>
 <989a2a224ceac0368c713ecc537af005eb45f035.camel@ewol.com>
 <CADwgkMXLgcnJ0_KBCto+oS3o4PpQeQThH7qp=DwE0JWYAoz7eQ@mail.gmail.com>
 <CADwgkMXf2q3uuyTFrce2NL_Z3EGVW8OC9tVeh6MRxdiAMu7CvQ@mail.gmail.com>
 <b9f82911320645af42a7806237025e2f49967566.camel@ewol.com>
In-Reply-To: <b9f82911320645af42a7806237025e2f49967566.camel@ewol.com>
From: Bruno Pena <brunompena@gmail.com>
Date: Wed, 22 Jan 2020 12:46:34 +0100
Message-ID: <CADwgkMXrzBp0-cCN1Vpjd_wMHWDrCX4Et_3px3UaDcZj3qg4gg@mail.gmail.com>
To: Steve Brown <sbrown@ewol.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_034648_194566_429B3808 
X-CRM114-Status: GOOD (  43.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [brunompena[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] [PATCH v2] fstools: Add support to read-only
 MTD partitions (eg. recovery images)
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
Cc: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>,
 openwrt-devel@lists.openwrt.org, Daniel Golle <daniel@makrotopia.org>
Content-Type: multipart/mixed; boundary="===============1554565198556205998=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============1554565198556205998==
Content-Type: multipart/alternative; boundary="00000000000048b215059cb914c6"

--00000000000048b215059cb914c6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Steve,

Glad to hear that and thank you for testing it!

I will probably ask you to do one additional test to see if we're able to
remove the padding requirement (as mentioned on the previous emails).
But let me test it first so I can confirm that it actually works.

Best regards,
Bruno Pena

On Wed, Jan 22, 2020, 12:21 Steve Brown <sbrown@ewol.com> wrote:

> Hi Bruno,
>
> That fixed it.
>
> [    0.403826] m25p80 spi0.0: w25q128 (16384 Kbytes)
> [    0.408770] 7 fixed-partitions partitions found on MTD device spi0.0
> [    0.415333] Creating 7 MTD partitions on "spi0.0":
> [    0.420310] 0x000000000000-0x000000020000 : "factory-uboot"
> [    0.426739] 0x000000020000-0x000000040000 : "u-boot"
> [    0.432566] 0x000000040000-0x000000f00000 : "firmware"
> [    0.440477] 2 uimage-fw partitions found on MTD device firmware
> [    0.446595] Creating 2 MTD partitions on "firmware":
> [    0.451771] 0x000000000000-0x0000001b0000 : "kernel"
> [    0.457554] 0x0000001b0000-0x000000ec0000 : "rootfs"
> [    0.463355] mtd: device 4 (rootfs) set to be root filesystem
> [    0.470477] 1 squashfs-split partitions found on MTD device rootfs
> [    0.476875] 0x0000004e0000-0x000000ec0000 : "rootfs_data"
> [    0.483182] 0x000000f40000-0x000000f60000 : "info"
> [    0.488853] 0x000000f60000-0x000000fb0000 : "config"
> [    0.494619] 0x000000fc0000-0x000000fd0000 : "partition-table"
> [    0.501256] 0x000000ff0000-0x000001000000 : "art"
>
> dev:    size   erasesize  name
> mtd0: 00020000 00010000 "factory-uboot"
> mtd1: 00020000 00010000 "u-boot"
> mtd2: 00ec0000 00010000 "firmware"
> mtd3: 001b0000 00010000 "kernel"
> mtd4: 00d10000 00010000 "rootfs"
> mtd5: 009e0000 00010000 "rootfs_data"
> mtd6: 00020000 00010000 "info"
> mtd7: 00050000 00010000 "config"
> mtd8: 00010000 00010000 "partition-table"
> mtd9: 00010000 00010000 "art"
>
> index 8aa6a5a2be..9048e8340c 100644
> --- a/target/linux/ath79/image/common-tp-link.mk
> +++ b/target/linux/ath79/image/common-tp-link.mk
> @@ -71,7 +71,7 @@ endef
>
>  define Device/tplink-safeloader-uimage
>    $(Device/tplink-safeloader)
> -  KERNEL :=3D kernel-bin | append-dtb | lzma | uImageArcher lzma
> +  KERNEL :=3D kernel-bin | append-dtb | lzma | uImageArcher lzma | pad-t=
o
> 64k
>  endef
>
> Steve
>
> On Wed, 2020-01-22 at 10:22 +0100, Bruno Pena wrote:
> > Hi Steve,
> >
> > I just noticed that I have just suggested you to change the wrong
> > section... sorry!
> > It's clearly stated on target/linux/ath79/image/generic-tp-link.mk
> > that the A7-v5 uses the tplink-safeloader-uimage section but I
> > somehow managed to copy the wrong one (doh!).
> >     define Device/tplink_archer-a7-v5
> >       $(Device/tplink-safeloader-uimage)
> >       SOC :=3D qca9563
> >       [...]
> >
> > On the bright side, today I actually got some free minutes to spare
> > and I used them to test some changes to the makefiles.
> > I have added the following entries to get an overview of final
> > partition size:
> >     IMAGES +=3D kernel_1.bin kernel_2.bin kernel_3.bin kernel_4.bin
> > kernel_5.bin kernel_6.bin
> >     IMAGE/kernel_1.bin :=3D kernel-bin
> >     IMAGE/kernel_2.bin :=3D kernel-bin | append-dtb
> >     IMAGE/kernel_3.bin :=3D kernel-bin | append-dtb | lzma
> >     IMAGE/kernel_4.bin :=3D kernel-bin | append-dtb | lzma |
> > uImageArcher lzma
> >     IMAGE/kernel_5.bin :=3D kernel-bin | append-dtb | lzma | pad-to 64k
> > | uImageArcher lzma
> >     IMAGE/kernel_6.bin :=3D kernel-bin | append-dtb | lzma |
> > uImageArcher lzma | pad-to 64k
> >
> > And these were the results:
> >     kernel_1.bin : 1804719 bytes [0x1b89af]
> >     kernel_2.bin : 1813487 bytes [0x1babef]
> >     kernel_3.bin : 1831548 bytes [0x1bf27c]
> >     kernel_4.bin : 1831612 bytes [0x1bf2bc]
> >     kernel_5.bin : 1835072 bytes [0x1c0040]
> >     kernel_6.bin : 1835008 bytes [0x1c0000]
> >
> > I have then proceeded to generate the corresponding sysupgrade.bin
> > image with the settings of kernel_5 and kernel_6 so I could manually
> > inspect the resulting files.
> >
> > Original sysupgrade.bin (rootfs starts at 0x001b89af):
> >     001b89a0  68 81 9d 3b bd c9 86 98  76 c4 f0 1e 0e 94 e0 68
> > |h..;....v......h|
> >     001b89b0  73 71 73 57 03 00 00 00  6e 27 5e 00 00 04 00 0f
> > |sqsW....n'^.....|
> >     001b89c0  00 00 00 04 00 12 00 c0  06 01 00 04 00 00 00 ff
> > |................|
> >
> > Settings from kernel_5 sysupgrade.bin (rootfs starts at 0x001c0040):
> >     001b89b0  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00
> > |................|
> >     *
> >     001c0040  68 73 71 73 57 03 00 00  00 6e 27 5e 00 00 04 00
> > |hsqsW....n'^....|
> >
> > Settings from kernel_6 sysupgrade.bin (rootfs starts at 0x001c0000):
> >     001b89b0  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00
> > |................|
> >     *
> >     001c0000  68 73 71 73 57 03 00 00  00 6e 27 5e 00 00 04 00
> > |hsqsW....n'^....|
> >
> > Based on these I would ask if you could test again with the following
> > change to target/linux/ath79/image/common-tp-link.mk (append "| pad-
> > to 64k" to the KERNEL line):
> >     define Device/tplink-safeloader-uimage
> >       $(Device/tplink-safeloader)
> >       KERNEL :=3D kernel-bin | append-dtb | lzma | uImageArcher lzma |
> > pad-to 64k
> >     endef
> >
> > I would also like to take the opportunity to ask if it's worth
> > pursuing this patch if it means that all devices (using mtd) will
> > require their partitions to be padded to the blocksize?
> >
> > Thank you and best regards,
> > Bruno Pena
> >
> > On Wed, Jan 22, 2020, 07:13 Bruno Pena <brunompena@gmail.com> wrote:
> > > Hi Steve,
> > >
> > > Thank you for testing.
> > > You implemented my suggestion correctly but it seems that it didn't
> > > actually pad anything (the sizes of the partitions should be
> > > rounded to the next 0x10000 block).
> > > Please allow me a few days (real-life constraints) to test some
> > > changes to the common-tp-link.mk before I waste more of your time
> > > with these tests.
> > >
> > > Best regards,
> > > Bruno Pena
> > >
> > > On Wed, Jan 22, 2020 at 12:16 AM Steve Brown <sbrown@ewol.com>
> > > wrote:
> > > > Hi Bruno,
> > > >
> > > > That didn't seem to solve the problem. The padding didn't seem to
> > > > take
> > > > effect.
> > > >
> > > > I reverted 0f81a0979 and 0c707d37b.
> > > >
> > > > dev:    size   erasesize  name
> > > > mtd0: 00020000 00010000 "factory-uboot"
> > > > mtd1: 00020000 00010000 "u-boot"
> > > > mtd2: 00ec0000 00010000 "firmware"
> > > > mtd3: 001a3a07 00010000 "kernel"
> > > > mtd4: 00d1c5f9 00010000 "rootfs"
> > > > mtd5: 009f0000 00010000 "rootfs_data"
> > > > mtd6: 00020000 00010000 "info"
> > > > mtd7: 00050000 00010000 "config"
> > > > mtd8: 00010000 00010000 "partition-table"
> > > > mtd9: 00010000 00010000 "art"
> > > >
> > > > [    0.414677] Creating 7 MTD partitions on "spi0.0":
> > > > [    0.419655] 0x000000000000-0x000000020000 : "factory-uboot"
> > > > [    0.426092] 0x000000020000-0x000000040000 : "u-boot"
> > > > [    0.431906] 0x000000040000-0x000000f00000 : "firmware"
> > > > [    0.439772] 2 uimage-fw partitions found on MTD device
> > > > firmware
> > > > [    0.445891] Creating 2 MTD partitions on "firmware":
> > > > [    0.451065] 0x000000000000-0x0000001a3a07 : "kernel"
> > > > [    0.456840] 0x0000001a3a07-0x000000ec0000 : "rootfs"
> > > > [    0.462643] mtd: device 4 (rootfs) set to be root filesystem
> > > > [    0.469746] 1 squashfs-split partitions found on MTD device
> > > > rootfs
> > > > [    0.476142] 0x0000004d0000-0x000000ec0000 : "rootfs_data"
> > > > [    0.482441] 0x000000f40000-0x000000f60000 : "info"
> > > > [    0.488033] 0x000000f60000-0x000000fb0000 : "config"
> > > > [    0.493856] 0x000000fc0000-0x000000fd0000 : "partition-table"
> > > > [    0.500494] 0x000000ff0000-0x000001000000 : "art"
> > > >
> > > >
> > > > diff --git a/target/linux/ath79/image/common-tp-link.mk
> > > > b/target/linux/ath79/image/common-tp-link.mk
> > > > index 8aa6a5a2be..89e73a85f3 100644
> > > > --- a/target/linux/ath79/image/common-tp-link.mk
> > > > +++ b/target/linux/ath79/image/common-tp-link.mk
> > > > @@ -63,7 +63,7 @@ endef
> > > >
> > > >  define Device/tplink-safeloader
> > > >    $(Device/tplink)
> > > > -  KERNEL :=3D kernel-bin | append-dtb | lzma | tplink-v1-header -O
> > > > +  KERNEL :=3D kernel-bin | append-dtb | lzma | pad-to
> > > > $$$$(BLOCKSIZE) | tplink-v1-header -O
> > > >    IMAGE/sysupgrade.bin :=3D append-rootfs | tplink-safeloader
> > > > sysupgrade | \
> > > >      append-metadata | check-size $$$$(IMAGE_SIZE)
> > > >    IMAGE/factory.bin :=3D append-rootfs | tplink-safeloader factory
> > > >
> > > > Can you verify that I did this right?
> > > >
> > > > Steve
> > > >
> > > >
> > > > On Tue, 2020-01-21 at 22:10 +0100, Bruno Pena wrote:
> > > > > Hi everyone,
> > > > >
> > > > > I was finally able to replicate the issue you are observing.
> > > > >
> > > > > The problem comes from the fact that the kernel partition on
> > > > the TP-
> > > > > Link images is not padded to the write blocksize - which can be
> > > > > observed on the dmesg from Steve:
> > > > > [    0.450987] 0x000000000000-0x0000001a39ea : "kernel"
> > > > > [    0.456772] 0x0000001a39ea-0x000000ec0000 : "rootfs"
> > > > > The blocksize can be seen observed on the /proc/mtd and for
> > > > that
> > > > > device is 0x10000:
> > > > > mtd3: 001a38de 00010000 "kernel"
> > > > > mtd4: 00d1c722 00010000 "rootfs"
> > > > > This triggers the following code on drivers/mtd/mtdpart.c that
> > > > > removes the write flag from the rootfs partition:
> > > > >         tmp =3D part_absolute_offset(parent) + slave->offset;
> > > > >         remainder =3D do_div(tmp, wr_alignment);
> > > > >         if ((slave->mtd.flags & MTD_WRITEABLE) && remainder) {
> > > > >                 /* Doesn't start on a boundary of major erase
> > > > size */
> > > > >                 slave->mtd.flags |=3D MTD_ERASE_PARTIAL;
> > > > >                 if (((u32)slave->mtd.size) > parent->erasesize)
> > > > >                         slave->mtd.flags &=3D ~MTD_WRITEABLE;
> > > > >                 else
> > > > >                         slave->mtd.erasesize =3D slave->mtd.size;
> > > > >         }
> > > > >
> > > > >         tmp =3D part_absolute_offset(parent) + slave->offset +
> > > > slave-
> > > > > >mtd.size;
> > > > >         remainder =3D do_div(tmp, wr_alignment);
> > > > >         if ((slave->mtd.flags & MTD_WRITEABLE) && remainder) {
> > > > >                 slave->mtd.flags |=3D MTD_ERASE_PARTIAL;
> > > > >
> > > > >                 if ((u32)slave->mtd.size > parent->erasesize)
> > > > >                         slave->mtd.flags &=3D ~MTD_WRITEABLE;
> > > > >                 else
> > > > >                         slave->mtd.erasesize =3D slave->mtd.size;
> > > > >         }
> > > > > Now we have a rootfs partition that is set to read-only, and
> > > > with the
> > > > > kernel patch that forces sub-partitions to match the access
> > > > mode of
> > > > > the parent, when the split runs it will force the rootfs_data
> > > > > partition to match the parent access mode (read-only).
> > > > >
> > > > > My suggestion is to change the target/linux/ath79/image/common-
> > > > tp-
> > > > > link.mk so it pads the kernel partition to the blocksize
> > > > (untested
> > > > > suggestion below):
> > > > > define Device/tplink-safeloader
> > > > >   $(Device/tplink)
> > > > >   KERNEL :=3D kernel-bin | append-dtb | lzma | pad-to
> > > > $$$$(BLOCKSIZE) |
> > > > > tplink-v1-header -O
> > > > > [...]
> > > > > Would any of you be willing to spend some time testing this
> > > > change on
> > > > > your TP-Link?
> > > > >
> > > > > Thank you and best regards,
> > > > > Bruno Pena
> > > > >
> > > > > On Tue, Jan 21, 2020 at 8:15 PM Bruno Pena <
> > > > brunompena@gmail.com>
> > > > > wrote:
> > > > > > Hi Petr,
> > > > > >
> > > > > > Thank you for reverting the patches.
> > > > > >
> > > > > > I'm trying to replicate the issue but so far I haven't had
> > > > any
> > > > > > luck, and just by looking at the code I'm not seeing
> > > > where/what is
> > > > > > could be breaking.
> > > > > >
> > > > > > Regarding the upstream patch, that one is just an enabler
> > > > (read: it
> > > > > > only extends the "mtd_add_partition" function but it does not
> > > > add
> > > > > > any code to force the access mode on sub-partitions).
> > > > > > The reason for this is because this enforcement is done on
> > > > the mtd
> > > > > > parser code that is OpenWrt specific and implemented via
> > > > kernel
> > > > > > patches (not present on upstream).
> > > > > >
> > > > > > Best regards,
> > > > > > Bruno Pena
> > > > > >
> > > > > > On Tue, Jan 21, 2020 at 7:57 PM Petr =C5=A0tetiar <ynezz@true.c=
z>
> > > > wrote:
> > > > > > > Bruno Pena <brunompena@gmail.com> [2020-01-21 14:53:54]:
> > > > > > >
> > > > > > > Hi,
> > > > > > >
> > > > > > > > Based on the last comment from Steve (fstools patch was
> > > > not
> > > > > > > reverted), I'm
> > > > > > > > not sure if that's the root cause.
> > > > > > >
> > > > > > > you need to find out, but that Daniel's remark seems legit
> > > > to me,
> > > > > > > your patch
> > > > > > > likely changed the mtd device open order/flags.
> > > > > > >
> > > > > > > > The kernel patch (which when reverted makes rootfs_data
> > > > > > > writable again)
> > > > > > > > only enforces the parent mtd access mode on the sub-
> > > > partitions.
> > > > > > >
> > > > > > > FYI I currently dont have time to fix that regression
> > > > myself and
> > > > > > > since its
> > > > > > > likely affecting a lot of users, so I've reverted those
> > > > changes.
> > > > > > > I think, that
> > > > > > > this change is useful, so I'm still willing to merge it
> > > > once
> > > > > > > fixed, no
> > > > > > > worries. Having some upstream feedback beforehand would be
> > > > a
> > > > > > > plus.
> > > > > > >
> > > > > > > BTW it would be fair to inform upstream about this possible
> > > > issue
> > > > > > > as well, so
> > > > > > > the patch wont get merged in its current state, unless its
> > > > double
> > > > > > > checked (or
> > > > > > > just write them, that you're planning v2, so the patch is
> > > > removed
> > > > > > > from their
> > > > > > > Patchwork).
> > > > > > >
> > > > > > > -- ynezz
> > > >
>
>

--00000000000048b215059cb914c6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div dir=3D"auto">Hi Steve,</div><div dir=3D"auto"><br></=
div>Glad=C2=A0to hear that and thank you for testing it!<div dir=3D"auto"><=
div dir=3D"auto"><br><div dir=3D"auto">I will probably ask you to do one ad=
ditional test to see if we&#39;re able to remove the padding requirement (a=
s mentioned on the previous emails).</div><div dir=3D"auto">But let me test=
 it first so I can confirm that it actually works.</div><div dir=3D"auto"><=
br></div><div dir=3D"auto">Best regards,</div><div dir=3D"auto">Bruno Pena<=
/div></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Wed, Jan 22, 2020, 12:21 Steve Brown &lt;<a href=3D"mai=
lto:sbrown@ewol.com">sbrown@ewol.com</a>&gt; wrote:<br></div><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex">Hi Bruno,<br>
<br>
That fixed it.<br>
<br>
[=C2=A0 =C2=A0 0.403826] m25p80 spi0.0: w25q128 (16384 Kbytes)<br>
[=C2=A0 =C2=A0 0.408770] 7 fixed-partitions partitions found on MTD device =
spi0.0<br>
[=C2=A0 =C2=A0 0.415333] Creating 7 MTD partitions on &quot;spi0.0&quot;:<b=
r>
[=C2=A0 =C2=A0 0.420310] 0x000000000000-0x000000020000 : &quot;factory-uboo=
t&quot;<br>
[=C2=A0 =C2=A0 0.426739] 0x000000020000-0x000000040000 : &quot;u-boot&quot;=
<br>
[=C2=A0 =C2=A0 0.432566] 0x000000040000-0x000000f00000 : &quot;firmware&quo=
t;<br>
[=C2=A0 =C2=A0 0.440477] 2 uimage-fw partitions found on MTD device firmwar=
e<br>
[=C2=A0 =C2=A0 0.446595] Creating 2 MTD partitions on &quot;firmware&quot;:=
<br>
[=C2=A0 =C2=A0 0.451771] 0x000000000000-0x0000001b0000 : &quot;kernel&quot;=
<br>
[=C2=A0 =C2=A0 0.457554] 0x0000001b0000-0x000000ec0000 : &quot;rootfs&quot;=
<br>
[=C2=A0 =C2=A0 0.463355] mtd: device 4 (rootfs) set to be root filesystem<b=
r>
[=C2=A0 =C2=A0 0.470477] 1 squashfs-split partitions found on MTD device ro=
otfs<br>
[=C2=A0 =C2=A0 0.476875] 0x0000004e0000-0x000000ec0000 : &quot;rootfs_data&=
quot;<br>
[=C2=A0 =C2=A0 0.483182] 0x000000f40000-0x000000f60000 : &quot;info&quot;<b=
r>
[=C2=A0 =C2=A0 0.488853] 0x000000f60000-0x000000fb0000 : &quot;config&quot;=
<br>
[=C2=A0 =C2=A0 0.494619] 0x000000fc0000-0x000000fd0000 : &quot;partition-ta=
ble&quot;<br>
[=C2=A0 =C2=A0 0.501256] 0x000000ff0000-0x000001000000 : &quot;art&quot;<br=
>
<br>
dev:=C2=A0 =C2=A0 size=C2=A0 =C2=A0erasesize=C2=A0 name<br>
mtd0: 00020000 00010000 &quot;factory-uboot&quot;<br>
mtd1: 00020000 00010000 &quot;u-boot&quot;<br>
mtd2: 00ec0000 00010000 &quot;firmware&quot;<br>
mtd3: 001b0000 00010000 &quot;kernel&quot;<br>
mtd4: 00d10000 00010000 &quot;rootfs&quot;<br>
mtd5: 009e0000 00010000 &quot;rootfs_data&quot;<br>
mtd6: 00020000 00010000 &quot;info&quot;<br>
mtd7: 00050000 00010000 &quot;config&quot;<br>
mtd8: 00010000 00010000 &quot;partition-table&quot;<br>
mtd9: 00010000 00010000 &quot;art&quot;<br>
<br>
index 8aa6a5a2be..9048e8340c 100644<br>
--- a/target/linux/ath79/image/<a href=3D"http://common-tp-link.mk" rel=3D"=
noreferrer noreferrer" target=3D"_blank">common-tp-link.mk</a><br>
+++ b/target/linux/ath79/image/<a href=3D"http://common-tp-link.mk" rel=3D"=
noreferrer noreferrer" target=3D"_blank">common-tp-link.mk</a><br>
@@ -71,7 +71,7 @@ endef<br>
<br>
=C2=A0define Device/tplink-safeloader-uimage<br>
=C2=A0 =C2=A0$(Device/tplink-safeloader)<br>
-=C2=A0 KERNEL :=3D kernel-bin | append-dtb | lzma | uImageArcher lzma<br>
+=C2=A0 KERNEL :=3D kernel-bin | append-dtb | lzma | uImageArcher lzma | pa=
d-to 64k<br>
=C2=A0endef<br>
<br>
Steve<br>
<br>
On Wed, 2020-01-22 at 10:22 +0100, Bruno Pena wrote:<br>
&gt; Hi Steve,<br>
&gt; <br>
&gt; I just noticed that I have just suggested you to change the wrong<br>
&gt; section... sorry!<br>
&gt; It&#39;s clearly stated on target/linux/ath79/image/<a href=3D"http://=
generic-tp-link.mk" rel=3D"noreferrer noreferrer" target=3D"_blank">generic=
-tp-link.mk</a><br>
&gt; that the A7-v5 uses the tplink-safeloader-uimage section but I<br>
&gt; somehow managed to copy the wrong one (doh!).<br>
&gt;=C2=A0 =C2=A0 =C2=A0define Device/tplink_archer-a7-v5<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0$(Device/tplink-safeloader-uimage)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0SOC :=3D qca9563<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0[...]<br>
&gt; <br>
&gt; On the bright side, today I actually got some free minutes to spare<br=
>
&gt; and I used them to test some changes to the makefiles.<br>
&gt; I have added the following entries to get an overview of final<br>
&gt; partition size:<br>
&gt;=C2=A0 =C2=A0 =C2=A0IMAGES +=3D kernel_1.bin kernel_2.bin kernel_3.bin =
kernel_4.bin<br>
&gt; kernel_5.bin kernel_6.bin<br>
&gt;=C2=A0 =C2=A0 =C2=A0IMAGE/kernel_1.bin :=3D kernel-bin<br>
&gt;=C2=A0 =C2=A0 =C2=A0IMAGE/kernel_2.bin :=3D kernel-bin | append-dtb<br>
&gt;=C2=A0 =C2=A0 =C2=A0IMAGE/kernel_3.bin :=3D kernel-bin | append-dtb | l=
zma<br>
&gt;=C2=A0 =C2=A0 =C2=A0IMAGE/kernel_4.bin :=3D kernel-bin | append-dtb | l=
zma |<br>
&gt; uImageArcher lzma<br>
&gt;=C2=A0 =C2=A0 =C2=A0IMAGE/kernel_5.bin :=3D kernel-bin | append-dtb | l=
zma | pad-to 64k<br>
&gt; | uImageArcher lzma<br>
&gt;=C2=A0 =C2=A0 =C2=A0IMAGE/kernel_6.bin :=3D kernel-bin | append-dtb | l=
zma |<br>
&gt; uImageArcher lzma | pad-to 64k<br>
&gt; <br>
&gt; And these were the results:<br>
&gt;=C2=A0 =C2=A0 =C2=A0kernel_1.bin : 1804719 bytes [0x1b89af]<br>
&gt;=C2=A0 =C2=A0 =C2=A0kernel_2.bin : 1813487 bytes [0x1babef]<br>
&gt;=C2=A0 =C2=A0 =C2=A0kernel_3.bin : 1831548 bytes [0x1bf27c]<br>
&gt;=C2=A0 =C2=A0 =C2=A0kernel_4.bin : 1831612 bytes [0x1bf2bc]<br>
&gt;=C2=A0 =C2=A0 =C2=A0kernel_5.bin : 1835072 bytes [0x1c0040]<br>
&gt;=C2=A0 =C2=A0 =C2=A0kernel_6.bin : 1835008 bytes [0x1c0000]<br>
&gt; <br>
&gt; I have then proceeded to generate the corresponding sysupgrade.bin<br>
&gt; image with the settings of kernel_5 and kernel_6 so I could manually<b=
r>
&gt; inspect the resulting files.<br>
&gt; <br>
&gt; Original sysupgrade.bin (rootfs starts at 0x001b89af):<br>
&gt;=C2=A0 =C2=A0 =C2=A0001b89a0=C2=A0 68 81 9d 3b bd c9 86 98=C2=A0 76 c4 =
f0 1e 0e 94 e0 68 <br>
&gt; |h..;....v......h|<br>
&gt;=C2=A0 =C2=A0 =C2=A0001b89b0=C2=A0 73 71 73 57 03 00 00 00=C2=A0 6e 27 =
5e 00 00 04 00 0f <br>
&gt; |sqsW....n&#39;^.....|<br>
&gt;=C2=A0 =C2=A0 =C2=A0001b89c0=C2=A0 00 00 00 04 00 12 00 c0=C2=A0 06 01 =
00 04 00 00 00 ff <br>
&gt; |................|<br>
&gt; <br>
&gt; Settings from kernel_5 sysupgrade.bin (rootfs starts at 0x001c0040):<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0001b89b0=C2=A0 00 00 00 00 00 00 00 00=C2=A0 00 00 =
00 00 00 00 00 00 <br>
&gt; |................|<br>
&gt;=C2=A0 =C2=A0 =C2=A0*<br>
&gt;=C2=A0 =C2=A0 =C2=A0001c0040=C2=A0 68 73 71 73 57 03 00 00=C2=A0 00 6e =
27 5e 00 00 04 00 <br>
&gt; |hsqsW....n&#39;^....|<br>
&gt; <br>
&gt; Settings from kernel_6 sysupgrade.bin (rootfs starts at 0x001c0000):<b=
r>
&gt;=C2=A0 =C2=A0 =C2=A0001b89b0=C2=A0 00 00 00 00 00 00 00 00=C2=A0 00 00 =
00 00 00 00 00 00 <br>
&gt; |................|<br>
&gt;=C2=A0 =C2=A0 =C2=A0*<br>
&gt;=C2=A0 =C2=A0 =C2=A0001c0000=C2=A0 68 73 71 73 57 03 00 00=C2=A0 00 6e =
27 5e 00 00 04 00 <br>
&gt; |hsqsW....n&#39;^....|<br>
&gt; <br>
&gt; Based on these I would ask if you could test again with the following<=
br>
&gt; change to target/linux/ath79/image/<a href=3D"http://common-tp-link.mk=
" rel=3D"noreferrer noreferrer" target=3D"_blank">common-tp-link.mk</a> (ap=
pend &quot;| pad-<br>
&gt; to 64k&quot; to the KERNEL line):<br>
&gt;=C2=A0 =C2=A0 =C2=A0define Device/tplink-safeloader-uimage<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0$(Device/tplink-safeloader)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0KERNEL :=3D kernel-bin | append-dtb | lzma |=
 uImageArcher lzma |<br>
&gt; pad-to 64k<br>
&gt;=C2=A0 =C2=A0 =C2=A0endef<br>
&gt; <br>
&gt; I would also like to take the opportunity to ask if it&#39;s worth<br>
&gt; pursuing this patch if it means that all devices (using mtd) will<br>
&gt; require their partitions to be padded to the blocksize?<br>
&gt; <br>
&gt; Thank you and best regards,<br>
&gt; Bruno Pena<br>
&gt; <br>
&gt; On Wed, Jan 22, 2020, 07:13 Bruno Pena &lt;<a href=3D"mailto:brunompen=
a@gmail.com" target=3D"_blank" rel=3D"noreferrer">brunompena@gmail.com</a>&=
gt; wrote:<br>
&gt; &gt; Hi Steve,<br>
&gt; &gt; <br>
&gt; &gt; Thank you for testing.<br>
&gt; &gt; You implemented my suggestion correctly but it seems that it didn=
&#39;t<br>
&gt; &gt; actually pad anything (the sizes of the partitions should be<br>
&gt; &gt; rounded to the next 0x10000 block).<br>
&gt; &gt; Please allow me a few days (real-life constraints) to test some<b=
r>
&gt; &gt; changes to the <a href=3D"http://common-tp-link.mk" rel=3D"norefe=
rrer noreferrer" target=3D"_blank">common-tp-link.mk</a> before I waste mor=
e of your time<br>
&gt; &gt; with these tests.<br>
&gt; &gt; <br>
&gt; &gt; Best regards,<br>
&gt; &gt; Bruno Pena<br>
&gt; &gt; <br>
&gt; &gt; On Wed, Jan 22, 2020 at 12:16 AM Steve Brown &lt;<a href=3D"mailt=
o:sbrown@ewol.com" target=3D"_blank" rel=3D"noreferrer">sbrown@ewol.com</a>=
&gt;<br>
&gt; &gt; wrote:<br>
&gt; &gt; &gt; Hi Bruno,<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; That didn&#39;t seem to solve the problem. The padding didn&=
#39;t seem to<br>
&gt; &gt; &gt; take<br>
&gt; &gt; &gt; effect.<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; I reverted 0f81a0979 and 0c707d37b.<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; dev:=C2=A0 =C2=A0 size=C2=A0 =C2=A0erasesize=C2=A0 name<br>
&gt; &gt; &gt; mtd0: 00020000 00010000 &quot;factory-uboot&quot;<br>
&gt; &gt; &gt; mtd1: 00020000 00010000 &quot;u-boot&quot;<br>
&gt; &gt; &gt; mtd2: 00ec0000 00010000 &quot;firmware&quot;<br>
&gt; &gt; &gt; mtd3: 001a3a07 00010000 &quot;kernel&quot;<br>
&gt; &gt; &gt; mtd4: 00d1c5f9 00010000 &quot;rootfs&quot;<br>
&gt; &gt; &gt; mtd5: 009f0000 00010000 &quot;rootfs_data&quot;<br>
&gt; &gt; &gt; mtd6: 00020000 00010000 &quot;info&quot;<br>
&gt; &gt; &gt; mtd7: 00050000 00010000 &quot;config&quot;<br>
&gt; &gt; &gt; mtd8: 00010000 00010000 &quot;partition-table&quot;<br>
&gt; &gt; &gt; mtd9: 00010000 00010000 &quot;art&quot;<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; [=C2=A0 =C2=A0 0.414677] Creating 7 MTD partitions on &quot;=
spi0.0&quot;:<br>
&gt; &gt; &gt; [=C2=A0 =C2=A0 0.419655] 0x000000000000-0x000000020000 : &qu=
ot;factory-uboot&quot;<br>
&gt; &gt; &gt; [=C2=A0 =C2=A0 0.426092] 0x000000020000-0x000000040000 : &qu=
ot;u-boot&quot;<br>
&gt; &gt; &gt; [=C2=A0 =C2=A0 0.431906] 0x000000040000-0x000000f00000 : &qu=
ot;firmware&quot;<br>
&gt; &gt; &gt; [=C2=A0 =C2=A0 0.439772] 2 uimage-fw partitions found on MTD=
 device<br>
&gt; &gt; &gt; firmware<br>
&gt; &gt; &gt; [=C2=A0 =C2=A0 0.445891] Creating 2 MTD partitions on &quot;=
firmware&quot;:<br>
&gt; &gt; &gt; [=C2=A0 =C2=A0 0.451065] 0x000000000000-0x0000001a3a07 : &qu=
ot;kernel&quot;<br>
&gt; &gt; &gt; [=C2=A0 =C2=A0 0.456840] 0x0000001a3a07-0x000000ec0000 : &qu=
ot;rootfs&quot;<br>
&gt; &gt; &gt; [=C2=A0 =C2=A0 0.462643] mtd: device 4 (rootfs) set to be ro=
ot filesystem<br>
&gt; &gt; &gt; [=C2=A0 =C2=A0 0.469746] 1 squashfs-split partitions found o=
n MTD device<br>
&gt; &gt; &gt; rootfs<br>
&gt; &gt; &gt; [=C2=A0 =C2=A0 0.476142] 0x0000004d0000-0x000000ec0000 : &qu=
ot;rootfs_data&quot;<br>
&gt; &gt; &gt; [=C2=A0 =C2=A0 0.482441] 0x000000f40000-0x000000f60000 : &qu=
ot;info&quot;<br>
&gt; &gt; &gt; [=C2=A0 =C2=A0 0.488033] 0x000000f60000-0x000000fb0000 : &qu=
ot;config&quot;<br>
&gt; &gt; &gt; [=C2=A0 =C2=A0 0.493856] 0x000000fc0000-0x000000fd0000 : &qu=
ot;partition-table&quot;<br>
&gt; &gt; &gt; [=C2=A0 =C2=A0 0.500494] 0x000000ff0000-0x000001000000 : &qu=
ot;art&quot;<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; diff --git a/target/linux/ath79/image/<a href=3D"http://comm=
on-tp-link.mk" rel=3D"noreferrer noreferrer" target=3D"_blank">common-tp-li=
nk.mk</a><br>
&gt; &gt; &gt; b/target/linux/ath79/image/<a href=3D"http://common-tp-link.=
mk" rel=3D"noreferrer noreferrer" target=3D"_blank">common-tp-link.mk</a><b=
r>
&gt; &gt; &gt; index 8aa6a5a2be..89e73a85f3 100644<br>
&gt; &gt; &gt; --- a/target/linux/ath79/image/<a href=3D"http://common-tp-l=
ink.mk" rel=3D"noreferrer noreferrer" target=3D"_blank">common-tp-link.mk</=
a><br>
&gt; &gt; &gt; +++ b/target/linux/ath79/image/<a href=3D"http://common-tp-l=
ink.mk" rel=3D"noreferrer noreferrer" target=3D"_blank">common-tp-link.mk</=
a><br>
&gt; &gt; &gt; @@ -63,7 +63,7 @@ endef<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt;=C2=A0 define Device/tplink-safeloader<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 $(Device/tplink)<br>
&gt; &gt; &gt; -=C2=A0 KERNEL :=3D kernel-bin | append-dtb | lzma | tplink-=
v1-header -O<br>
&gt; &gt; &gt; +=C2=A0 KERNEL :=3D kernel-bin | append-dtb | lzma | pad-to<=
br>
&gt; &gt; &gt; $$$$(BLOCKSIZE) | tplink-v1-header -O<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 IMAGE/sysupgrade.bin :=3D append-rootfs | tplin=
k-safeloader<br>
&gt; &gt; &gt; sysupgrade | \<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 append-metadata | check-size $$$$(IMAGE_=
SIZE)<br>
&gt; &gt; &gt;=C2=A0 =C2=A0 IMAGE/factory.bin :=3D append-rootfs | tplink-s=
afeloader factory<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; Can you verify that I did this right?<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; Steve<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; On Tue, 2020-01-21 at 22:10 +0100, Bruno Pena wrote:<br>
&gt; &gt; &gt; &gt; Hi everyone,<br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; I was finally able to replicate the issue you are obser=
ving.<br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; The problem comes from the fact that the kernel partiti=
on on<br>
&gt; &gt; &gt; the TP-<br>
&gt; &gt; &gt; &gt; Link images is not padded to the write blocksize - whic=
h can be<br>
&gt; &gt; &gt; &gt; observed on the dmesg from Steve:<br>
&gt; &gt; &gt; &gt; [=C2=A0 =C2=A0 0.450987] 0x000000000000-0x0000001a39ea =
: &quot;kernel&quot;<br>
&gt; &gt; &gt; &gt; [=C2=A0 =C2=A0 0.456772] 0x0000001a39ea-0x000000ec0000 =
: &quot;rootfs&quot;<br>
&gt; &gt; &gt; &gt; The blocksize can be seen observed on the /proc/mtd and=
 for<br>
&gt; &gt; &gt; that<br>
&gt; &gt; &gt; &gt; device is 0x10000:<br>
&gt; &gt; &gt; &gt; mtd3: 001a38de 00010000 &quot;kernel&quot;<br>
&gt; &gt; &gt; &gt; mtd4: 00d1c722 00010000 &quot;rootfs&quot;<br>
&gt; &gt; &gt; &gt; This triggers the following code on drivers/mtd/mtdpart=
.c that<br>
&gt; &gt; &gt; &gt; removes the write flag from the rootfs partition:<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0tmp =3D part_absolute_=
offset(parent) + slave-&gt;offset;<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0remainder =3D do_div(t=
mp, wr_alignment);<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if ((slave-&gt;mtd.fla=
gs &amp; MTD_WRITEABLE) &amp;&amp; remainder) {<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0/* Doesn&#39;t start on a boundary of major erase<br>
&gt; &gt; &gt; size */<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0slave-&gt;mtd.flags |=3D MTD_ERASE_PARTIAL;<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0if (((u32)slave-&gt;mtd.size) &gt; parent-&gt;erasesize)<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0slave-&gt;mtd.flags &amp;=3D ~MTD_WRITEAB=
LE;<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0else<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0slave-&gt;mtd.erasesize =3D slave-&gt;mtd=
.size;<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0tmp =3D part_absolute_=
offset(parent) + slave-&gt;offset +<br>
&gt; &gt; &gt; slave-<br>
&gt; &gt; &gt; &gt; &gt;mtd.size;<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0remainder =3D do_div(t=
mp, wr_alignment);<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if ((slave-&gt;mtd.fla=
gs &amp; MTD_WRITEABLE) &amp;&amp; remainder) {<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0slave-&gt;mtd.flags |=3D MTD_ERASE_PARTIAL;<br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0if ((u32)slave-&gt;mtd.size &gt; parent-&gt;erasesize)<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0slave-&gt;mtd.flags &amp;=3D ~MTD_WRITEAB=
LE;<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0else<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0slave-&gt;mtd.erasesize =3D slave-&gt;mtd=
.size;<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; &gt; &gt; &gt; Now we have a rootfs partition that is set to read-only=
, and<br>
&gt; &gt; &gt; with the<br>
&gt; &gt; &gt; &gt; kernel patch that forces sub-partitions to match the ac=
cess<br>
&gt; &gt; &gt; mode of<br>
&gt; &gt; &gt; &gt; the parent, when the split runs it will force the rootf=
s_data<br>
&gt; &gt; &gt; &gt; partition to match the parent access mode (read-only).<=
br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; My suggestion is to change the target/linux/ath79/image=
/common-<br>
&gt; &gt; &gt; tp-<br>
&gt; &gt; &gt; &gt; <a href=3D"http://link.mk" rel=3D"noreferrer noreferrer=
" target=3D"_blank">link.mk</a> so it pads the kernel partition to the bloc=
ksize<br>
&gt; &gt; &gt; (untested<br>
&gt; &gt; &gt; &gt; suggestion below):<br>
&gt; &gt; &gt; &gt; define Device/tplink-safeloader<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0$(Device/tplink)<br>
&gt; &gt; &gt; &gt;=C2=A0 =C2=A0KERNEL :=3D kernel-bin | append-dtb | lzma =
| pad-to<br>
&gt; &gt; &gt; $$$$(BLOCKSIZE) |<br>
&gt; &gt; &gt; &gt; tplink-v1-header -O<br>
&gt; &gt; &gt; &gt; [...]<br>
&gt; &gt; &gt; &gt; Would any of you be willing to spend some time testing =
this<br>
&gt; &gt; &gt; change on<br>
&gt; &gt; &gt; &gt; your TP-Link?<br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; Thank you and best regards,<br>
&gt; &gt; &gt; &gt; Bruno Pena<br>
&gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; On Tue, Jan 21, 2020 at 8:15 PM Bruno Pena &lt;<br>
&gt; &gt; &gt; <a href=3D"mailto:brunompena@gmail.com" target=3D"_blank" re=
l=3D"noreferrer">brunompena@gmail.com</a>&gt;<br>
&gt; &gt; &gt; &gt; wrote:<br>
&gt; &gt; &gt; &gt; &gt; Hi Petr,<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; Thank you for reverting the patches.<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; I&#39;m trying to replicate the issue but so far I=
 haven&#39;t had<br>
&gt; &gt; &gt; any<br>
&gt; &gt; &gt; &gt; &gt; luck, and just by looking at the code I&#39;m not =
seeing<br>
&gt; &gt; &gt; where/what is<br>
&gt; &gt; &gt; &gt; &gt; could be breaking.<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; Regarding the upstream patch, that one is just an =
enabler<br>
&gt; &gt; &gt; (read: it<br>
&gt; &gt; &gt; &gt; &gt; only extends the &quot;mtd_add_partition&quot; fun=
ction but it does not<br>
&gt; &gt; &gt; add<br>
&gt; &gt; &gt; &gt; &gt; any code to force the access mode on sub-partition=
s).<br>
&gt; &gt; &gt; &gt; &gt; The reason for this is because this enforcement is=
 done on<br>
&gt; &gt; &gt; the mtd<br>
&gt; &gt; &gt; &gt; &gt; parser code that is OpenWrt specific and implement=
ed via<br>
&gt; &gt; &gt; kernel<br>
&gt; &gt; &gt; &gt; &gt; patches (not present on upstream).<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; Best regards,<br>
&gt; &gt; &gt; &gt; &gt; Bruno Pena<br>
&gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; On Tue, Jan 21, 2020 at 7:57 PM Petr =C5=A0tetiar =
&lt;<a href=3D"mailto:ynezz@true.cz" target=3D"_blank" rel=3D"noreferrer">y=
nezz@true.cz</a>&gt;<br>
&gt; &gt; &gt; wrote:<br>
&gt; &gt; &gt; &gt; &gt; &gt; Bruno Pena &lt;<a href=3D"mailto:brunompena@g=
mail.com" target=3D"_blank" rel=3D"noreferrer">brunompena@gmail.com</a>&gt;=
 [2020-01-21 14:53:54]:<br>
&gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; Hi,<br>
&gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; Based on the last comment from Steve (fs=
tools patch was<br>
&gt; &gt; &gt; not<br>
&gt; &gt; &gt; &gt; &gt; &gt; reverted), I&#39;m<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; not sure if that&#39;s the root cause.<b=
r>
&gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; you need to find out, but that Daniel&#39;s r=
emark seems legit<br>
&gt; &gt; &gt; to me,<br>
&gt; &gt; &gt; &gt; &gt; &gt; your patch<br>
&gt; &gt; &gt; &gt; &gt; &gt; likely changed the mtd device open order/flag=
s.<br>
&gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; The kernel patch (which when reverted ma=
kes rootfs_data<br>
&gt; &gt; &gt; &gt; &gt; &gt; writable again)<br>
&gt; &gt; &gt; &gt; &gt; &gt; &gt; only enforces the parent mtd access mode=
 on the sub-<br>
&gt; &gt; &gt; partitions.<br>
&gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; FYI I currently dont have time to fix that re=
gression<br>
&gt; &gt; &gt; myself and<br>
&gt; &gt; &gt; &gt; &gt; &gt; since its<br>
&gt; &gt; &gt; &gt; &gt; &gt; likely affecting a lot of users, so I&#39;ve =
reverted those<br>
&gt; &gt; &gt; changes.<br>
&gt; &gt; &gt; &gt; &gt; &gt; I think, that<br>
&gt; &gt; &gt; &gt; &gt; &gt; this change is useful, so I&#39;m still willi=
ng to merge it<br>
&gt; &gt; &gt; once<br>
&gt; &gt; &gt; &gt; &gt; &gt; fixed, no<br>
&gt; &gt; &gt; &gt; &gt; &gt; worries. Having some upstream feedback before=
hand would be<br>
&gt; &gt; &gt; a<br>
&gt; &gt; &gt; &gt; &gt; &gt; plus.<br>
&gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; BTW it would be fair to inform upstream about=
 this possible<br>
&gt; &gt; &gt; issue<br>
&gt; &gt; &gt; &gt; &gt; &gt; as well, so<br>
&gt; &gt; &gt; &gt; &gt; &gt; the patch wont get merged in its current stat=
e, unless its<br>
&gt; &gt; &gt; double<br>
&gt; &gt; &gt; &gt; &gt; &gt; checked (or<br>
&gt; &gt; &gt; &gt; &gt; &gt; just write them, that you&#39;re planning v2,=
 so the patch is<br>
&gt; &gt; &gt; removed<br>
&gt; &gt; &gt; &gt; &gt; &gt; from their<br>
&gt; &gt; &gt; &gt; &gt; &gt; Patchwork).<br>
&gt; &gt; &gt; &gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; &gt; &gt; -- ynezz<br>
&gt; &gt; &gt; <br>
<br>
</blockquote></div>

--00000000000048b215059cb914c6--


--===============1554565198556205998==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============1554565198556205998==--

