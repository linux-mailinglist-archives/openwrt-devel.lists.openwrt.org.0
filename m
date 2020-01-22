Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF1D31453A1
	for <lists+openwrt-devel@lfdr.de>; Wed, 22 Jan 2020 12:19:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=n4JcJNEzUPWr5jF31U/+eLtFCxZHLcywQyENAph0Peg=; b=q+QtZ+RPWbnAuHE3JRWjzqSbz
	UERoJ3pv0r75y+9xr00S/drXjqDZn/dbY131djBLN8b1SXAUTCtwzcpvYA6TAa+z9nxJmph6qB5rS
	6Cl8/IiRQK0Dvwzk1VRQJOd/QkBWJ8Po0lBsqnZPXqXfiNLMEwCA24qE4ida7B2eZpv4cG+E1xdDD
	wFFOkF+Etiy/hahjUEKvFSO4i4QwPmW1U2DYlEgvaKcj+pFYnKHQCCMbW4R/sa773CZm8aCnM/Sse
	dxqO08B0ShqxGaYe+n8AWdktAs9AILpU6v7fC/1LCunl+jPo5w2TbjEXObqwRs1TRC//73gjTKK8p
	LLzKGP/3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuE2S-0001TS-0r; Wed, 22 Jan 2020 11:19:12 +0000
Received: from mail-ua1-x944.google.com ([2607:f8b0:4864:20::944])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuE2H-0001Sx-6j
 for openwrt-devel@lists.openwrt.org; Wed, 22 Jan 2020 11:19:02 +0000
Received: by mail-ua1-x944.google.com with SMTP id l6so2234616uap.13
 for <openwrt-devel@lists.openwrt.org>; Wed, 22 Jan 2020 03:19:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Q3m/fWX0i8iw4Rn7fEd/VXGBaizgVMJ9p/5sJml7Q+o=;
 b=Oh31x591KYgRPG00lPWgSMJ8u7TLOwO8y1SIYfBpGhuBMMUe57VX+PiGOLY2xkNahw
 WcK+SVwyN3yY7mWdzoSeX9QD5hGB9JdiU5N4QLoZ9NMjrZQLsIg2S6dC52/PvbABorZK
 /MClJP4d6uX4D2b+QtlAAzA2KdCJ4A2Z2Q9uf8Z5RfBlovxkM3nVOLGmfcb5pDfnNqNY
 KKIklzVzu2RTuZhDcC6b9QNgQEf8ekK97j+BOsilax8w9vK69uKuwDOiKhZK9LfFDzRL
 gUxxRqDQsdvPf4QzPYK+6huoRji+9nr+n7IlIkGSnYyvhGSY3klj1MkMnp1zkos4837l
 JJ0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Q3m/fWX0i8iw4Rn7fEd/VXGBaizgVMJ9p/5sJml7Q+o=;
 b=uIkvDv8Zr2XJ8aPlAgRNPNPUhDeClPuWQ7GBetP2h7pNGOiymvwJB7s0Z7sJCvgXEF
 +cCjwyMQTSvSqRHSqZ61F7CERtvHLLsTmxr8YREdnRYq3SIQpcH7e4HRyVDlhhlpQhau
 K36uMuhry9ZTFlahEB+0pGvjx9pBxh7HehkGDTLfPqdJV+bdFI18LGdJLHtizbTjOdEZ
 /Exe1R9vDLdDTI/F/o0B+HFu8Yi/SmZgra987uI06zIsrBQqTu5kNTbkI+7TXSLJ8Sv8
 WtXjYzcd7VCDKP6pR/J6li5UEzXrHmTC0eSD1TjcqICZGciu2ZFWBWG+1++E4zHPmULW
 JZdA==
X-Gm-Message-State: APjAAAUKxFrEZD3XUJmCepvglqV8N2aDTyGop1JA4t2Uwg1Fd+H5xIZZ
 FnZz7usbVABE2Bhu4lf9rCMY5puMVkv+wsUeYAQ=
X-Google-Smtp-Source: APXvYqyB8gI6862feaXR5HOQdgfTd9t1om0dbuSCuhopCiAf7tF9iJENe48yX2t1xIt0Eea1Zgmq90BoLAx8sAuJiCw=
X-Received: by 2002:ab0:1051:: with SMTP id g17mr6296180uab.52.1579691939622; 
 Wed, 22 Jan 2020 03:18:59 -0800 (PST)
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
 <CADwgkMXayQZ5f7sLiz0dEBv4CigJS=Gchsa2xw3OTSuUf7B7dQ@mail.gmail.com>
In-Reply-To: <CADwgkMXayQZ5f7sLiz0dEBv4CigJS=Gchsa2xw3OTSuUf7B7dQ@mail.gmail.com>
From: Bruno Pena <brunompena@gmail.com>
Date: Wed, 22 Jan 2020 12:18:47 +0100
Message-ID: <CADwgkMVz=EkUrD+55u4QqGw2b3tLH8ePh5nQPrrbnngnGwE3RQ@mail.gmail.com>
To: Steve Brown <sbrown@ewol.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_031901_252074_751264BB 
X-CRM114-Status: GOOD (  16.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:944 listed in]
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
Content-Type: multipart/mixed; boundary="===============5463566400133905870=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============5463566400133905870==
Content-Type: multipart/alternative; boundary="000000000000ea72ad059cb8b0d0"

--000000000000ea72ad059cb8b0d0
Content-Type: text/plain; charset="UTF-8"

Hi Steve,

Don't waste your time with the previous test request.
I'll try to test either today/tomorrow the "mtd.orig_flags" approach on my
device and - if successful - I'll then ask if you can try it on your
TP-Link.

Thank you and best regards,
Bruno Pena

On Wed, Jan 22, 2020, 11:34 Bruno Pena <brunompena@gmail.com> wrote:

> Just a small correction on the previous email, there's actually no padding
> requirement since everything will be read-only!
>
> On Wed, Jan 22, 2020, 11:25 Bruno Pena <brunompena@gmail.com> wrote:
>
>> Hi Daniel,
>>
>> I was looking at the code and I think it's possible to relax the
>> enforcement of the parent access mode.
>> We can switch from a strict enforcement of the resulting mtd access mode,
>> to only enforcing the configured access mode (from the DTS file).
>>
>> This can be achieved by changing from using mtd.flags to mtd.orig_flags:
>>     parts[i].mask_flags = !(slave->mtd.orig_flags & MTD_WRITEABLE) ?
>> MTD_WRITEABLE : 0;
>>
>> With this change we no longer impact builds that do not have a read-only
>> firmware partition, but we can still enforce it for those that need it.
>> One thing to keep in mind is that the padding is still a requirement for
>> those devices which are building a read-only firmware partition!
>>
>> Also please note this is not tested, these conclusions are only based on
>> the analysis of the kernel source code.
>>
>> Best regards,
>> Bruno Pena
>>
>>
>> On Wed, Jan 22, 2020, 10:40 Daniel Golle <daniel@makrotopia.org> wrote:
>>
>>> Hi Bruno,
>>>
>>> On Wed, Jan 22, 2020 at 10:22:01AM +0100, Bruno Pena wrote:
>>> > I would also like to take the opportunity to ask if it's worth pursuing
>>> > this patch if it means that all devices (using mtd) will require their
>>> > partitions to be padded to the blocksize?
>>>
>>> Please try not to introduce that padding, it's quite a big impact on
>>> all devices while only very few (wifi-only device) really need that
>>> change. Instead of wasting flash space by additional padding I'd rather
>>> want to see an OpenWrt-specific kernel-patch to allow a rw subpartition
>>> sitting inside an ro partition or just flatten the mtd partitioning.
>>> What I mean by flatteing is this:
>>>
>>> yout current approach:
>>> +-----------------------------+
>>> |          firmware           |
>>> +--------+--------------------+
>>> |        $       rootfs       |
>>> | kernel +------+-------------+
>>> |        $ rom  | rootfs_data |
>>> +--------+------+-------------+
>>>
>>> here rootfs_data inherigs the read-only from rootfs not being block-
>>> aligned. a better/flat approach would be:
>>> +-----------------------------+
>>> |          firmware           |
>>> +--------+------+-------------+
>>> | kernel $ rom  | rootfs_data |
>>> +--------+------+-------------+
>>>
>>> Now this would require major changes to our mtd-splitting subsystem
>>> which is quite a big amount of work...
>>>
>>>
>>> Cheers
>>>
>>>
>>> Daniel
>>>
>>

--000000000000ea72ad059cb8b0d0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi Steve,<div dir=3D"auto"><br></div><div dir=3D"auto">Do=
n&#39;t waste=C2=A0your time with the previous test request.</div><div dir=
=3D"auto">I&#39;ll try to test either today/tomorrow the &quot;mtd.orig_fla=
gs&quot; approach on my device and - if successful - I&#39;ll then ask if y=
ou can try it on your TP-Link.</div><div dir=3D"auto"><br></div><div dir=3D=
"auto">Thank you and best regards,</div><div dir=3D"auto">Bruno Pena</div><=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Wed, Jan 22, 2020, 11:34 Bruno Pena &lt;<a href=3D"mailto:brunompena@gmai=
l.com">brunompena@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-le=
ft:1ex"><div dir=3D"auto">Just a small correction on the previous email, th=
ere&#39;s actually no padding requirement since everything will be read-onl=
y!</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">On Wed, Jan 22, 2020, 11:25 Bruno Pena &lt;<a href=3D"mailto:brunompena@g=
mail.com" target=3D"_blank" rel=3D"noreferrer">brunompena@gmail.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"auto"><div dir=
=3D"auto">Hi Daniel,</div><div dir=3D"auto"><br></div><div dir=3D"auto">I w=
as looking at the code and I think it&#39;s possible to relax the enforceme=
nt of the parent access mode.</div><div dir=3D"auto">We can switch from a s=
trict enforcement of the resulting mtd access mode, to only enforcing the c=
onfigured access mode (from the DTS file).</div><div dir=3D"auto"><br></div=
><div dir=3D"auto">This can be achieved by changing from using mtd.flags to=
 mtd.orig_flags:</div><div dir=3D"auto">=C2=A0 =C2=A0 parts[i].mask_flags =
=3D !(slave-&gt;mtd.orig_flags &amp; MTD_WRITEABLE) ? MTD_WRITEABLE : 0;</d=
iv><div dir=3D"auto"><br></div><div dir=3D"auto">With this change we no lon=
ger impact builds that do not have a read-only firmware partition, but we c=
an still enforce it for those that need it.</div><div dir=3D"auto">One thin=
g to keep in mind is that the padding is still a requirement for those devi=
ces which are building a read-only firmware partition!</div><div dir=3D"aut=
o"><br></div><div dir=3D"auto">Also please note this is not tested, these c=
onclusions are only based on the analysis of the kernel source code.</div><=
div dir=3D"auto"><br></div><div dir=3D"auto">Best regards,</div><div dir=3D=
"auto">Bruno Pena</div><div dir=3D"auto"><br></div></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jan 22, 2020, 10=
:40 Daniel Golle &lt;<a href=3D"mailto:daniel@makrotopia.org" rel=3D"norefe=
rrer noreferrer" target=3D"_blank">daniel@makrotopia.org</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex">Hi Bruno,<br>
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
</blockquote></div>

--000000000000ea72ad059cb8b0d0--


--===============5463566400133905870==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============5463566400133905870==--

