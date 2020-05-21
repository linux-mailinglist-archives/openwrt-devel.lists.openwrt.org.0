Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 152171DC575
	for <lists+openwrt-devel@lfdr.de>; Thu, 21 May 2020 05:07:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xZxK/5LrfZxz+XbwBJVRcYq4kG/SI4qdqXVxqpSnTds=; b=ZS3+InWXdPjrD3bvQ611gPoR+
	jLxABtA1dDFD4EabKC08H/MUT2iCmhDb+KuPiYlwvn3pxcMLekCUDNmh8JHUzeXlrl0CpkTU778Q9
	xxPQFp9Tz5EHTVTARUaTWnoFGGdc3TuGVDfrslk7jQ2tRCpeGOfBpYDyJamKbHHaV9v88xBuFthLU
	SqrxOihPrRk25X62hS9wtgr9kVemk77s0/mPIoKYzq+Rnfk39Ke+V9t4i3YPCg5CFJeu+jpAymTxR
	knsidz+3QXuPK5vHCwEXUM6qyW6MbpXbZ+ZtmxHjBZDztpuukAXZDb+O3a2m1yhF+hkQC6IaYDPm1
	5ar4T3zFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbbYi-0002nu-R6; Thu, 21 May 2020 03:07:48 +0000
Received: from mail-qk1-x72d.google.com ([2607:f8b0:4864:20::72d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbbYc-0002n3-Lu
 for openwrt-devel@lists.openwrt.org; Thu, 21 May 2020 03:07:44 +0000
Received: by mail-qk1-x72d.google.com with SMTP id w3so413023qkb.6
 for <openwrt-devel@lists.openwrt.org>; Wed, 20 May 2020 20:07:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AJjUHcyL4vuR2UzwHljZwi08nqQ+70f6Dci1aXWLc+4=;
 b=hufaSdjN7QrAJPz1FdrPuYCvzUWYrxcckw+bQkBnhE2Ufv05ajGe3GMz8ErOdf07DK
 RwGypQwke85pNJdBx4UmfdkJcQTrXgR2FaTt+yA077NNZtBC3Rp2DUQ9VdSL/AQSvgVs
 iOMwrODvt3cW+jO8/f10lGAMuTuhbpKN6AtJ2LX/oJTHcmUXv209V6vDkkvr72OkyvX4
 D2L3iShq44Mlc1/x9gYqjYuQs78sMx2J3/ip5BOETHSy7BGd0ocPa4rW/5s5T3ZUHhIr
 2+uoT908gQJ8+H34jEZ0V/GVEkeQ0QJ6jV1ws5j0326m7l6e+i7wE4pwJaNRfY6seNEL
 TBRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AJjUHcyL4vuR2UzwHljZwi08nqQ+70f6Dci1aXWLc+4=;
 b=gLbnGXfy56uPjtwdu1BIYNrPlw/7TlOo7qsZI4bNeGfmc0LqRzUWrGSosXh1rbW4kQ
 qm52tS3jOFTRqqerZThEjtTqG7RqOmNHE2MZjeydZarSFdHKFuaon0b+H8fBSfbp7brS
 mhfs81UuIAIK2f17RENJMps0ogCuQw2x3vfNu6TuQNlHL95fIvr79QGnnaut/M7v8kAg
 KqPnF0eDPucQvP5l2p6zlLSURZuV7zOUH958W4W+G6WJEoq30aB4Kg709WQs3jJUhLzw
 wMIAtRTTaB8AEtgg5yGzdniuoXrfM2z5ClGFZkVO/AUdOSaQZP0oeohd4vwcGtKolHJr
 5OnA==
X-Gm-Message-State: AOAM5322hMmdnTLtdsCQRKGFcFZtgoRoqVGKbByTFl2R4re1B1RFLB9Q
 /jc6OA8C6k85lR3oxGxpUvt3ZBNPS7VImWdK5Hg=
X-Google-Smtp-Source: ABdhPJyX4nb1I0eYeyNVzF4ZqVivEtkn8njS5DEMEaNoaYkIcMIevvlWGb2IPGw/usqFR+vpf2Q86zrCwDTAIpMWcOg=
X-Received: by 2002:a37:aa8f:: with SMTP id t137mr4222411qke.175.1590030460755; 
 Wed, 20 May 2020 20:07:40 -0700 (PDT)
MIME-Version: 1.0
References: <CALYKT1hk3-kyD5xifS1QGYE5dy5rR9Jn0HjojxCbe5yDcjAxkw@mail.gmail.com>
 <CAAP7ucJ5qwJ+4cy_v4sEnULdD9g-D8w=5Ze7d8kubK9RZFLiQQ@mail.gmail.com>
 <CALYKT1hT=0G6ip3__-pttHVr-7Vc1rOUFBnsZFc9jCnx_uu4Wg@mail.gmail.com>
 <CALYKT1h8FF5jQsS7ereCS71rT4aywZrwr+ZjNHSPghQgqx+R8g@mail.gmail.com>
 <CAAP7ucKeVq3N0RJhez45o7g0jkRenPvDUVazRy2CCm3cK64xQg@mail.gmail.com>
 <CALYKT1gNQncwkrLR_Teb1Ak2fYzohd5E0Do79kR+aWA2eVxxkQ@mail.gmail.com>
 <CALYKT1ho94oFRCUr=ujBH1vzZc5vQrTWY1Az91HkKS_F12AivQ@mail.gmail.com>
 <CALYKT1jytZ0SmMEWc-84Fjp-oSSYvb+UmR8X3gF4BugVrbZLrw@mail.gmail.com>
 <8a3e98a9-07e5-045d-d711-0a5833dcb5cc@web.de>
 <CALYKT1hqiBvcEQ+tqDdMh3tHznSt2NamLcVqzneU5TFJZxX1Ow@mail.gmail.com>
 <CALYKT1hAPtXGuKu5gGd5B6VccuEY1g6COyFK6T0FsaoG43Tt8Q@mail.gmail.com>
 <bb6a2cc5-b991-9c7f-3308-79932fd70c56@gmail.com>
 <CALYKT1j_YqguM=JWWh97S9HMJ-Kjt_BQecQFh5T_G-+hdfmXtw@mail.gmail.com>
 <2139729f-826f-e738-f560-e3268d2555a5@gmail.com>
 <CALYKT1hX6LRyq6S8iCSOtpgZUBQt6aN_qkYk=wLrfr7+5JUQjw@mail.gmail.com>
 <916b57f7-5c77-a3eb-3762-ea805b9a379b@gmail.com>
 <CALYKT1hrPTDQVmsV5mp_Ucon=Wj4EigP45p38pm22H=tm3LAQw@mail.gmail.com>
In-Reply-To: <CALYKT1hrPTDQVmsV5mp_Ucon=Wj4EigP45p38pm22H=tm3LAQw@mail.gmail.com>
From: Wes Turner <wes.turner@gmail.com>
Date: Wed, 20 May 2020 23:07:29 -0400
Message-ID: <CACfEFw840e+Q1pM8FGmB9Ju_JgXhW=Ji1uW6hpwbLUw6OtVxXg@mail.gmail.com>
To: Jeonghum Joh <oosaprogrammer@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_200742_718452_E67FA5E6 
X-CRM114-Status: GOOD (  17.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:72d listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wes.turner[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] How am I supposed to change settings in
 /etc/config/network of default root file system of OpenWRT?
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>,
 Magnus Kroken <mkroken@gmail.com>
Content-Type: multipart/mixed; boundary="===============8760104885899417385=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============8760104885899417385==
Content-Type: multipart/alternative; boundary="000000000000cba73c05a61fd063"

--000000000000cba73c05a61fd063
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Would it make sense to integrate support for a wwan interface and zone that
just no-ops when there's no wwan interface defined?

The case of a 4G/5G modem will likely be more popular in the future.

"[OpenWrt-Devel] RFI: OpenWRT for #DisasterRelief: LoRA: ClusterDuck, LTE,
5G, Mesh, Throttling"
https://www.mail-archive.com/openwrt-devel@lists.openwrt.org/msg52055.html

> Are there other [OpenWRT-compatible] devices with LTE and/or LoRa that
> would be useful for disaster relief?
>
> "Table of Hardware: LTE Modem supported"
> https://openwrt.org/toh/views/toh_lte_modem_supported

>
> ## 5G
> Are there any 5G-compatible OpenWRT devices yet?
> Presumably, devices with Mini-PCIe are theoretically compatible given
built
modules.

How would you name interfaces / zones when there's also at least one LoRA
interface?

wan
wwan

wan0
wwan0
lora0 (?)

On Wed, May 20, 2020 at 8:12 PM Jeonghum Joh <oosaprogrammer@gmail.com>
wrote:

> Hello Magnus Kroken,
>
> Thank you for clarifying the license.
> I will use this one in the github gist.
>
> Thank you so much!
> Jeonghum
>
> 2020=EB=85=84 5=EC=9B=94 21=EC=9D=BC (=EB=AA=A9) =EC=98=A4=EC=A0=84 2:13,=
 Magnus Kroken <mkroken@gmail.com>=EB=8B=98=EC=9D=B4 =EC=9E=91=EC=84=B1:
>
>> Hi
>>
>> On 20.05.2020 02:01, Jeonghum Joh wrote:
>> > Hello Magnus Kroken,
>> >
>> > Thank you so much!
>> > Your script works like a charm!
>> >
>> > I'd like to use this script in our board. This board would be our
>> > customer's new product - 5G router.
>> > We are Telesquare Inc. (www.telesquare.co.kr <
>> http://www.telesquare.co.kr>)
>> >
>> > I'd like to write copyright to your name.
>> > And I'd like you to clarify the license of this script.
>> >
>> > Please let me know your opinion.
>> >
>> > Thank you very much!
>> > Jeonghum
>>
>> Appreciate the consideration, although I'm not sure this snippet is
>> substantial enough to be copyrightable. No matter I suppose - if it is
>> copyrightable I can license it, if it is too simple to be copyrightable
>> any claim of copyright is invalid and it can safely be used by anyone.
>>
>> I have put a slightly clarified version as a Gist:
>> https://gist.github.com/mkrkn/4ba4bef3f0d541aa1180bef4156b340c
>>
>> Regards
>> Magnus Kroken
>>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>

--000000000000cba73c05a61fd063
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Would it make sense to integrate support for a wwan i=
nterface and zone that just no-ops when there&#39;s no wwan interface defin=
ed?</div><div><br></div><div>The case of a 4G/5G modem will likely be more =
popular in the future.</div><div><br></div><div>&quot;[OpenWrt-Devel] RFI: =
OpenWRT for #DisasterRelief: LoRA: ClusterDuck, LTE, 5G, Mesh, Throttling&q=
uot;</div><div><a href=3D"https://www.mail-archive.com/openwrt-devel@lists.=
openwrt.org/msg52055.html">https://www.mail-archive.com/openwrt-devel@lists=
.openwrt.org/msg52055.html</a></div><div><br></div><div>&gt; Are there othe=
r [OpenWRT-compatible] devices with LTE and/or LoRa that<br>&gt; would be u=
seful for disaster relief?<br>&gt;<br>&gt; &quot;Table of Hardware: LTE Mod=
em supported&quot;<br>&gt; <a href=3D"https://openwrt.org/toh/views/toh_lte=
_modem_supported">https://openwrt.org/toh/views/toh_lte_modem_supported</a>=
</div><div><br></div><div>&gt;<br>&gt; ## 5G<br>&gt; Are there any 5G-compa=
tible OpenWRT devices yet?<br>&gt; Presumably, devices with Mini-PCIe are t=
heoretically compatible given built<br>modules.</div><div><br></div><div>Ho=
w would you name interfaces / zones when there&#39;s also at least one LoRA=
 interface?</div><div><br></div><div>wan</div><div>wwan</div><div><br></div=
><div>wan0</div><div>wwan0</div><div>lora0 (?)<br></div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 20, 202=
0 at 8:12 PM Jeonghum Joh &lt;<a href=3D"mailto:oosaprogrammer@gmail.com">o=
osaprogrammer@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><div dir=3D"ltr">Hello Magnus Kroken,<div><br></div>=
<div>Thank you for clarifying the license.</div><div>I will use this one in=
 the github gist.</div><div><br></div><div>Thank you so much!</div><div>Jeo=
nghum</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">2020=EB=85=84 5=EC=9B=94 21=EC=9D=BC (=EB=AA=A9) =EC=98=A4=EC=A0=
=84 2:13, Magnus Kroken &lt;<a href=3D"mailto:mkroken@gmail.com" target=3D"=
_blank">mkroken@gmail.com</a>&gt;=EB=8B=98=EC=9D=B4 =EC=9E=91=EC=84=B1:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex">Hi<br>
<br>
On 20.05.2020 02:01, Jeonghum Joh wrote:<br>
&gt; Hello Magnus Kroken,<br>
&gt; <br>
&gt; Thank you so much!<br>
&gt; Your script works like a charm!<br>
&gt; <br>
&gt; I&#39;d like to use this script in our board. This board would be our =
<br>
&gt; customer&#39;s new product - 5G router.<br>
&gt; We are Telesquare Inc. (<a href=3D"http://www.telesquare.co.kr" rel=3D=
"noreferrer" target=3D"_blank">www.telesquare.co.kr</a> &lt;<a href=3D"http=
://www.telesquare.co.kr" rel=3D"noreferrer" target=3D"_blank">http://www.te=
lesquare.co.kr</a>&gt;)<br>
&gt; <br>
&gt; I&#39;d like to write copyright to your name.<br>
&gt; And I&#39;d like you to clarify the license of this script.<br>
&gt; <br>
&gt; Please let me know your opinion.<br>
&gt; <br>
&gt; Thank you very much!<br>
&gt; Jeonghum<br>
<br>
Appreciate the consideration, although I&#39;m not sure this snippet is <br=
>
substantial enough to be copyrightable. No matter I suppose - if it is <br>
copyrightable I can license it, if it is too simple to be copyrightable <br=
>
any claim of copyright is invalid and it can safely be used by anyone.<br>
<br>
I have put a slightly clarified version as a Gist: <br>
<a href=3D"https://gist.github.com/mkrkn/4ba4bef3f0d541aa1180bef4156b340c" =
rel=3D"noreferrer" target=3D"_blank">https://gist.github.com/mkrkn/4ba4bef3=
f0d541aa1180bef4156b340c</a><br>
<br>
Regards<br>
Magnus Kroken<br>
</blockquote></div>
_______________________________________________<br>
openwrt-devel mailing list<br>
<a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blank">openwr=
t-devel@lists.openwrt.org</a><br>
<a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" rel=3D=
"noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman/listinfo/o=
penwrt-devel</a><br>
</blockquote></div>

--000000000000cba73c05a61fd063--


--===============8760104885899417385==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8760104885899417385==--

