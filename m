Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 402531452B0
	for <lists+openwrt-devel@lfdr.de>; Wed, 22 Jan 2020 11:34:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=p+lsep4gvvx60GroBm4YzxT4iqVUAJeypnWMjIPPoC8=; b=RHxmzT/JXu2lgYlmWFEjN7//7
	yIu21+Z3WRMsYCNP9c+lPe9DIVitIMs4GmWppmUaPpPEBzwqS9Xm5mLq7w0omABAJfid1bMevsW6r
	L7N/f13mFOx60Y1dya0Rk+uY2NERgNeAOwC8BVKfcxnHgGBdyomN8wzrupaFum30nY2Ugb2hPr/xV
	dkrnywTn6WSozxgipPNIKcCf+PDjHx2Fs8GZq5Qd1UhONJriVnGlkqudf7+2rNMpWBQl6TAIQulqJ
	7jZtQjXN79HhqiOg0+LINPe8kqPSNq2rqmfgP9tV1qU5A2O9te8Cc4hmHM6JLsTxYzNWrRCDN6nMu
	b7DS+AthQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuDL7-0007hP-DZ; Wed, 22 Jan 2020 10:34:25 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuDKz-0007gi-RF
 for openwrt-devel@lists.openwrt.org; Wed, 22 Jan 2020 10:34:19 +0000
Received: by mail-vs1-xe42.google.com with SMTP id s16so3840734vsc.10
 for <openwrt-devel@lists.openwrt.org>; Wed, 22 Jan 2020 02:34:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=fw2f//qh4BXKPGMbebu+ZWTO6zzpCrqghgOgyZv1QTY=;
 b=eN0od0SlPtU2eJITaEwW6OYTC7bT1o/SX8h41YoyHdMG0mWpW7/GyoZtfgUYALwAE7
 tTazR4Fyb87b82qL1u9AL0+SC+sZVwC9xYuv97lKEK1vGhOmf+4LB0SX7x+EmFq4KGu9
 j+70j0k5rgfgIe5dBFoDhOUB52uzXfk3EmP0mDSi1KRW029x+ZGO7nMi8X9TwJgIQwsD
 eCW27GzjYY1Qikyy3zGvb0an0XEy7X+kjs/r3ZCccyaSZUqiQ3z0AFqDactZIO4GmzKr
 mCiDrMUWGethZF5e8uJcss2JtXck7VREyR0pKn7UydruvR6VdrV8zCd4MQC5S2INCAjN
 WxXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=fw2f//qh4BXKPGMbebu+ZWTO6zzpCrqghgOgyZv1QTY=;
 b=leHRkbWCWUgHo+SU7G+9qo697qzm5zcUNCS8wGoXcniCMYPpAT8RmPspb8aTKs8ast
 0zvHAtyAcuRe5+ZR740DohQd+7tY5Drtp9YaUBaFDJrdiePIbdgdqvHKEqi9mmMxCsaJ
 wRmRqC+2KMC++jUmR8zguU1AlF2HewghZI1vsxqvbVFnC1kuGeRmXIwO4SreQ2d8fOTI
 w51sAugxbAZYZN5LrTsrzic5Wmc53fcL5a19X0nixOL88DHihjQdHHwU6r9SVNfp8AGT
 7GAjUGBpzQB5pxfNY374Ud4ufuKSDrn3PkrVrCDDHbXIhrXwNKQw1i/3AsV+iR0Bt0hJ
 N4XA==
X-Gm-Message-State: APjAAAX5o2XatBn3Vk5suLzyK/v8/gz4k0aQ4frQeUiBUOOX354xZfpS
 vq9sUUFXbhI7oKj7Hb4Z3dfcL5tmyIKdh0zwwNayvNQu
X-Google-Smtp-Source: APXvYqzkhQhEHR7seIQIns3FH0YqVaK60Dml8KjAoPlG2MamXmbh8A/eAnd4tGU8kJJo8vQ69mRZjvzziqEU7pPkBWg=
X-Received: by 2002:a67:7a03:: with SMTP id v3mr2331698vsc.66.1579689256789;
 Wed, 22 Jan 2020 02:34:16 -0800 (PST)
MIME-Version: 1.0
References: <CADwgkMUhZ4TrqhiJJPHLL0aVyxxvKfABwDz-4wv_QZ_cyZvj9A@mail.gmail.com>
 <CADwgkMWzviYbcOcbY1R5C9gyY_WAwQpyyYW0eWptm369k-d7-Q@mail.gmail.com>
 <20200121104934.GA2465@makrotopia.org>
 <CADwgkMWQxN5WLeG9oyR0RdeahC+ZHeykLNGj0PfKtCvG81Qxxw@mail.gmail.com>
 <20200121185716.GL69327@meh.true.cz>
 <CADwgkMVVX_kX8w18AtGwhvwoY=MOW=_7chPScey-7T32+g1uDA@mail.gmail.com>
 <CADwgkMUy5--GR3du_-qj+m0Ag=fTA9pfOhDJO0DCbWcDtvHjZg@mail.gmail.com>
 <989a2a224ceac0368c713ecc537af005eb45f035.camel@ewol.com>
 <CADwgkMXLgcnJ0_KBCto+oS3o4PpQeQThH7qp=DwE0JWYAoz7eQ@mail.gmail.com>
 <CADwgkMXf2q3uuyTFrce2NL_Z3EGVW8OC9tVeh6MRxdiAMu7CvQ@mail.gmail.com>
 <20200122094051.GC1406@makrotopia.org>
 <CADwgkMWVL6g_=xkGyMbK4Xj-EEfx10tQYwtF1ZgFq6x-QnhhfA@mail.gmail.com>
In-Reply-To: <CADwgkMWVL6g_=xkGyMbK4Xj-EEfx10tQYwtF1ZgFq6x-QnhhfA@mail.gmail.com>
From: Bruno Pena <brunompena@gmail.com>
Date: Wed, 22 Jan 2020 11:34:04 +0100
Message-ID: <CADwgkMXayQZ5f7sLiz0dEBv4CigJS=Gchsa2xw3OTSuUf7B7dQ@mail.gmail.com>
To: Daniel Golle <daniel@makrotopia.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_023417_915212_34A11E48 
X-CRM114-Status: GOOD (  19.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
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
 openwrt-devel@lists.openwrt.org, Steve Brown <sbrown@ewol.com>
Content-Type: multipart/mixed; boundary="===============8539058771698357331=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============8539058771698357331==
Content-Type: multipart/alternative; boundary="00000000000001ac02059cb81102"

--00000000000001ac02059cb81102
Content-Type: text/plain; charset="UTF-8"

Just a small correction on the previous email, there's actually no padding
requirement since everything will be read-only!

On Wed, Jan 22, 2020, 11:25 Bruno Pena <brunompena@gmail.com> wrote:

> Hi Daniel,
>
> I was looking at the code and I think it's possible to relax the
> enforcement of the parent access mode.
> We can switch from a strict enforcement of the resulting mtd access mode,
> to only enforcing the configured access mode (from the DTS file).
>
> This can be achieved by changing from using mtd.flags to mtd.orig_flags:
>     parts[i].mask_flags = !(slave->mtd.orig_flags & MTD_WRITEABLE) ?
> MTD_WRITEABLE : 0;
>
> With this change we no longer impact builds that do not have a read-only
> firmware partition, but we can still enforce it for those that need it.
> One thing to keep in mind is that the padding is still a requirement for
> those devices which are building a read-only firmware partition!
>
> Also please note this is not tested, these conclusions are only based on
> the analysis of the kernel source code.
>
> Best regards,
> Bruno Pena
>
>
> On Wed, Jan 22, 2020, 10:40 Daniel Golle <daniel@makrotopia.org> wrote:
>
>> Hi Bruno,
>>
>> On Wed, Jan 22, 2020 at 10:22:01AM +0100, Bruno Pena wrote:
>> > I would also like to take the opportunity to ask if it's worth pursuing
>> > this patch if it means that all devices (using mtd) will require their
>> > partitions to be padded to the blocksize?
>>
>> Please try not to introduce that padding, it's quite a big impact on
>> all devices while only very few (wifi-only device) really need that
>> change. Instead of wasting flash space by additional padding I'd rather
>> want to see an OpenWrt-specific kernel-patch to allow a rw subpartition
>> sitting inside an ro partition or just flatten the mtd partitioning.
>> What I mean by flatteing is this:
>>
>> yout current approach:
>> +-----------------------------+
>> |          firmware           |
>> +--------+--------------------+
>> |        $       rootfs       |
>> | kernel +------+-------------+
>> |        $ rom  | rootfs_data |
>> +--------+------+-------------+
>>
>> here rootfs_data inherigs the read-only from rootfs not being block-
>> aligned. a better/flat approach would be:
>> +-----------------------------+
>> |          firmware           |
>> +--------+------+-------------+
>> | kernel $ rom  | rootfs_data |
>> +--------+------+-------------+
>>
>> Now this would require major changes to our mtd-splitting subsystem
>> which is quite a big amount of work...
>>
>>
>> Cheers
>>
>>
>> Daniel
>>
>

--00000000000001ac02059cb81102
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Just a small correction on the previous email, there&#39;=
s actually no padding requirement since everything will be read-only!</div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed=
, Jan 22, 2020, 11:25 Bruno Pena &lt;<a href=3D"mailto:brunompena@gmail.com=
">brunompena@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1e=
x"><div dir=3D"auto"><div dir=3D"auto">Hi Daniel,</div><div dir=3D"auto"><b=
r></div><div dir=3D"auto">I was looking at the code and I think it&#39;s po=
ssible to relax the enforcement of the parent access mode.</div><div dir=3D=
"auto">We can switch from a strict enforcement of the resulting mtd access =
mode, to only enforcing the configured access mode (from the DTS file).</di=
v><div dir=3D"auto"><br></div><div dir=3D"auto">This can be achieved by cha=
nging from using mtd.flags to mtd.orig_flags:</div><div dir=3D"auto">=C2=A0=
 =C2=A0 parts[i].mask_flags =3D !(slave-&gt;mtd.orig_flags &amp; MTD_WRITEA=
BLE) ? MTD_WRITEABLE : 0;</div><div dir=3D"auto"><br></div><div dir=3D"auto=
">With this change we no longer impact builds that do not have a read-only =
firmware partition, but we can still enforce it for those that need it.</di=
v><div dir=3D"auto">One thing to keep in mind is that the padding is still =
a requirement for those devices which are building a read-only firmware par=
tition!</div><div dir=3D"auto"><br></div><div dir=3D"auto">Also please note=
 this is not tested, these conclusions are only based on the analysis of th=
e kernel source code.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Be=
st regards,</div><div dir=3D"auto">Bruno Pena</div><div dir=3D"auto"><br></=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Wed, Jan 22, 2020, 10:40 Daniel Golle &lt;<a href=3D"mailto:daniel@m=
akrotopia.org" target=3D"_blank" rel=3D"noreferrer">daniel@makrotopia.org</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi Bruno,<br>
<br>
On Wed, Jan 22, 2020 at 10:22:01AM +0100, Bruno Pena wrote:<br>
&gt; I would also like to take the opportunity to ask if it&#39;s worth pur=
suing<br>
&gt; this patch if it means that all devices (using mtd) will require their=
<br>
&gt; partitions to be padded to the blocksize?<br>
<br>
Please try not to introduce that padding, it&#39;s quite a big impact on<br=
>
all devices while only very few (wifi-only device) really need that<br>
change. Instead of wasting flash space by additional padding I&#39;d rather=
<br>
want to see an OpenWrt-specific kernel-patch to allow a rw subpartition<br>
sitting inside an ro partition or just flatten the mtd partitioning.<br>
What I mean by flatteing is this:<br>
<br>
yout current approach:<br>
+-----------------------------+<br>
|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 firmware=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0|<br>
+--------+--------------------+ <br>
|=C2=A0 =C2=A0 =C2=A0 =C2=A0 $=C2=A0 =C2=A0 =C2=A0 =C2=A0rootfs=C2=A0 =C2=
=A0 =C2=A0 =C2=A0|<br>
| kernel +------+-------------+<br>
|=C2=A0 =C2=A0 =C2=A0 =C2=A0 $ rom=C2=A0 | rootfs_data |<br>
+--------+------+-------------+<br>
<br>
here rootfs_data inherigs the read-only from rootfs not being block-<br>
aligned. a better/flat approach would be:<br>
+-----------------------------+<br>
|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 firmware=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0|<br>
+--------+------+-------------+ <br>
| kernel $ rom=C2=A0 | rootfs_data |<br>
+--------+------+-------------+<br>
<br>
Now this would require major changes to our mtd-splitting subsystem<br>
which is quite a big amount of work...<br>
<br>
<br>
Cheers<br>
<br>
<br>
Daniel<br>
</blockquote></div>
</blockquote></div>

--00000000000001ac02059cb81102--


--===============8539058771698357331==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8539058771698357331==--

