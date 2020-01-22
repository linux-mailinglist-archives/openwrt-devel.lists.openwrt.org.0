Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36007144B9F
	for <lists+openwrt-devel@lfdr.de>; Wed, 22 Jan 2020 07:14:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qiQaznIQy2uSy3/ccuJlicpjZimjK1kult5TcU8OkHk=; b=N2ZaqQ2sCk5Uim12SF/ECYDs8
	3tMgXTB47IqsFKDXJGinZ/Gi0pqB3qFBShPQNhbdK7+MgvrAongqSK4gM6NblV+A+dYAKr1g4kFf6
	xsy4l9/zzmSfJ0ZscO7wgfrVnjOC17wGLRep98rC/iwUrzjDEnyMblT+jddU+/3u+iC4F/Wq4/aew
	TcBYiEL6a67zOqDLj4nyNAumf+xm/rdChJ5BjglGmxcqhkIoeIXdnlZ83Wl2Uo0/HkABO0uN5ohcz
	5W0oKByTRd2DC/P7E8nSyV7coVtJLky2Mq1SXzRvAciIOqSAYJx3yS1DD0Y8tPUvjfhCULnjEJxr+
	C4iQExNew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu9HL-0002Yx-On; Wed, 22 Jan 2020 06:14:15 +0000
Received: from mail-vk1-xa44.google.com ([2607:f8b0:4864:20::a44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu9H9-0002Y4-Eh
 for openwrt-devel@lists.openwrt.org; Wed, 22 Jan 2020 06:14:05 +0000
Received: by mail-vk1-xa44.google.com with SMTP id i78so1654961vke.0
 for <openwrt-devel@lists.openwrt.org>; Tue, 21 Jan 2020 22:13:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IsvSUHWav6gOBR8cBo3gG0GqGIzuAvcfGPvrz2lb41E=;
 b=FOIFTXRiEufjozcmXxyFlgie8/vPQXj+iLtQg8wetIdL4/1I1WiApTB4UUEN0uG5j3
 TpY0khXIIjaiP8/2bjpaH17cTOxgIYClMyQcBBOb9RdRtUd2DdLTOYW7R4Pqv/dgrCbX
 nI4KCQkerrElh1uAhfR1vByN6HdmpEzvg3YSQfQqPYgCPX2DXaqZ+9iysKBm4NC4JBXF
 jvSuE39xUqcDOzvpE9ZdrUMWm5ALoJKR3qRndKOMVcirHRBD+kkJ4l8xDX0IWPPsHv7t
 J1YHNT1UXujRGZfm3oLQrAcGj9rkxeYLVTZ6OvvxxQ7Zwada6i6D4ozs4Fsm3diFKnN8
 nBYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IsvSUHWav6gOBR8cBo3gG0GqGIzuAvcfGPvrz2lb41E=;
 b=CZt+9NVXk/gpIKcdFMKVS4/e2LEdsPHDgKoa3I6jUJDGDAIhK1Gr5QEXyhQx6aL3Nt
 2nxkADH4jtMsbjCbwe62T4/WPI6vZopV8on/2xI9F4eDvCIl5yK6Uxv1mCRhI7zHn1IU
 /WS4ZQla7DZ7fMgltRze3iKmc2IDqYZkVEir8OWivWu/iN25Y3+id20Sdp3FWkA9VLaR
 GjD0bOJ/wzpklmC5bKpp1A4cnGzY7wNOv6LyD6ynlmKZG+mex5m9NCJvTDszg2R+B0Yq
 LT+RPUX8AdRjtWEkQdG72F6YydJDc0iE+Z+UpZz96vC7GQU9WG0Ru6COKYeYAYcr30Li
 O7xA==
X-Gm-Message-State: APjAAAXIDDqCtVR9H1dfokUceZj6gWBE1UWJkqDlibS5bsimfpc7vq1A
 LkeIYBBRxrhhLv+gTg20hRMOny6qxelEl7Qe6NM=
X-Google-Smtp-Source: APXvYqxYUwySHByAyIMrhyiXgqGfhjYnHJiApVWOVGEYyardseIhL8otFWUQtdtzqpJXPOa/lYB8n9Yi5mDvMU02WEw=
X-Received: by 2002:a1f:4d85:: with SMTP id a127mr5289644vkb.67.1579673637160; 
 Tue, 21 Jan 2020 22:13:57 -0800 (PST)
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
In-Reply-To: <989a2a224ceac0368c713ecc537af005eb45f035.camel@ewol.com>
From: Bruno Pena <brunompena@gmail.com>
Date: Wed, 22 Jan 2020 07:13:20 +0100
Message-ID: <CADwgkMXLgcnJ0_KBCto+oS3o4PpQeQThH7qp=DwE0JWYAoz7eQ@mail.gmail.com>
To: Steve Brown <sbrown@ewol.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_221403_525469_161DE162 
X-CRM114-Status: GOOD (  40.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a44 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [brunompena[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: multipart/mixed; boundary="===============4260706559154559558=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============4260706559154559558==
Content-Type: multipart/alternative; boundary="000000000000010e5a059cb46e2f"

--000000000000010e5a059cb46e2f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Steve,

Thank you for testing.
You implemented my suggestion correctly but it seems that it didn't
actually pad anything (the sizes of the partitions should be rounded to the
next 0x10000 block).
Please allow me a few days (real-life constraints) to test some changes to
the common-tp-link.mk before I waste more of your time with these tests.

Best regards,
Bruno Pena

On Wed, Jan 22, 2020 at 12:16 AM Steve Brown <sbrown@ewol.com> wrote:

> Hi Bruno,
>
> That didn't seem to solve the problem. The padding didn't seem to take
> effect.
>
> I reverted 0f81a0979 and 0c707d37b.
>
> dev:    size   erasesize  name
> mtd0: 00020000 00010000 "factory-uboot"
> mtd1: 00020000 00010000 "u-boot"
> mtd2: 00ec0000 00010000 "firmware"
> mtd3: 001a3a07 00010000 "kernel"
> mtd4: 00d1c5f9 00010000 "rootfs"
> mtd5: 009f0000 00010000 "rootfs_data"
> mtd6: 00020000 00010000 "info"
> mtd7: 00050000 00010000 "config"
> mtd8: 00010000 00010000 "partition-table"
> mtd9: 00010000 00010000 "art"
>
> [    0.414677] Creating 7 MTD partitions on "spi0.0":
> [    0.419655] 0x000000000000-0x000000020000 : "factory-uboot"
> [    0.426092] 0x000000020000-0x000000040000 : "u-boot"
> [    0.431906] 0x000000040000-0x000000f00000 : "firmware"
> [    0.439772] 2 uimage-fw partitions found on MTD device firmware
> [    0.445891] Creating 2 MTD partitions on "firmware":
> [    0.451065] 0x000000000000-0x0000001a3a07 : "kernel"
> [    0.456840] 0x0000001a3a07-0x000000ec0000 : "rootfs"
> [    0.462643] mtd: device 4 (rootfs) set to be root filesystem
> [    0.469746] 1 squashfs-split partitions found on MTD device rootfs
> [    0.476142] 0x0000004d0000-0x000000ec0000 : "rootfs_data"
> [    0.482441] 0x000000f40000-0x000000f60000 : "info"
> [    0.488033] 0x000000f60000-0x000000fb0000 : "config"
> [    0.493856] 0x000000fc0000-0x000000fd0000 : "partition-table"
> [    0.500494] 0x000000ff0000-0x000001000000 : "art"
>
>
> diff --git a/target/linux/ath79/image/common-tp-link.mk
> b/target/linux/ath79/image/common-tp-link.mk
> index 8aa6a5a2be..89e73a85f3 100644
> --- a/target/linux/ath79/image/common-tp-link.mk
> +++ b/target/linux/ath79/image/common-tp-link.mk
> @@ -63,7 +63,7 @@ endef
>
>  define Device/tplink-safeloader
>    $(Device/tplink)
> -  KERNEL :=3D kernel-bin | append-dtb | lzma | tplink-v1-header -O
> +  KERNEL :=3D kernel-bin | append-dtb | lzma | pad-to $$$$(BLOCKSIZE) |
> tplink-v1-header -O
>    IMAGE/sysupgrade.bin :=3D append-rootfs | tplink-safeloader sysupgrade=
 | \
>      append-metadata | check-size $$$$(IMAGE_SIZE)
>    IMAGE/factory.bin :=3D append-rootfs | tplink-safeloader factory
>
> Can you verify that I did this right?
>
> Steve
>
>
> On Tue, 2020-01-21 at 22:10 +0100, Bruno Pena wrote:
> > Hi everyone,
> >
> > I was finally able to replicate the issue you are observing.
> >
> > The problem comes from the fact that the kernel partition on the TP-
> > Link images is not padded to the write blocksize - which can be
> > observed on the dmesg from Steve:
> > [    0.450987] 0x000000000000-0x0000001a39ea : "kernel"
> > [    0.456772] 0x0000001a39ea-0x000000ec0000 : "rootfs"
> > The blocksize can be seen observed on the /proc/mtd and for that
> > device is 0x10000:
> > mtd3: 001a38de 00010000 "kernel"
> > mtd4: 00d1c722 00010000 "rootfs"
> > This triggers the following code on drivers/mtd/mtdpart.c that
> > removes the write flag from the rootfs partition:
> >         tmp =3D part_absolute_offset(parent) + slave->offset;
> >         remainder =3D do_div(tmp, wr_alignment);
> >         if ((slave->mtd.flags & MTD_WRITEABLE) && remainder) {
> >                 /* Doesn't start on a boundary of major erase size */
> >                 slave->mtd.flags |=3D MTD_ERASE_PARTIAL;
> >                 if (((u32)slave->mtd.size) > parent->erasesize)
> >                         slave->mtd.flags &=3D ~MTD_WRITEABLE;
> >                 else
> >                         slave->mtd.erasesize =3D slave->mtd.size;
> >         }
> >
> >         tmp =3D part_absolute_offset(parent) + slave->offset + slave-
> > >mtd.size;
> >         remainder =3D do_div(tmp, wr_alignment);
> >         if ((slave->mtd.flags & MTD_WRITEABLE) && remainder) {
> >                 slave->mtd.flags |=3D MTD_ERASE_PARTIAL;
> >
> >                 if ((u32)slave->mtd.size > parent->erasesize)
> >                         slave->mtd.flags &=3D ~MTD_WRITEABLE;
> >                 else
> >                         slave->mtd.erasesize =3D slave->mtd.size;
> >         }
> > Now we have a rootfs partition that is set to read-only, and with the
> > kernel patch that forces sub-partitions to match the access mode of
> > the parent, when the split runs it will force the rootfs_data
> > partition to match the parent access mode (read-only).
> >
> > My suggestion is to change the target/linux/ath79/image/common-tp-
> > link.mk so it pads the kernel partition to the blocksize (untested
> > suggestion below):
> > define Device/tplink-safeloader
> >   $(Device/tplink)
> >   KERNEL :=3D kernel-bin | append-dtb | lzma | pad-to $$$$(BLOCKSIZE) |
> > tplink-v1-header -O
> > [...]
> > Would any of you be willing to spend some time testing this change on
> > your TP-Link?
> >
> > Thank you and best regards,
> > Bruno Pena
> >
> > On Tue, Jan 21, 2020 at 8:15 PM Bruno Pena <brunompena@gmail.com>
> > wrote:
> > > Hi Petr,
> > >
> > > Thank you for reverting the patches.
> > >
> > > I'm trying to replicate the issue but so far I haven't had any
> > > luck, and just by looking at the code I'm not seeing where/what is
> > > could be breaking.
> > >
> > > Regarding the upstream patch, that one is just an enabler (read: it
> > > only extends the "mtd_add_partition" function but it does not add
> > > any code to force the access mode on sub-partitions).
> > > The reason for this is because this enforcement is done on the mtd
> > > parser code that is OpenWrt specific and implemented via kernel
> > > patches (not present on upstream).
> > >
> > > Best regards,
> > > Bruno Pena
> > >
> > > On Tue, Jan 21, 2020 at 7:57 PM Petr =C5=A0tetiar <ynezz@true.cz> wro=
te:
> > > > Bruno Pena <brunompena@gmail.com> [2020-01-21 14:53:54]:
> > > >
> > > > Hi,
> > > >
> > > > > Based on the last comment from Steve (fstools patch was not
> > > > reverted), I'm
> > > > > not sure if that's the root cause.
> > > >
> > > > you need to find out, but that Daniel's remark seems legit to me,
> > > > your patch
> > > > likely changed the mtd device open order/flags.
> > > >
> > > > > The kernel patch (which when reverted makes rootfs_data
> > > > writable again)
> > > > > only enforces the parent mtd access mode on the sub-partitions.
> > > >
> > > > FYI I currently dont have time to fix that regression myself and
> > > > since its
> > > > likely affecting a lot of users, so I've reverted those changes.
> > > > I think, that
> > > > this change is useful, so I'm still willing to merge it once
> > > > fixed, no
> > > > worries. Having some upstream feedback beforehand would be a
> > > > plus.
> > > >
> > > > BTW it would be fair to inform upstream about this possible issue
> > > > as well, so
> > > > the patch wont get merged in its current state, unless its double
> > > > checked (or
> > > > just write them, that you're planning v2, so the patch is removed
> > > > from their
> > > > Patchwork).
> > > >
> > > > -- ynezz
>
>

--000000000000010e5a059cb46e2f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Steve,<div><br></div><div>Thank you for testing.</div><=
div>You implemented my suggestion correctly but it seems that it didn&#39;t=
 actually pad anything (the sizes of the partitions should be rounded to th=
e next 0x10000 block).</div><div>Please allow me a few days (real-life cons=
traints) to test some changes to the=C2=A0<a href=3D"http://common-tp-link.=
mk">common-tp-link.mk</a> before I waste more of your time with these tests=
.</div><div><br></div><div>Best regards,</div><div>Bruno Pena</div></div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, =
Jan 22, 2020 at 12:16 AM Steve Brown &lt;<a href=3D"mailto:sbrown@ewol.com"=
>sbrown@ewol.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">Hi Bruno,<br>
<br>
That didn&#39;t seem to solve the problem. The padding didn&#39;t seem to t=
ake<br>
effect.<br>
<br>
I reverted 0f81a0979 and 0c707d37b.<br>
<br>
dev:=C2=A0 =C2=A0 size=C2=A0 =C2=A0erasesize=C2=A0 name<br>
mtd0: 00020000 00010000 &quot;factory-uboot&quot;<br>
mtd1: 00020000 00010000 &quot;u-boot&quot;<br>
mtd2: 00ec0000 00010000 &quot;firmware&quot;<br>
mtd3: 001a3a07 00010000 &quot;kernel&quot;<br>
mtd4: 00d1c5f9 00010000 &quot;rootfs&quot;<br>
mtd5: 009f0000 00010000 &quot;rootfs_data&quot;<br>
mtd6: 00020000 00010000 &quot;info&quot;<br>
mtd7: 00050000 00010000 &quot;config&quot;<br>
mtd8: 00010000 00010000 &quot;partition-table&quot;<br>
mtd9: 00010000 00010000 &quot;art&quot;<br>
<br>
[=C2=A0 =C2=A0 0.414677] Creating 7 MTD partitions on &quot;spi0.0&quot;:<b=
r>
[=C2=A0 =C2=A0 0.419655] 0x000000000000-0x000000020000 : &quot;factory-uboo=
t&quot;<br>
[=C2=A0 =C2=A0 0.426092] 0x000000020000-0x000000040000 : &quot;u-boot&quot;=
<br>
[=C2=A0 =C2=A0 0.431906] 0x000000040000-0x000000f00000 : &quot;firmware&quo=
t;<br>
[=C2=A0 =C2=A0 0.439772] 2 uimage-fw partitions found on MTD device firmwar=
e<br>
[=C2=A0 =C2=A0 0.445891] Creating 2 MTD partitions on &quot;firmware&quot;:=
<br>
[=C2=A0 =C2=A0 0.451065] 0x000000000000-0x0000001a3a07 : &quot;kernel&quot;=
<br>
[=C2=A0 =C2=A0 0.456840] 0x0000001a3a07-0x000000ec0000 : &quot;rootfs&quot;=
<br>
[=C2=A0 =C2=A0 0.462643] mtd: device 4 (rootfs) set to be root filesystem<b=
r>
[=C2=A0 =C2=A0 0.469746] 1 squashfs-split partitions found on MTD device ro=
otfs<br>
[=C2=A0 =C2=A0 0.476142] 0x0000004d0000-0x000000ec0000 : &quot;rootfs_data&=
quot;<br>
[=C2=A0 =C2=A0 0.482441] 0x000000f40000-0x000000f60000 : &quot;info&quot;<b=
r>
[=C2=A0 =C2=A0 0.488033] 0x000000f60000-0x000000fb0000 : &quot;config&quot;=
<br>
[=C2=A0 =C2=A0 0.493856] 0x000000fc0000-0x000000fd0000 : &quot;partition-ta=
ble&quot;<br>
[=C2=A0 =C2=A0 0.500494] 0x000000ff0000-0x000001000000 : &quot;art&quot;<br=
>
<br>
<br>
diff --git a/target/linux/ath79/image/<a href=3D"http://common-tp-link.mk" =
rel=3D"noreferrer" target=3D"_blank">common-tp-link.mk</a> b/target/linux/a=
th79/image/<a href=3D"http://common-tp-link.mk" rel=3D"noreferrer" target=
=3D"_blank">common-tp-link.mk</a><br>
index 8aa6a5a2be..89e73a85f3 100644<br>
--- a/target/linux/ath79/image/<a href=3D"http://common-tp-link.mk" rel=3D"=
noreferrer" target=3D"_blank">common-tp-link.mk</a><br>
+++ b/target/linux/ath79/image/<a href=3D"http://common-tp-link.mk" rel=3D"=
noreferrer" target=3D"_blank">common-tp-link.mk</a><br>
@@ -63,7 +63,7 @@ endef<br>
<br>
=C2=A0define Device/tplink-safeloader<br>
=C2=A0 =C2=A0$(Device/tplink)<br>
-=C2=A0 KERNEL :=3D kernel-bin | append-dtb | lzma | tplink-v1-header -O<br=
>
+=C2=A0 KERNEL :=3D kernel-bin | append-dtb | lzma | pad-to $$$$(BLOCKSIZE)=
 | tplink-v1-header -O<br>
=C2=A0 =C2=A0IMAGE/sysupgrade.bin :=3D append-rootfs | tplink-safeloader sy=
supgrade | \<br>
=C2=A0 =C2=A0 =C2=A0append-metadata | check-size $$$$(IMAGE_SIZE)<br>
=C2=A0 =C2=A0IMAGE/factory.bin :=3D append-rootfs | tplink-safeloader facto=
ry<br>
<br>
Can you verify that I did this right?<br>
<br>
Steve<br>
<br>
<br>
On Tue, 2020-01-21 at 22:10 +0100, Bruno Pena wrote:<br>
&gt; Hi everyone,<br>
&gt; <br>
&gt; I was finally able to replicate the issue you are observing.<br>
&gt; <br>
&gt; The problem comes from the fact that the kernel partition on the TP-<b=
r>
&gt; Link images is not padded to the write blocksize - which can be<br>
&gt; observed on the dmesg from Steve:<br>
&gt; [=C2=A0 =C2=A0 0.450987] 0x000000000000-0x0000001a39ea : &quot;kernel&=
quot;<br>
&gt; [=C2=A0 =C2=A0 0.456772] 0x0000001a39ea-0x000000ec0000 : &quot;rootfs&=
quot;<br>
&gt; The blocksize can be seen observed on the /proc/mtd and for that<br>
&gt; device is 0x10000:<br>
&gt; mtd3: 001a38de 00010000 &quot;kernel&quot;<br>
&gt; mtd4: 00d1c722 00010000 &quot;rootfs&quot;<br>
&gt; This triggers the following code on drivers/mtd/mtdpart.c that<br>
&gt; removes the write flag from the rootfs partition:<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0tmp =3D part_absolute_offset(parent) =
+ slave-&gt;offset;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0remainder =3D do_div(tmp, wr_alignmen=
t);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if ((slave-&gt;mtd.flags &amp; MTD_WR=
ITEABLE) &amp;&amp; remainder) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0/* Doesn&=
#39;t start on a boundary of major erase size */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0slave-&gt=
;mtd.flags |=3D MTD_ERASE_PARTIAL;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (((u32=
)slave-&gt;mtd.size) &gt; parent-&gt;erasesize)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0slave-&gt;mtd.flags &amp;=3D ~MTD_WRITEABLE;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0else<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0slave-&gt;mtd.erasesize =3D slave-&gt;mtd.size;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0tmp =3D part_absolute_offset(parent) =
+ slave-&gt;offset + slave-<br>
&gt; &gt;mtd.size;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0remainder =3D do_div(tmp, wr_alignmen=
t);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if ((slave-&gt;mtd.flags &amp; MTD_WR=
ITEABLE) &amp;&amp; remainder) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0slave-&gt=
;mtd.flags |=3D MTD_ERASE_PARTIAL;<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if ((u32)=
slave-&gt;mtd.size &gt; parent-&gt;erasesize)<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0slave-&gt;mtd.flags &amp;=3D ~MTD_WRITEABLE;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0else<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0slave-&gt;mtd.erasesize =3D slave-&gt;mtd.size;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt; Now we have a rootfs partition that is set to read-only, and with the<=
br>
&gt; kernel patch that forces sub-partitions to match the access mode of<br=
>
&gt; the parent, when the split runs it will force the rootfs_data<br>
&gt; partition to match the parent access mode (read-only).<br>
&gt; <br>
&gt; My suggestion is to change the target/linux/ath79/image/common-tp-<br>
&gt; <a href=3D"http://link.mk" rel=3D"noreferrer" target=3D"_blank">link.m=
k</a> so it pads the kernel partition to the blocksize (untested<br>
&gt; suggestion below):<br>
&gt; define Device/tplink-safeloader<br>
&gt;=C2=A0 =C2=A0$(Device/tplink)<br>
&gt;=C2=A0 =C2=A0KERNEL :=3D kernel-bin | append-dtb | lzma | pad-to $$$$(B=
LOCKSIZE) |<br>
&gt; tplink-v1-header -O<br>
&gt; [...]<br>
&gt; Would any of you be willing to spend some time testing this change on<=
br>
&gt; your TP-Link?<br>
&gt; <br>
&gt; Thank you and best regards,<br>
&gt; Bruno Pena<br>
&gt; <br>
&gt; On Tue, Jan 21, 2020 at 8:15 PM Bruno Pena &lt;<a href=3D"mailto:bruno=
mpena@gmail.com" target=3D"_blank">brunompena@gmail.com</a>&gt;<br>
&gt; wrote:<br>
&gt; &gt; Hi Petr,<br>
&gt; &gt; <br>
&gt; &gt; Thank you for reverting the patches.<br>
&gt; &gt; <br>
&gt; &gt; I&#39;m trying to replicate the issue but so far I haven&#39;t ha=
d any<br>
&gt; &gt; luck, and just by looking at the code I&#39;m not seeing where/wh=
at is<br>
&gt; &gt; could be breaking.<br>
&gt; &gt; <br>
&gt; &gt; Regarding the upstream patch, that one is just an enabler (read: =
it<br>
&gt; &gt; only extends the &quot;mtd_add_partition&quot; function but it do=
es not add<br>
&gt; &gt; any code to force the access mode on sub-partitions).<br>
&gt; &gt; The reason for this is because this enforcement is done on the mt=
d<br>
&gt; &gt; parser code that is OpenWrt specific and implemented via kernel<b=
r>
&gt; &gt; patches (not present on upstream).<br>
&gt; &gt; <br>
&gt; &gt; Best regards,<br>
&gt; &gt; Bruno Pena<br>
&gt; &gt; <br>
&gt; &gt; On Tue, Jan 21, 2020 at 7:57 PM Petr =C5=A0tetiar &lt;<a href=3D"=
mailto:ynezz@true.cz" target=3D"_blank">ynezz@true.cz</a>&gt; wrote:<br>
&gt; &gt; &gt; Bruno Pena &lt;<a href=3D"mailto:brunompena@gmail.com" targe=
t=3D"_blank">brunompena@gmail.com</a>&gt; [2020-01-21 14:53:54]:<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; Hi,<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; Based on the last comment from Steve (fstools patch was=
 not<br>
&gt; &gt; &gt; reverted), I&#39;m<br>
&gt; &gt; &gt; &gt; not sure if that&#39;s the root cause.<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; you need to find out, but that Daniel&#39;s remark seems leg=
it to me,<br>
&gt; &gt; &gt; your patch<br>
&gt; &gt; &gt; likely changed the mtd device open order/flags.<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; &gt; The kernel patch (which when reverted makes rootfs_data=
<br>
&gt; &gt; &gt; writable again)<br>
&gt; &gt; &gt; &gt; only enforces the parent mtd access mode on the sub-par=
titions.<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; FYI I currently dont have time to fix that regression myself=
 and<br>
&gt; &gt; &gt; since its<br>
&gt; &gt; &gt; likely affecting a lot of users, so I&#39;ve reverted those =
changes.<br>
&gt; &gt; &gt; I think, that<br>
&gt; &gt; &gt; this change is useful, so I&#39;m still willing to merge it =
once<br>
&gt; &gt; &gt; fixed, no<br>
&gt; &gt; &gt; worries. Having some upstream feedback beforehand would be a=
<br>
&gt; &gt; &gt; plus.<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; BTW it would be fair to inform upstream about this possible =
issue<br>
&gt; &gt; &gt; as well, so<br>
&gt; &gt; &gt; the patch wont get merged in its current state, unless its d=
ouble<br>
&gt; &gt; &gt; checked (or<br>
&gt; &gt; &gt; just write them, that you&#39;re planning v2, so the patch i=
s removed<br>
&gt; &gt; &gt; from their<br>
&gt; &gt; &gt; Patchwork).<br>
&gt; &gt; &gt; <br>
&gt; &gt; &gt; -- ynezz<br>
<br>
</blockquote></div>

--000000000000010e5a059cb46e2f--


--===============4260706559154559558==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4260706559154559558==--

