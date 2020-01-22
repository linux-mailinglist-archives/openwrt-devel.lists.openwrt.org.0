Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A41CD144E93
	for <lists+openwrt-devel@lfdr.de>; Wed, 22 Jan 2020 10:22:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YQISAfPTXdoV+k3Yc3MhjWzLyY+Uo10lbc7qOiy7mI4=; b=dfvgRQXSRlXSFfrcS3g2Dt0Ll
	ZpA6gnq1sJzyX5vwLBfx/mqf4qMQjU6+u8v/LYEbdaaXCVlV7KYmiMQf2H+KJeEkYHTlIKq7jwR4c
	ctFtcGyDYicI1SaakODWI8PRIR99cwz3pcFVtICqrMJjz+PRNE+qgPA/tQ4q69RfTGfwRjiiyeVlW
	Qf/WO6/ezapi8vrS5I7GowfPJNoJ0cwBpxAc8jdjuNQspfGvZUWPig9M7uV5mL7nDPXczgQglf+xF
	jcPEDejnqZ4lkSB6nWtWFhKnLhRRYPktBF3Bkq6rAZpznBwimoLcggLvQXHGv0mAev/PI5D2rEhHW
	Elq4e2ENw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuCDQ-0004Qm-U5; Wed, 22 Jan 2020 09:22:24 +0000
Received: from mail-vk1-xa43.google.com ([2607:f8b0:4864:20::a43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuCDI-0004QN-1f
 for openwrt-devel@lists.openwrt.org; Wed, 22 Jan 2020 09:22:18 +0000
Received: by mail-vk1-xa43.google.com with SMTP id w67so1766669vkf.1
 for <openwrt-devel@lists.openwrt.org>; Wed, 22 Jan 2020 01:22:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rthS43QcGgNbUs9F1Y8/kmeXpPweLDBbDrd+DMZGvsU=;
 b=s50MiNaQbzRUNd2/iJvsmUwHqTNsxjsqz9sQAmgCqjWZJFqeOr0KAgKV5/hhyyJK16
 e/uCRRtGHRqyF1LbG3lv9q/d3TwH892QTR56UNj1vlTr+qmhaoGVEeXHkf/990yS5um9
 HqbtZUFjwFZ/MImhv+iICNKLJh0ez2WlLUxIqyMyAg6UhSC/+GQpIyyes1HY8yyiyyz5
 +u07fmrQGVy+R3U1gnfeAZP9PktIHChgrxuLM40t4ffiqCSz2cMAg2v1vy7PRnUUvAH2
 cki3PMPI8yfRcpDMTPSfZrTfcftON6JW2n4qDmrK0E3Y6uaIHEAggT/wViZHoy9hyVBr
 AnbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rthS43QcGgNbUs9F1Y8/kmeXpPweLDBbDrd+DMZGvsU=;
 b=nDECd8PX+mbAheQARaySzq6V48YDvFkBgMzrgDgjrdPsutyO9wIwNBTDzMuipqP8W5
 QKNszGlynXGU7eWkIuxn0SqWc+Cb20zyEUoO0d39MXIVo1mzvMNCpMmBPl6jQ02c3A0A
 J3pOtektYCHqNHVTfpXnCYUXHlz7P0gWhw2gg5OPtpYveOKfbN4pQFa4TER2H9h6wqY1
 J1mgMYt39yMLhYtrGtYl4QO0qv2S2OnneZU1lulEyoYHq965aH0hC+EwzSBiqjkfl1QB
 wNQfQvHVG/fLw4uZKxMOl1aKoKMx+GNTMStvsRNDWkJ0z8vEPfEvRbjAcptV5Ai9gqPe
 CGbA==
X-Gm-Message-State: APjAAAVY98uNlfistICsbhnLUSxLobic6HuZjzvB3w4Szg0OolwEj1ZH
 Ksc+YxcBGDk9BfN8jAR801fe/nDfxIutmLaQR0k=
X-Google-Smtp-Source: APXvYqw3fgKb/kmwAdcCT5zUbUmUrHCvRYovPv81fDSTL+HixHRGSanYaVbIVhAU5CcDXpJkx9bay3jaYlXkz5/raaw=
X-Received: by 2002:a1f:2197:: with SMTP id h145mr5800117vkh.75.1579684934424; 
 Wed, 22 Jan 2020 01:22:14 -0800 (PST)
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
In-Reply-To: <CADwgkMXLgcnJ0_KBCto+oS3o4PpQeQThH7qp=DwE0JWYAoz7eQ@mail.gmail.com>
From: Bruno Pena <brunompena@gmail.com>
Date: Wed, 22 Jan 2020 10:22:01 +0100
Message-ID: <CADwgkMXf2q3uuyTFrce2NL_Z3EGVW8OC9tVeh6MRxdiAMu7CvQ@mail.gmail.com>
To: Steve Brown <sbrown@ewol.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_012216_131200_80C3573C 
X-CRM114-Status: GOOD (  41.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a43 listed in]
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
Content-Type: multipart/mixed; boundary="===============6062295090531103083=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============6062295090531103083==
Content-Type: multipart/alternative; boundary="0000000000005f9bad059cb70f64"

--0000000000005f9bad059cb70f64
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Steve,

I just noticed that I have just suggested you to change the wrong
section... sorry!
It's clearly stated on target/linux/ath79/image/generic-tp-link.mk that the
A7-v5 uses the tplink-safeloader-uimage section but I somehow managed to
copy the wrong one (doh!).
    define Device/tplink_archer-a7-v5
      $(Device/tplink-safeloader-uimage)
      SOC :=3D qca9563
      [...]

On the bright side, today I actually got some free minutes to spare and I
used them to test some changes to the makefiles.
I have added the following entries to get an overview of final partition
size:
    IMAGES +=3D kernel_1.bin kernel_2.bin kernel_3.bin kernel_4.bin
kernel_5.bin kernel_6.bin
    IMAGE/kernel_1.bin :=3D kernel-bin
    IMAGE/kernel_2.bin :=3D kernel-bin | append-dtb
    IMAGE/kernel_3.bin :=3D kernel-bin | append-dtb | lzma
    IMAGE/kernel_4.bin :=3D kernel-bin | append-dtb | lzma | uImageArcher l=
zma
    IMAGE/kernel_5.bin :=3D kernel-bin | append-dtb | lzma | pad-to 64k |
uImageArcher lzma
    IMAGE/kernel_6.bin :=3D kernel-bin | append-dtb | lzma | uImageArcher
lzma | pad-to 64k

And these were the results:
    kernel_1.bin : 1804719 bytes [0x1b89af]
    kernel_2.bin : 1813487 bytes [0x1babef]
    kernel_3.bin : 1831548 bytes [0x1bf27c]
    kernel_4.bin : 1831612 bytes [0x1bf2bc]
    kernel_5.bin : 1835072 bytes [0x1c0040]
    kernel_6.bin : 1835008 bytes [0x1c0000]

I have then proceeded to generate the corresponding sysupgrade.bin image
with the settings of kernel_5 and kernel_6 so I could manually inspect the
resulting files.

Original sysupgrade.bin (rootfs starts at 0x001b89af):
    001b89a0  68 81 9d 3b bd c9 86 98  76 c4 f0 1e 0e 94 e0 68
|h..;....v......h|
    001b89b0  73 71 73 57 03 00 00 00  6e 27 5e 00 00 04 00 0f
|sqsW....n'^.....|
    001b89c0  00 00 00 04 00 12 00 c0  06 01 00 04 00 00 00 ff
|................|

Settings from kernel_5 sysupgrade.bin (rootfs starts at 0x001c0040):
    001b89b0  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00
|................|
    *
    001c0040  68 73 71 73 57 03 00 00  00 6e 27 5e 00 00 04 00
|hsqsW....n'^....|

Settings from kernel_6 sysupgrade.bin (rootfs starts at 0x001c0000):
    001b89b0  00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00
|................|
    *
    001c0000  68 73 71 73 57 03 00 00  00 6e 27 5e 00 00 04 00
|hsqsW....n'^....|

Based on these I would ask if you could test again with the following
change to target/linux/ath79/image/common-tp-link.mk (append "| pad-to 64k"
to the KERNEL line):
    define Device/tplink-safeloader-uimage
      $(Device/tplink-safeloader)
      KERNEL :=3D kernel-bin | append-dtb | lzma | uImageArcher lzma | pad-=
to
64k
    endef

I would also like to take the opportunity to ask if it's worth pursuing
this patch if it means that all devices (using mtd) will require their
partitions to be padded to the blocksize?

Thank you and best regards,
Bruno Pena

On Wed, Jan 22, 2020, 07:13 Bruno Pena <brunompena@gmail.com> wrote:

> Hi Steve,
>
> Thank you for testing.
> You implemented my suggestion correctly but it seems that it didn't
> actually pad anything (the sizes of the partitions should be rounded to t=
he
> next 0x10000 block).
> Please allow me a few days (real-life constraints) to test some changes t=
o
> the common-tp-link.mk before I waste more of your time with these tests.
>
> Best regards,
> Bruno Pena
>
> On Wed, Jan 22, 2020 at 12:16 AM Steve Brown <sbrown@ewol.com> wrote:
>
>> Hi Bruno,
>>
>> That didn't seem to solve the problem. The padding didn't seem to take
>> effect.
>>
>> I reverted 0f81a0979 and 0c707d37b.
>>
>> dev:    size   erasesize  name
>> mtd0: 00020000 00010000 "factory-uboot"
>> mtd1: 00020000 00010000 "u-boot"
>> mtd2: 00ec0000 00010000 "firmware"
>> mtd3: 001a3a07 00010000 "kernel"
>> mtd4: 00d1c5f9 00010000 "rootfs"
>> mtd5: 009f0000 00010000 "rootfs_data"
>> mtd6: 00020000 00010000 "info"
>> mtd7: 00050000 00010000 "config"
>> mtd8: 00010000 00010000 "partition-table"
>> mtd9: 00010000 00010000 "art"
>>
>> [    0.414677] Creating 7 MTD partitions on "spi0.0":
>> [    0.419655] 0x000000000000-0x000000020000 : "factory-uboot"
>> [    0.426092] 0x000000020000-0x000000040000 : "u-boot"
>> [    0.431906] 0x000000040000-0x000000f00000 : "firmware"
>> [    0.439772] 2 uimage-fw partitions found on MTD device firmware
>> [    0.445891] Creating 2 MTD partitions on "firmware":
>> [    0.451065] 0x000000000000-0x0000001a3a07 : "kernel"
>> [    0.456840] 0x0000001a3a07-0x000000ec0000 : "rootfs"
>> [    0.462643] mtd: device 4 (rootfs) set to be root filesystem
>> [    0.469746] 1 squashfs-split partitions found on MTD device rootfs
>> [    0.476142] 0x0000004d0000-0x000000ec0000 : "rootfs_data"
>> [    0.482441] 0x000000f40000-0x000000f60000 : "info"
>> [    0.488033] 0x000000f60000-0x000000fb0000 : "config"
>> [    0.493856] 0x000000fc0000-0x000000fd0000 : "partition-table"
>> [    0.500494] 0x000000ff0000-0x000001000000 : "art"
>>
>>
>> diff --git a/target/linux/ath79/image/common-tp-link.mk
>> b/target/linux/ath79/image/common-tp-link.mk
>> index 8aa6a5a2be..89e73a85f3 100644
>> --- a/target/linux/ath79/image/common-tp-link.mk
>> +++ b/target/linux/ath79/image/common-tp-link.mk
>> @@ -63,7 +63,7 @@ endef
>>
>>  define Device/tplink-safeloader
>>    $(Device/tplink)
>> -  KERNEL :=3D kernel-bin | append-dtb | lzma | tplink-v1-header -O
>> +  KERNEL :=3D kernel-bin | append-dtb | lzma | pad-to $$$$(BLOCKSIZE) |
>> tplink-v1-header -O
>>    IMAGE/sysupgrade.bin :=3D append-rootfs | tplink-safeloader sysupgrad=
e |
>> \
>>      append-metadata | check-size $$$$(IMAGE_SIZE)
>>    IMAGE/factory.bin :=3D append-rootfs | tplink-safeloader factory
>>
>> Can you verify that I did this right?
>>
>> Steve
>>
>>
>> On Tue, 2020-01-21 at 22:10 +0100, Bruno Pena wrote:
>> > Hi everyone,
>> >
>> > I was finally able to replicate the issue you are observing.
>> >
>> > The problem comes from the fact that the kernel partition on the TP-
>> > Link images is not padded to the write blocksize - which can be
>> > observed on the dmesg from Steve:
>> > [    0.450987] 0x000000000000-0x0000001a39ea : "kernel"
>> > [    0.456772] 0x0000001a39ea-0x000000ec0000 : "rootfs"
>> > The blocksize can be seen observed on the /proc/mtd and for that
>> > device is 0x10000:
>> > mtd3: 001a38de 00010000 "kernel"
>> > mtd4: 00d1c722 00010000 "rootfs"
>> > This triggers the following code on drivers/mtd/mtdpart.c that
>> > removes the write flag from the rootfs partition:
>> >         tmp =3D part_absolute_offset(parent) + slave->offset;
>> >         remainder =3D do_div(tmp, wr_alignment);
>> >         if ((slave->mtd.flags & MTD_WRITEABLE) && remainder) {
>> >                 /* Doesn't start on a boundary of major erase size */
>> >                 slave->mtd.flags |=3D MTD_ERASE_PARTIAL;
>> >                 if (((u32)slave->mtd.size) > parent->erasesize)
>> >                         slave->mtd.flags &=3D ~MTD_WRITEABLE;
>> >                 else
>> >                         slave->mtd.erasesize =3D slave->mtd.size;
>> >         }
>> >
>> >         tmp =3D part_absolute_offset(parent) + slave->offset + slave-
>> > >mtd.size;
>> >         remainder =3D do_div(tmp, wr_alignment);
>> >         if ((slave->mtd.flags & MTD_WRITEABLE) && remainder) {
>> >                 slave->mtd.flags |=3D MTD_ERASE_PARTIAL;
>> >
>> >                 if ((u32)slave->mtd.size > parent->erasesize)
>> >                         slave->mtd.flags &=3D ~MTD_WRITEABLE;
>> >                 else
>> >                         slave->mtd.erasesize =3D slave->mtd.size;
>> >         }
>> > Now we have a rootfs partition that is set to read-only, and with the
>> > kernel patch that forces sub-partitions to match the access mode of
>> > the parent, when the split runs it will force the rootfs_data
>> > partition to match the parent access mode (read-only).
>> >
>> > My suggestion is to change the target/linux/ath79/image/common-tp-
>> > link.mk so it pads the kernel partition to the blocksize (untested
>> > suggestion below):
>> > define Device/tplink-safeloader
>> >   $(Device/tplink)
>> >   KERNEL :=3D kernel-bin | append-dtb | lzma | pad-to $$$$(BLOCKSIZE) =
|
>> > tplink-v1-header -O
>> > [...]
>> > Would any of you be willing to spend some time testing this change on
>> > your TP-Link?
>> >
>> > Thank you and best regards,
>> > Bruno Pena
>> >
>> > On Tue, Jan 21, 2020 at 8:15 PM Bruno Pena <brunompena@gmail.com>
>> > wrote:
>> > > Hi Petr,
>> > >
>> > > Thank you for reverting the patches.
>> > >
>> > > I'm trying to replicate the issue but so far I haven't had any
>> > > luck, and just by looking at the code I'm not seeing where/what is
>> > > could be breaking.
>> > >
>> > > Regarding the upstream patch, that one is just an enabler (read: it
>> > > only extends the "mtd_add_partition" function but it does not add
>> > > any code to force the access mode on sub-partitions).
>> > > The reason for this is because this enforcement is done on the mtd
>> > > parser code that is OpenWrt specific and implemented via kernel
>> > > patches (not present on upstream).
>> > >
>> > > Best regards,
>> > > Bruno Pena
>> > >
>> > > On Tue, Jan 21, 2020 at 7:57 PM Petr =C5=A0tetiar <ynezz@true.cz> wr=
ote:
>> > > > Bruno Pena <brunompena@gmail.com> [2020-01-21 14:53:54]:
>> > > >
>> > > > Hi,
>> > > >
>> > > > > Based on the last comment from Steve (fstools patch was not
>> > > > reverted), I'm
>> > > > > not sure if that's the root cause.
>> > > >
>> > > > you need to find out, but that Daniel's remark seems legit to me,
>> > > > your patch
>> > > > likely changed the mtd device open order/flags.
>> > > >
>> > > > > The kernel patch (which when reverted makes rootfs_data
>> > > > writable again)
>> > > > > only enforces the parent mtd access mode on the sub-partitions.
>> > > >
>> > > > FYI I currently dont have time to fix that regression myself and
>> > > > since its
>> > > > likely affecting a lot of users, so I've reverted those changes.
>> > > > I think, that
>> > > > this change is useful, so I'm still willing to merge it once
>> > > > fixed, no
>> > > > worries. Having some upstream feedback beforehand would be a
>> > > > plus.
>> > > >
>> > > > BTW it would be fair to inform upstream about this possible issue
>> > > > as well, so
>> > > > the patch wont get merged in its current state, unless its double
>> > > > checked (or
>> > > > just write them, that you're planning v2, so the patch is removed
>> > > > from their
>> > > > Patchwork).
>> > > >
>> > > > -- ynezz
>>
>>

--0000000000005f9bad059cb70f64
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div dir=3D"auto">Hi Steve,</div><div dir=3D"auto"><br></=
div><div dir=3D"auto">I just noticed that I have just suggested you to chan=
ge the wrong section... sorry!</div><div dir=3D"auto">It&#39;s clearly stat=
ed on target/linux/ath79/image/<a href=3D"http://generic-tp-link.mk">generi=
c-tp-link.mk</a> that the A7-v5 uses the tplink-safeloader-uimage section b=
ut I somehow managed to copy the wrong one (doh!).</div><div dir=3D"auto">=
=C2=A0 =C2=A0 define Device/tplink_archer-a7-v5</div><div dir=3D"auto">=C2=
=A0 =C2=A0 =C2=A0 $(Device/tplink-safeloader-uimage)</div><div dir=3D"auto"=
>=C2=A0 =C2=A0 =C2=A0 SOC :=3D qca9563</div><div dir=3D"auto">=C2=A0 =C2=A0=
 =C2=A0 [...]</div><div dir=3D"auto"><br></div><div dir=3D"auto">On the bri=
ght side, today I actually got some free minutes to spare and I used them t=
o test some changes to the makefiles.</div><div dir=3D"auto">I have added t=
he following entries to get an overview of final partition size:</div><div =
dir=3D"auto">=C2=A0 =C2=A0 IMAGES +=3D kernel_1.bin kernel_2.bin kernel_3.b=
in kernel_4.bin kernel_5.bin kernel_6.bin</div><div dir=3D"auto">=C2=A0 =C2=
=A0 IMAGE/kernel_1.bin :=3D kernel-bin</div><div dir=3D"auto">=C2=A0 =C2=A0=
 IMAGE/kernel_2.bin :=3D kernel-bin | append-dtb</div><div dir=3D"auto">=C2=
=A0 =C2=A0 IMAGE/kernel_3.bin :=3D kernel-bin | append-dtb | lzma</div><div=
 dir=3D"auto">=C2=A0 =C2=A0 IMAGE/kernel_4.bin :=3D kernel-bin | append-dtb=
 | lzma | uImageArcher lzma</div><div dir=3D"auto">=C2=A0 =C2=A0 IMAGE/kern=
el_5.bin :=3D kernel-bin | append-dtb | lzma | pad-to 64k | uImageArcher lz=
ma</div><div dir=3D"auto">=C2=A0 =C2=A0 IMAGE/kernel_6.bin :=3D kernel-bin =
| append-dtb | lzma | uImageArcher lzma | pad-to 64k</div><div dir=3D"auto"=
><br></div><div dir=3D"auto">And these were the results:</div><div dir=3D"a=
uto">=C2=A0 =C2=A0 kernel_1.bin : 1804719 bytes [0x1b89af]</div><div dir=3D=
"auto">=C2=A0 =C2=A0 kernel_2.bin : 1813487 bytes [0x1babef]</div><div dir=
=3D"auto">=C2=A0 =C2=A0 kernel_3.bin : 1831548 bytes [0x1bf27c]</div><div d=
ir=3D"auto">=C2=A0 =C2=A0 kernel_4.bin : 1831612 bytes [0x1bf2bc]</div><div=
 dir=3D"auto">=C2=A0 =C2=A0 kernel_5.bin : 1835072 bytes [0x1c0040]</div><d=
iv dir=3D"auto">=C2=A0 =C2=A0 kernel_6.bin : 1835008 bytes [0x1c0000]</div>=
<div dir=3D"auto"><br></div><div dir=3D"auto">I have then proceeded to gene=
rate the corresponding sysupgrade.bin image with the settings of kernel_5 a=
nd kernel_6 so I could manually inspect the resulting files.</div><div dir=
=3D"auto"><br></div><div dir=3D"auto">Original sysupgrade.bin (rootfs start=
s at 0x001b89af):</div><div dir=3D"auto">=C2=A0 =C2=A0 001b89a0=C2=A0 68 81=
 9d 3b bd c9 86 98=C2=A0 76 c4 f0 1e 0e 94 e0 68=C2=A0 |h..;....v......h|</=
div><div dir=3D"auto">=C2=A0 =C2=A0 001b89b0=C2=A0 73 71 73 57 03 00 00 00=
=C2=A0 6e 27 5e 00 00 04 00 0f=C2=A0 |sqsW....n&#39;^.....|</div><div dir=
=3D"auto">=C2=A0 =C2=A0 001b89c0=C2=A0 00 00 00 04 00 12 00 c0=C2=A0 06 01 =
00 04 00 00 00 ff=C2=A0 |................|</div><div dir=3D"auto"><br></div=
><div dir=3D"auto">Settings from kernel_5 sysupgrade.bin (rootfs starts at =
0x001c0040):</div><div dir=3D"auto">=C2=A0 =C2=A0 001b89b0=C2=A0 00 00 00 0=
0 00 00 00 00=C2=A0 00 00 00 00 00 00 00 00=C2=A0 |................|</div><=
div dir=3D"auto">=C2=A0 =C2=A0 *</div><div dir=3D"auto">=C2=A0 =C2=A0 001c0=
040=C2=A0 68 73 71 73 57 03 00 00=C2=A0 00 6e 27 5e 00 00 04 00=C2=A0 |hsqs=
W....n&#39;^....|</div><div dir=3D"auto"><br></div><div dir=3D"auto">Settin=
gs from kernel_6 sysupgrade.bin (rootfs starts at 0x001c0000):</div><div di=
r=3D"auto">=C2=A0 =C2=A0 001b89b0=C2=A0 00 00 00 00 00 00 00 00=C2=A0 00 00=
 00 00 00 00 00 00=C2=A0 |................|</div><div dir=3D"auto">=C2=A0 =
=C2=A0 *</div><div dir=3D"auto">=C2=A0 =C2=A0 001c0000=C2=A0 68 73 71 73 57=
 03 00 00=C2=A0 00 6e 27 5e 00 00 04 00=C2=A0 |hsqsW....n&#39;^....|</div><=
div dir=3D"auto"><br></div><div dir=3D"auto">Based on these I would ask if =
you could test again with the following change to target/linux/ath79/image/=
<a href=3D"http://common-tp-link.mk">common-tp-link.mk</a> (append &quot;| =
pad-to 64k&quot; to the KERNEL line):</div><div dir=3D"auto">=C2=A0 =C2=A0 =
define Device/tplink-safeloader-uimage</div><div dir=3D"auto">=C2=A0 =C2=A0=
 =C2=A0 $(Device/tplink-safeloader)</div><div dir=3D"auto">=C2=A0 =C2=A0 =
=C2=A0 KERNEL :=3D kernel-bin | append-dtb | lzma | uImageArcher lzma | pad=
-to 64k</div><div dir=3D"auto">=C2=A0 =C2=A0 endef</div><div dir=3D"auto"><=
br></div><div dir=3D"auto">I would also like to take the opportunity to ask=
 if it&#39;s worth pursuing this patch if it means that all devices (using =
mtd) will require their partitions to be padded to the blocksize?</div><div=
 dir=3D"auto"><br></div><div dir=3D"auto">Thank you and best regards,</div>=
<div dir=3D"auto">Bruno Pena</div></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Wed, Jan 22, 2020, 07:13 Bruno Pena &l=
t;<a href=3D"mailto:brunompena@gmail.com">brunompena@gmail.com</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Hi Steve,<div><=
br></div><div>Thank you for testing.</div><div>You implemented my suggestio=
n correctly but it seems that it didn&#39;t actually pad anything (the size=
s of the partitions should be rounded to the next 0x10000 block).</div><div=
>Please allow me a few days (real-life constraints) to test some changes to=
 the=C2=A0<a href=3D"http://common-tp-link.mk" target=3D"_blank" rel=3D"nor=
eferrer">common-tp-link.mk</a> before I waste more of your time with these =
tests.</div><div><br></div><div>Best regards,</div><div>Bruno Pena</div></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Wed, Jan 22, 2020 at 12:16 AM Steve Brown &lt;<a href=3D"mailto:sbrown@ewol=
.com" target=3D"_blank" rel=3D"noreferrer">sbrown@ewol.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi Bruno,<br>
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
rel=3D"noreferrer noreferrer" target=3D"_blank">common-tp-link.mk</a> b/tar=
get/linux/ath79/image/<a href=3D"http://common-tp-link.mk" rel=3D"noreferre=
r noreferrer" target=3D"_blank">common-tp-link.mk</a><br>
index 8aa6a5a2be..89e73a85f3 100644<br>
--- a/target/linux/ath79/image/<a href=3D"http://common-tp-link.mk" rel=3D"=
noreferrer noreferrer" target=3D"_blank">common-tp-link.mk</a><br>
+++ b/target/linux/ath79/image/<a href=3D"http://common-tp-link.mk" rel=3D"=
noreferrer noreferrer" target=3D"_blank">common-tp-link.mk</a><br>
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
&gt; <a href=3D"http://link.mk" rel=3D"noreferrer noreferrer" target=3D"_bl=
ank">link.mk</a> so it pads the kernel partition to the blocksize (untested=
<br>
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
mpena@gmail.com" target=3D"_blank" rel=3D"noreferrer">brunompena@gmail.com<=
/a>&gt;<br>
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
mailto:ynezz@true.cz" target=3D"_blank" rel=3D"noreferrer">ynezz@true.cz</a=
>&gt; wrote:<br>
&gt; &gt; &gt; Bruno Pena &lt;<a href=3D"mailto:brunompena@gmail.com" targe=
t=3D"_blank" rel=3D"noreferrer">brunompena@gmail.com</a>&gt; [2020-01-21 14=
:53:54]:<br>
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
</blockquote></div>

--0000000000005f9bad059cb70f64--


--===============6062295090531103083==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6062295090531103083==--

