Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71CA31BA224
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 Apr 2020 13:16:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NBA+2s/1i14kt3l4HccAMkm8DS1hr1cDC+r/uN3M/8Q=; b=HU04o/U/optgPGpI2nlhB/jx9
	t+E7QQb88C+FKv5SJq6Vsl0FHKjFNoZe+DKyHdI/LUJNVF8QMEw1mPZ2sOUn8J05zTZwxL8aODCf7
	tCjTQq+AaCHvPdGquiPhizvBxba+mjv3YukysFgX+s0dYje3WI/8NEEyUhoAYZSXzoIpvZk/KynIM
	4+G6OkA5PI3BAa+a9ILANL5xPeg3KuGr6KuZX7vlKBg9tWIvL0sLjYAyUJCP6xGQ06JXRyeucFfAA
	gCBWUZ8pH804P45O48iOvZhCB028Pz20CNs07mdNJCbVystxbT3BZVwLkRp8QyRyk6VwKptx5CyL/
	2kR1l1mRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT1kV-0003uq-KP; Mon, 27 Apr 2020 11:16:31 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT1kM-0003tw-UF
 for openwrt-devel@lists.openwrt.org; Mon, 27 Apr 2020 11:16:24 +0000
Received: by mail-ed1-x529.google.com with SMTP id r16so13155213edw.5
 for <openwrt-devel@lists.openwrt.org>; Mon, 27 Apr 2020 04:16:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Befpvj36SXkotxOYJuDf0CKNAhEIzKOmjhth8SxFn7o=;
 b=Atc4naVkHbfe+uiVtk8h8lbCj4JdT0qsn5yFS0B/kg5jov5GUTcWoo6Pk7rgzMmn8d
 zvoeKgRQWcYw+i7MM4K3A4NG3kAz3zTbNRVQBiiT8ESY3fFGa50etckvVobqYcFFmFOi
 ltG/N6hjiL/GXJeyhstztp6t3crmx/q7naY10R60asUnqkIHP4dBdA1WvfopBqCz2Xtv
 PCMQtaw/NrTMcYwb1rTLlneuxAS+yPo+OOdY61BdNgLKpTgkFospe1c4UaTrKJ8Lkrr3
 gh1UHyXxb6bqKNjBgtNyOzTtLupMI8TjTivQbRwGV6/hJE+a0qjNJ9iEYaH25jHwHU5N
 B5gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Befpvj36SXkotxOYJuDf0CKNAhEIzKOmjhth8SxFn7o=;
 b=uBsKnYpQJSFnhkbcpOWU7r6yFSzT0fT71YLXf1bNz/x3wOHwxwTdmxvTeccXXg/EOT
 E6XOgyZizzZH7N9jewotpev2lhd0qduI/yYtQS/kcemNwzYYMkGWN+ppJAs2rTGfj1ch
 8a4QihHgPlS0nffVzpl7mHeMQPtUiYC77cVfNgxSy5bSi2ZxXObOhcYx3Hr/CPnsQBxW
 imHEdE58EDSYg7DzjLP1ugvWy72rpG8TBtHl4dlhbLOspd8PRtFL7dIowYSnW6YYGZ0S
 kacrDNaTkINBUsZlrJrvTT4N7WpeRhmuiVlDsjzI+9qOixIUWAuz1DoV1jwqfIjZbC2J
 xR2w==
X-Gm-Message-State: AGi0PuYITgJCZjSGPxb74wrCi9lFqmZo+oTUq12w929Y6OA5i9LwA0q9
 Veg3LCLPGZkrUZ3L+8Tdx7jHiL2CB9wwvCYc81o=
X-Google-Smtp-Source: APiQypIrkZ/GyZq+XoyiXr7bDG2PgFO/sCRalOjMCGyW1lWBgJb9kM5PK6pbwmQZht2//F9PhtMRWVGS6Cvo/PYFwnE=
X-Received: by 2002:aa7:ce0f:: with SMTP id d15mr17193461edv.290.1587986181498; 
 Mon, 27 Apr 2020 04:16:21 -0700 (PDT)
MIME-Version: 1.0
References: <CALYKT1jbVZ_YkHVZzJ2-CFb=8RxzjmtZM9R1CRhM86=AjC6jFw@mail.gmail.com>
 <alpine.LNX.2.22.413.2004271242270.636@localhost.localdomain>
 <CALYKT1i9HKgEz2T1ncgkMqqiHcjpxxi6=rtvd4Xx9oYO05pOKw@mail.gmail.com>
In-Reply-To: <CALYKT1i9HKgEz2T1ncgkMqqiHcjpxxi6=rtvd4Xx9oYO05pOKw@mail.gmail.com>
From: Jeonghum Joh <oosaprogrammer@gmail.com>
Date: Mon, 27 Apr 2020 20:16:09 +0900
Message-ID: <CALYKT1iHEfnJtaRRrT=WJYua=Wt9NrC0wFy_Wp+70-T2uTa9zQ@mail.gmail.com>
To: Enrico Mioso <mrkiko.rs@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_041622_976649_12BD0204 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:529 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [oosaprogrammer[at]gmail.com]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] Advice needed - Proper approach to port 5G/LTE
 modem into OpenWRT
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
Cc: openwrt-devel@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============2713744057853034723=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============2713744057853034723==
Content-Type: multipart/alternative; boundary="00000000000041adb005a443d8c8"

--00000000000041adb005a443d8c8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello, There was a typo : %s/whoot/shoot out/gc
Have a good day!
Jeonghum

2020=EB=85=84 4=EC=9B=94 27=EC=9D=BC (=EC=9B=94) =EC=98=A4=ED=9B=84 8:14, J=
eonghum Joh <oosaprogrammer@gmail.com>=EB=8B=98=EC=9D=B4 =EC=9E=91=EC=84=B1=
:

> Hello Enrico,
>
> Thank you for your email!
>
> I couldn't find what upstream connection manager is but there was
> ModemManager in my googling result.
> But studying about ModemManager would make my work something that must
> start from scratch.
>
> I think studying UCI interface / libraries, and ubus would be good
> approach for me. The CM I have anyway makes the interface wwan0 work. So =
I
> will try to whoot problems one by one. So that I believe I can make my CM
> work well.
>
> Thank you for your interest. I love OpenWRT, Lua & Luci.
>
> Thank you!
> Jeonghum
>
>
>
> 2020=EB=85=84 4=EC=9B=94 27=EC=9D=BC (=EC=9B=94) =EC=98=A4=ED=9B=84 7:45,=
 Enrico Mioso <mrkiko.rs@gmail.com>=EB=8B=98=EC=9D=B4 =EC=9E=91=EC=84=B1:
>
>> Hello!
>> And thank you for your interest in OpenWRt.
>>
>> In general, in OpenWRt, pieces work togeter because they are developed t=
o
>> do so.
>> A connection manager duty is not, arguably, to set up firewall rules.
>> you can surely inspect a lot of the informations you would need from the
>> UCI interface / libraries, and ubus itself.
>> If the modem is QMI based, you may switch to upstream connection manager
>> solutions, which would help in some regards.
>> Or maybe using a ModemManager-based solution?
>>
>> Thanks,
>> Enrico
>>
>

--00000000000041adb005a443d8c8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello, There was a typo : %s/whoot/shoot out/gc<div>Have a=
 good day!</div><div>Jeonghum</div></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">2020=EB=85=84 4=EC=9B=94 27=EC=9D=BC (=
=EC=9B=94) =EC=98=A4=ED=9B=84 8:14, Jeonghum Joh &lt;<a href=3D"mailto:oosa=
programmer@gmail.com">oosaprogrammer@gmail.com</a>&gt;=EB=8B=98=EC=9D=B4 =
=EC=9E=91=EC=84=B1:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><div dir=3D"ltr"><div>Hello Enrico,</div><div><br></div><div>Thank you =
for your email!</div><div><br></div><div>I couldn&#39;t find what upstream =
connection manager is but there was ModemManager in my googling result.</di=
v><div>But studying about ModemManager would make my work something that mu=
st start from scratch.</div><div><br></div><div>I think studying UCI interf=
ace / libraries, and ubus would be good approach for me. The CM I have anyw=
ay makes the interface wwan0 work. So I will try to whoot problems one by o=
ne. So that I believe I can make my CM work well.</div><div><br></div><div>=
Thank you for your interest. I love OpenWRT, Lua &amp; Luci.</div><div><br>=
</div><div>Thank you!</div><div>Jeonghum</div><div><br></div><div><br></div=
><div><br></div><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">2020=EB=85=84 4=EC=9B=94 27=EC=9D=BC (=EC=9B=94) =EC=98=A4=ED=9B=84 7=
:45, Enrico Mioso &lt;<a href=3D"mailto:mrkiko.rs@gmail.com" target=3D"_bla=
nk">mrkiko.rs@gmail.com</a>&gt;=EB=8B=98=EC=9D=B4 =EC=9E=91=EC=84=B1:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex">Hello!<br>
And thank you for your interest in OpenWRt.<br>
<br>
In general, in OpenWRt, pieces work togeter because they are developed to d=
o so.<br>
A connection manager duty is not, arguably, to set up firewall rules.<br>
you can surely inspect a lot of the informations you would need from the UC=
I interface / libraries, and ubus itself.<br>
If the modem is QMI based, you may switch to upstream connection manager so=
lutions, which would help in some regards.<br>
Or maybe using a ModemManager-based solution?<br>
<br>
Thanks,<br>
Enrico<br>
</blockquote></div></div>
</blockquote></div>

--00000000000041adb005a443d8c8--


--===============2713744057853034723==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============2713744057853034723==--

