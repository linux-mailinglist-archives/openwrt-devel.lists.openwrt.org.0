Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92B8E144644
	for <lists+openwrt-devel@lfdr.de>; Tue, 21 Jan 2020 22:11:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ahIPcqGFc7Vn5fKFuE+cAhjrw+6rmy8vFqi8TQG5088=; b=HKS7lsDMabnMNPOrN8WEYVsJ4
	QLcXDfReGsiFvyLkWmld+Q7SV5ptm7A6UF8WyIHlj9BfvsfpMLuaTpKU0fJN4rOLMSwKTKqSeKfCU
	mVuC6ZHdu0pYIxHbJsdiifhUsnG/DMexMZGy0qhx5ll+PVBhiKF4kTVU4jdHawX/leQe9p1uCeIPd
	qw42cRsfzPB2Irlp6vxqfWuZtIenO6nnitSmJ3uMSo8gR5IAsfChnKAbzmqKsl6kHQY7+SujkCllj
	QJhdBl+sZX4NjI0b2sjcbQzJjaVmr764x2akhXhJMT04tVv+Hcih6eChxzKRLdnqoMcRwX7LnSYdg
	l/4RqdyBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu0o1-0004v9-RV; Tue, 21 Jan 2020 21:11:25 +0000
Received: from mail-vs1-xe41.google.com ([2607:f8b0:4864:20::e41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu0nl-0004ub-6D
 for openwrt-devel@lists.openwrt.org; Tue, 21 Jan 2020 21:11:14 +0000
Received: by mail-vs1-xe41.google.com with SMTP id u14so2854694vsu.3
 for <openwrt-devel@lists.openwrt.org>; Tue, 21 Jan 2020 13:11:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Uc4xwWmIvvHuOYaKkWunv94GoLHR/0MGhttFlGpI1+Q=;
 b=qtf0KcfdGjMFGkJ9SWLurmDXcQ7/OOVP/nR1MH8zwNAbQtCK8chitYKvUkFixRcxIR
 +rDu5NdNvzLStsJjR/Z1oYcpv+FxobhTR6n53PGGUh9eAhZjxxJqgjtjUJf/u4zqH9wW
 sKZK4rrNKY1LhCrewHTe73D9Fy2wsn3DDeOpcsa2VtQ4f7OZV+mUXFpaJQf0XuNMt7qn
 CEikJwAf5rplzaU2J4Y82hBvCrCXwE9T9nULAkDwP4EQMdLsIowY0mZBXJ55l0ePh8Zc
 BIfLYIW9v2axRP2AB6tGGGsIXLnuTDVaCKFaM7dj424cX04WDMo4CVL2i05/EXImFJGz
 yoxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Uc4xwWmIvvHuOYaKkWunv94GoLHR/0MGhttFlGpI1+Q=;
 b=lYaYtgAwdPvgqCaTRn9gNW01KKi1rtfOio9Qs7gFh9Px3hnTDHeQAWGhg2cIbw0P54
 FvEKcSBML0INWolR4CyGNO9w7TIVrV5zUAH5haaxvMZqWryJMUq4MR5hBWr09o2SzNyW
 Y/Q3fxkIJhqz9oYf46FpWRDTxe0exLwcTqc6D8DXfT86e1PrWUUFUgLs/dYzzpQ3i1Sy
 UE861LfSbzKcjjgLfdk670pGJREDYOH5+bWLoqmxqCVD2zuc5T7laeZe2A5jOcue7KbP
 H3L3fmw4Gx63nUBCyvbQ0+6Adz/CRa1ImRlw/lYsLIIaC+0gkN/Fq7VBBpUGIBFxW9cw
 2lDw==
X-Gm-Message-State: APjAAAVWs/mOlboo+VahX7P+60e7j5o9v9FRLIc/s37jF2iJYtdD1VmH
 IJ0BcCn5UVNBT8gtA51Nz0EymB0ZXuT5vgXbhrrPw1UuITQ=
X-Google-Smtp-Source: APXvYqzBOYGos54k94I8ooIDeFbTSWfRSoVym3TZjHXiAxKox83694TiZkByUTFMf15+a7SnYBcNYsz1QiF04RLKGQo=
X-Received: by 2002:a67:7a03:: with SMTP id v3mr612195vsc.66.1579641067461;
 Tue, 21 Jan 2020 13:11:07 -0800 (PST)
MIME-Version: 1.0
References: <1578138728-1256-1-git-send-email-brunompena@gmail.com>
 <0cf18b56d78d859f8d7bf30bccc6ce0762d35302.camel@ewol.com>
 <CADwgkMUhZ4TrqhiJJPHLL0aVyxxvKfABwDz-4wv_QZ_cyZvj9A@mail.gmail.com>
 <CADwgkMWzviYbcOcbY1R5C9gyY_WAwQpyyYW0eWptm369k-d7-Q@mail.gmail.com>
 <20200121104934.GA2465@makrotopia.org>
 <CADwgkMWQxN5WLeG9oyR0RdeahC+ZHeykLNGj0PfKtCvG81Qxxw@mail.gmail.com>
 <20200121185716.GL69327@meh.true.cz>
 <CADwgkMVVX_kX8w18AtGwhvwoY=MOW=_7chPScey-7T32+g1uDA@mail.gmail.com>
In-Reply-To: <CADwgkMVVX_kX8w18AtGwhvwoY=MOW=_7chPScey-7T32+g1uDA@mail.gmail.com>
From: Bruno Pena <brunompena@gmail.com>
Date: Tue, 21 Jan 2020 22:10:31 +0100
Message-ID: <CADwgkMUy5--GR3du_-qj+m0Ag=fTA9pfOhDJO0DCbWcDtvHjZg@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_131109_245593_B5FD72AA 
X-CRM114-Status: GOOD (  26.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e41 listed in]
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
Cc: openwrt-devel@lists.openwrt.org, Steve Brown <sbrown@ewol.com>,
 Daniel Golle <daniel@makrotopia.org>
Content-Type: multipart/mixed; boundary="===============3704959748709095350=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============3704959748709095350==
Content-Type: multipart/alternative; boundary="000000000000b2df9f059cacd807"

--000000000000b2df9f059cacd807
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi everyone,

I was finally able to replicate the issue you are observing.

The problem comes from the fact that the kernel partition on the TP-Link
images is not padded to the write blocksize - which can be observed on the
dmesg from Steve:

[    0.450987] 0x000000000000-0x0000001a39ea : "kernel"
[    0.456772] 0x0000001a39ea-0x000000ec0000 : "rootfs"

The blocksize can be seen observed on the /proc/mtd and for that device is
0x10000:

mtd3: 001a38de 00010000 "kernel"
mtd4: 00d1c722 00010000 "rootfs"

This triggers the following code on drivers/mtd/mtdpart.c that removes the
write flag from the rootfs partition:

        tmp =3D part_absolute_offset(parent) + slave->offset;
        remainder =3D do_div(tmp, wr_alignment);
        if ((slave->mtd.flags & MTD_WRITEABLE) && remainder) {
                /* Doesn't start on a boundary of major erase size */
                slave->mtd.flags |=3D MTD_ERASE_PARTIAL;
                if (((u32)slave->mtd.size) > parent->erasesize)
                        slave->mtd.flags &=3D ~MTD_WRITEABLE;
                else
                        slave->mtd.erasesize =3D slave->mtd.size;
        }

        tmp =3D part_absolute_offset(parent) + slave->offset + slave->mtd.s=
ize;
        remainder =3D do_div(tmp, wr_alignment);
        if ((slave->mtd.flags & MTD_WRITEABLE) && remainder) {
                slave->mtd.flags |=3D MTD_ERASE_PARTIAL;

                if ((u32)slave->mtd.size > parent->erasesize)
                        slave->mtd.flags &=3D ~MTD_WRITEABLE;
                else
                        slave->mtd.erasesize =3D slave->mtd.size;
        }

Now we have a rootfs partition that is set to read-only, and with the
kernel patch that forces sub-partitions to match the access mode of the
parent, when the split runs it will force the rootfs_data partition to
match the parent access mode (read-only).

My suggestion is to change the target/linux/ath79/image/common-tp-link.mk
so it pads the kernel partition to the blocksize (untested suggestion
below):

define Device/tplink-safeloader
  $(Device/tplink)
  KERNEL :=3D kernel-bin | append-dtb | lzma | pad-to $$$$(BLOCKSIZE) |
tplink-v1-header -O
[...]

Would any of you be willing to spend some time testing this change on your
TP-Link?

Thank you and best regards,
Bruno Pena

On Tue, Jan 21, 2020 at 8:15 PM Bruno Pena <brunompena@gmail.com> wrote:

> Hi Petr,
>
> Thank you for reverting the patches.
>
> I'm trying to replicate the issue but so far I haven't had any luck, and
> just by looking at the code I'm not seeing where/what is could be breakin=
g.
>
> Regarding the upstream patch, that one is just an enabler (read: it only
> extends the "mtd_add_partition" function but it does not add any code to
> force the access mode on sub-partitions).
> The reason for this is because this enforcement is done on the mtd parser
> code that is OpenWrt specific and implemented via kernel patches (not
> present on upstream).
>
> Best regards,
> Bruno Pena
>
> On Tue, Jan 21, 2020 at 7:57 PM Petr =C5=A0tetiar <ynezz@true.cz> wrote:
>
>> Bruno Pena <brunompena@gmail.com> [2020-01-21 14:53:54]:
>>
>> Hi,
>>
>> > Based on the last comment from Steve (fstools patch was not reverted),
>> I'm
>> > not sure if that's the root cause.
>>
>> you need to find out, but that Daniel's remark seems legit to me, your
>> patch
>> likely changed the mtd device open order/flags.
>>
>> > The kernel patch (which when reverted makes rootfs_data writable again=
)
>> > only enforces the parent mtd access mode on the sub-partitions.
>>
>> FYI I currently dont have time to fix that regression myself and since i=
ts
>> likely affecting a lot of users, so I've reverted those changes. I think=
,
>> that
>> this change is useful, so I'm still willing to merge it once fixed, no
>> worries. Having some upstream feedback beforehand would be a plus.
>>
>> BTW it would be fair to inform upstream about this possible issue as
>> well, so
>> the patch wont get merged in its current state, unless its double checke=
d
>> (or
>> just write them, that you're planning v2, so the patch is removed from
>> their
>> Patchwork).
>>
>> -- ynezz
>>
>

--000000000000b2df9f059cacd807
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi everyone,<div><br></div><div>I was finally able to repl=
icate the issue you are observing.</div><div><br></div><div>The problem com=
es from the fact that the kernel partition on the TP-Link images is not pad=
ded to the write blocksize=C2=A0- which can be observed on the dmesg from S=
teve:</div><div><pre class=3D"gmail-content" style=3D"box-sizing:border-box=
;overflow:auto;font-family:Menlo,Monaco,Consolas,&quot;Courier New&quot;,mo=
nospace;font-size:13px;padding:9.5px;margin-top:0px;margin-bottom:10px;line=
-height:14.3px;color:rgb(51,51,51);word-break:break-all;border:0px;border-r=
adius:0px">[    0.450987] 0x000000000000-0x0000001a39ea : &quot;kernel&quot=
;
[    0.456772] 0x0000001a39ea-0x000000ec0000 : &quot;rootfs&quot;</pre></di=
v><div>The blocksize can be seen observed on the /proc/mtd and for that dev=
ice is 0x10000:</div><div><pre class=3D"gmail-content" style=3D"box-sizing:=
border-box;overflow:auto;font-family:Menlo,Monaco,Consolas,&quot;Courier Ne=
w&quot;,monospace;font-size:13px;padding:9.5px;margin-top:0px;margin-bottom=
:10px;line-height:14.3px;color:rgb(51,51,51);word-break:break-all;border:0p=
x;border-radius:0px">mtd3: 001a38de 00010000 &quot;kernel&quot;
mtd4: 00d1c722 00010000 &quot;rootfs&quot;</pre></div><div>This triggers th=
e following code on drivers/mtd/mtdpart.c that removes the write flag from =
the rootfs partition:<br></div><div><div><pre class=3D"gmail-content" style=
=3D"box-sizing:border-box;overflow:auto;font-family:Menlo,Monaco,Consolas,&=
quot;Courier New&quot;,monospace;font-size:13px;padding:9.5px;margin-top:0p=
x;margin-bottom:10px;line-height:14.3px;color:rgb(51,51,51);word-break:brea=
k-all;border:0px;border-radius:0px">=C2=A0 =C2=A0 =C2=A0 =C2=A0 tmp =3D par=
t_absolute_offset(parent) + slave-&gt;offset;<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 remainder =3D do_div(tmp, wr_alignment);<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 if ((slave-&gt;mtd.flags &amp; MTD_WRITEABLE) &amp;&amp; remainder) {<br>=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /* Doesn&#39;t star=
t on a boundary of major erase size */<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 slave-&gt;mtd.flags |=3D MTD_ERASE_PARTIAL;<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if (((u32)slave-&gt;mt=
d.size) &gt; parent-&gt;erasesize)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 slave-&gt;mtd.flags &amp;=
=3D ~MTD_WRITEABLE;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 else<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 slave-&gt;mtd.erasesize =3D slave-&gt;mtd.size;<br>=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 }<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 tmp =3D part_=
absolute_offset(parent) + slave-&gt;offset + slave-&gt;mtd.size;<br>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 remainder =3D do_div(tmp, wr_alignment);<br>=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 if ((slave-&gt;mtd.flags &amp; MTD_WRITEABLE) &amp;&amp; =
remainder) {<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 sla=
ve-&gt;mtd.flags |=3D MTD_ERASE_PARTIAL;<br><br>=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if ((u32)slave-&gt;mtd.size &gt; parent-&gt;er=
asesize)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 slave-&gt;mtd.flags &amp;=3D ~MTD_WRITEABLE;<br>=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else<br>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 slave-&g=
t;mtd.erasesize =3D slave-&gt;mtd.size;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 }
</pre></div><div>Now we have a rootfs partition that is set to read-only, a=
nd with the kernel patch that forces sub-partitions to match the access mod=
e of the parent, when the split runs it will force the rootfs_data partitio=
n to match the parent access mode (read-only).</div></div><div><br></div><d=
iv>My suggestion is to change the=C2=A0target/linux/ath79/image/<a href=3D"=
http://common-tp-link.mk">common-tp-link.mk</a> so it pads the kernel parti=
tion to the blocksize (untested suggestion below):</div><div><pre class=3D"=
gmail-content" style=3D"box-sizing:border-box;overflow:auto;font-family:Men=
lo,Monaco,Consolas,&quot;Courier New&quot;,monospace;font-size:13px;padding=
:9.5px;margin-top:0px;margin-bottom:10px;line-height:14.3px;color:rgb(51,51=
,51);word-break:break-all;border:0px;border-radius:0px">define Device/tplin=
k-safeloader<br>=C2=A0 $(Device/tplink)<br>=C2=A0 KERNEL :=3D kernel-bin | =
append-dtb | lzma | pad-to $$$$(BLOCKSIZE) | tplink-v1-header -O<br>[...]<b=
r></pre></div><div>Would any of you be willing to spend some time testing t=
his change on your TP-Link?</div><div><br></div><div>Thank you and best reg=
ards,</div><div>Bruno Pena</div></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Tue, Jan 21, 2020 at 8:15 PM Bruno Pena =
&lt;<a href=3D"mailto:brunompena@gmail.com">brunompena@gmail.com</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D=
"ltr">Hi Petr,<div><br></div><div>Thank you for reverting the patches.</div=
><div><br></div><div>I&#39;m trying to replicate the issue but so far I hav=
en&#39;t had any luck, and just by looking at the code I&#39;m not seeing w=
here/what is could be breaking.</div><div><br></div><div>Regarding the upst=
ream patch, that one is just an enabler (read: it only extends the &quot;mt=
d_add_partition&quot; function but it does not add any code to force the ac=
cess=C2=A0mode on sub-partitions).</div><div>The reason for this is because=
 this enforcement is done on the mtd parser code that is OpenWrt specific a=
nd implemented via kernel patches (not present on upstream).</div><div><br>=
</div><div>Best regards,</div><div>Bruno Pena</div></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jan 21, 2020 at =
7:57 PM Petr =C5=A0tetiar &lt;<a href=3D"mailto:ynezz@true.cz" target=3D"_b=
lank">ynezz@true.cz</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex">Bruno Pena &lt;<a href=3D"mailto:brunompena@gmail.com" t=
arget=3D"_blank">brunompena@gmail.com</a>&gt; [2020-01-21 14:53:54]:<br>
<br>
Hi,<br>
<br>
&gt; Based on the last comment from Steve (fstools patch was not reverted),=
 I&#39;m<br>
&gt; not sure if that&#39;s the root cause.<br>
<br>
you need to find out, but that Daniel&#39;s remark seems legit to me, your =
patch<br>
likely changed the mtd device open order/flags.<br>
<br>
&gt; The kernel patch (which when reverted makes rootfs_data writable again=
)<br>
&gt; only enforces the parent mtd access mode on the sub-partitions.<br>
<br>
FYI I currently dont have time to fix that regression myself and since its<=
br>
likely affecting a lot of users, so I&#39;ve reverted those changes. I thin=
k, that<br>
this change is useful, so I&#39;m still willing to merge it once fixed, no<=
br>
worries. Having some upstream feedback beforehand would be a plus.<br>
<br>
BTW it would be fair to inform upstream about this possible issue as well, =
so<br>
the patch wont get merged in its current state, unless its double checked (=
or<br>
just write them, that you&#39;re planning v2, so the patch is removed from =
their<br>
Patchwork).<br>
<br>
-- ynezz<br>
</blockquote></div>
</blockquote></div>

--000000000000b2df9f059cacd807--


--===============3704959748709095350==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3704959748709095350==--

