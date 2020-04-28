Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D12361BB40E
	for <lists+openwrt-devel@lfdr.de>; Tue, 28 Apr 2020 04:40:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=IJ/MW+LR5OThOegm+yZqglZUgJoIzZOT8IJSZqnxQ2k=; b=UqFqB1vfNyO5rm0PZTND1B2J4
	/Y6bwKpbQCX5q3QTu124rSX/5ydjHZAxaN3OLAMB3YgOb4oJgcWObhUTZ+1TEZ5OTWi5i4cFi5rf2
	/etJtr3pmCbu1oKF5KYkvWG3FMEUuJQXBaucGo/BfLpN7QzOxeCZID70PkSB4d4R2wEFa9824dJxb
	VxDwPN6qPM5FSpB8XYRqcUs08DgvdgeGraeg3EQoMbwmtnGdtpF4DZsiC2YkfURQbxYIV5YClZzTf
	O/aJkZEbPI+PFResaTZZ5yXJSE+sckv/upB6yiusYl2N+nlSG7XG+o5NysdsJm6GLk/vPBv9he7z5
	L6Iep/xgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTGAT-0008Pb-EL; Tue, 28 Apr 2020 02:40:17 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTGAB-0008Ka-7w
 for openwrt-devel@lists.openwrt.org; Tue, 28 Apr 2020 02:40:01 +0000
Received: by mail-ej1-x629.google.com with SMTP id e2so15883502eje.13
 for <openwrt-devel@lists.openwrt.org>; Mon, 27 Apr 2020 19:39:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lDlOgcUwhsoyAdKQyZR/shToXI9wawkRo7NZrHeHgrI=;
 b=g+/cB6PCOx3uws6m8gMdFxIlgg3jLwBty6Ax4fX+/+/pBmV2g6U3ILHI+QuADAefZM
 Xz1kFLlt1uEMCcBCM0Ajj/sI/JS57Vb5bHM27hLf2eFUWRehUn6MrCCOQCzBKL1nlB2Q
 Q2n3mXZi7gsJlgu0h0nIynvg4H0bAWWdJf937bW76Db0CBJJ6oieTWiikWcPD/C768yr
 A4dZ0B/HeC3OWoIqN67Q+3h/xppKB3SwhOVrG6vg0rJxWNiRVfnH+eC4LwqE7Gkt1YmD
 FzXvDRrqjaNZGGsmlTPkUcQLoy8m6zS2QqHtj8LfbelCXiWAIOc33rGxyX9DH36NGwq9
 /OIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lDlOgcUwhsoyAdKQyZR/shToXI9wawkRo7NZrHeHgrI=;
 b=ar0y5gUrxDcyWrLzvAN/JxSKyjmomChEeuaeflhPmDfcpwsOv1NScTMncKDVKS9r/o
 7+8hoqah2IkCVhd+9ejWNIqew/2bau1kMTJJ93QdknoIbX3GhQjmk5ASioTosNHg+1cq
 jBtmUqHFVK1KRZOPZu+DAXhVAoNA9SH95q+oSRYdnA12FVdvThW24laHSTKCkQK2iG5G
 lq7niGn1yBKKUkf/Sb17MqnOldOfTMS4LCjvnPUWHqEa7NddCjyYxm9uEHmb1k35hOdv
 yk5iD2luMyhfawQ7zN3JBZD09iSDfqeks1L2f8bvDTrdwqZ6BhAdCuwz+p9f1AZSOgmv
 SZxA==
X-Gm-Message-State: AGi0PuaVojxj6x5AH16PaceGavLsS2iG88NqoWdPNTHL6ALJJ3cSDZOV
 8MeJhaySh2npHX124/0amPLxGlQbTmk2jQhirng=
X-Google-Smtp-Source: APiQypINDQ6Agb3rLZgv68+Oj36QVHeoRjxrMfFi+6yVKiPmIeUCKZdZZ8NkHSTgERF4Ru+VRP3S2dU7ZuPB3iEPSz8=
X-Received: by 2002:a17:906:d0d2:: with SMTP id
 bq18mr21710577ejb.62.1588041597648; 
 Mon, 27 Apr 2020 19:39:57 -0700 (PDT)
MIME-Version: 1.0
References: <CALYKT1jbVZ_YkHVZzJ2-CFb=8RxzjmtZM9R1CRhM86=AjC6jFw@mail.gmail.com>
 <877dy1xfq3.fsf@miraculix.mork.no>
In-Reply-To: <877dy1xfq3.fsf@miraculix.mork.no>
From: Jeonghum Joh <oosaprogrammer@gmail.com>
Date: Tue, 28 Apr 2020 11:39:44 +0900
Message-ID: <CALYKT1jogaUqJbg62UD-NtjKDYu+gYwpq_g7gU5KYb3CMdG2qg@mail.gmail.com>
To: =?UTF-8?Q?Bj=C3=B8rn_Mork?= <bjorn@mork.no>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_193959_285061_F50BF073 
X-CRM114-Status: GOOD (  15.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:629 listed in]
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
Content-Type: multipart/mixed; boundary="===============7091878686805587075=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============7091878686805587075==
Content-Type: multipart/alternative; boundary="0000000000005104ef05a450bf85"

--0000000000005104ef05a450bf85
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Bj=C3=B8rn,

What an honor to talk to you!
You are the author of the usbnet adapter kernel module!
Thank you for replying to me.

With your suggestions, I tried to search documents from openwrt documents
and found several:
https://openwrt.org/docs/guide-user/network/wan/wwan/ltedongle
https://openwrt.org/docs/guide-user/network/wan/multiwan/mwan3
https://openwrt.org/docs/guide-user/network/wan/wwan/start
https://openwrt.org/docs/guide-user/network/wan/wwan/modemmanager

And the last one from above is for about ModemManager. And I thought this
would be something that I can use instead of the modem provider version of
CM. But from the menuconfig, the ModemManager is not found at all. Maybe
it's because of my OpenWRT is out-dated?
I will try to find it from the latest openwrt.

I am so glad that you are in this mail list.

I want to share the information about my board, modem and openwrt version.
But I am not sure if I can share it in public domain. Maybe it would be no
problem but I will check it with my company first.

Thank you and you have a good day!
Jeonghum


2020=EB=85=84 4=EC=9B=94 27=EC=9D=BC (=EC=9B=94) =EC=98=A4=ED=9B=84 9:42, B=
j=C3=B8rn Mork <bjorn@mork.no>=EB=8B=98=EC=9D=B4 =EC=9E=91=EC=84=B1:

> Jeonghum Joh <oosaprogrammer@gmail.com> writes:
>
> > I am porting a 5G/LTE modem into OpenWRT.
>
> Follow the instructions for LTE modems.  A 5G modem is pretty much the
> same wrt drivers and basic management.  At least for Qualcomm based
> modems on a USB bus.  Have no experience with anything else.  The Intel
> and Huawei modems are competely unknown to me, and most likely
> unsupported for the forseeable future.  And I'm also blank on the magic
> of Qualcomms PCIe interface. Qualcomm did work on a driver, but it's
> been a long time since I saw any update on that.  I guess no one cares
> enough.  SuperSpeed USB is fine for most users for now.
>
> Anyway, several X55 based modems are already supported out of the box in
> OpenWrt master.  There is no need to reinvent the wheel if you are using
> one of those.
>
> You may obviously decide to implement your own alternative solutions,
> like using some vendor software. But that will limit the user community
> severely. At least until the solution attracts more users.  And
> community support depends on users, which I believe is something you
> should consider since you have ended up in this forum.  You are unlikely
> to find anyone here who have any experience with your particular vendor
> software version.
>
> Personally, I am happy to give advice about anything regardless of
> experience.  But the quality of that advice is probably a tiny bit
> better when it is based on something I've tried myself.  Or maybe not?
> Is probably bad in any case.
>
>
> Bj=C3=B8rn
>

--0000000000005104ef05a450bf85
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello=C2=A0Bj=C3=B8rn,<div><br></div><div>What an honor to=
 talk to you!</div><div>You are the author of the usbnet adapter kernel mod=
ule!<br></div><div>Thank you for replying to me.<br></div><div><br></div><d=
iv>With your suggestions, I tried to search documents from openwrt document=
s and found several:</div><div><a href=3D"https://openwrt.org/docs/guide-us=
er/network/wan/wwan/ltedongle">https://openwrt.org/docs/guide-user/network/=
wan/wwan/ltedongle</a>=C2=A0</div><div><a href=3D"https://openwrt.org/docs/=
guide-user/network/wan/multiwan/mwan3">https://openwrt.org/docs/guide-user/=
network/wan/multiwan/mwan3</a></div><div><a href=3D"https://openwrt.org/doc=
s/guide-user/network/wan/wwan/start">https://openwrt.org/docs/guide-user/ne=
twork/wan/wwan/start</a></div><div><a href=3D"https://openwrt.org/docs/guid=
e-user/network/wan/wwan/modemmanager">https://openwrt.org/docs/guide-user/n=
etwork/wan/wwan/modemmanager</a></div><div><br></div><div>And the last one =
from above is for about ModemManager. And I thought this would be something=
 that I can use instead of the modem provider version of CM. But from the m=
enuconfig, the ModemManager is not found at all. Maybe it&#39;s because of =
my OpenWRT is out-dated?</div><div>I will try to find it from the latest op=
enwrt.</div><div><br></div><div>I am so glad that you are in this mail list=
.</div><div><br></div><div>I want to share the information about my board, =
modem and openwrt version. But I am not sure if I can share it in public do=
main. Maybe it would be no problem but I will check it with my company firs=
t.</div><div><br></div><div>Thank you and you have a good day!</div><div>Je=
onghum</div><div>=C2=A0<br></div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">2020=EB=85=84 4=EC=9B=94 27=EC=9D=BC (=EC=
=9B=94) =EC=98=A4=ED=9B=84 9:42, Bj=C3=B8rn Mork &lt;<a href=3D"mailto:bjor=
n@mork.no">bjorn@mork.no</a>&gt;=EB=8B=98=EC=9D=B4 =EC=9E=91=EC=84=B1:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex">Jeonghum Joh &lt;<a =
href=3D"mailto:oosaprogrammer@gmail.com" target=3D"_blank">oosaprogrammer@g=
mail.com</a>&gt; writes:<br>
<br>
&gt; I am porting a 5G/LTE modem into OpenWRT.<br>
<br>
Follow the instructions for LTE modems.=C2=A0 A 5G modem is pretty much the=
<br>
same wrt drivers and basic management.=C2=A0 At least for Qualcomm based<br=
>
modems on a USB bus.=C2=A0 Have no experience with anything else.=C2=A0 The=
 Intel<br>
and Huawei modems are competely unknown to me, and most likely<br>
unsupported for the forseeable future.=C2=A0 And I&#39;m also blank on the =
magic<br>
of Qualcomms PCIe interface. Qualcomm did work on a driver, but it&#39;s<br=
>
been a long time since I saw any update on that.=C2=A0 I guess no one cares=
<br>
enough.=C2=A0 SuperSpeed USB is fine for most users for now.<br>
<br>
Anyway, several X55 based modems are already supported out of the box in<br=
>
OpenWrt master.=C2=A0 There is no need to reinvent the wheel if you are usi=
ng<br>
one of those.<br>
<br>
You may obviously decide to implement your own alternative solutions,<br>
like using some vendor software. But that will limit the user community<br>
severely. At least until the solution attracts more users.=C2=A0 And<br>
community support depends on users, which I believe is something you<br>
should consider since you have ended up in this forum.=C2=A0 You are unlike=
ly<br>
to find anyone here who have any experience with your particular vendor<br>
software version.<br>
<br>
Personally, I am happy to give advice about anything regardless of<br>
experience.=C2=A0 But the quality of that advice is probably a tiny bit<br>
better when it is based on something I&#39;ve tried myself.=C2=A0 Or maybe =
not?<br>
Is probably bad in any case.<br>
<br>
<br>
Bj=C3=B8rn<br>
</blockquote></div>

--0000000000005104ef05a450bf85--


--===============7091878686805587075==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============7091878686805587075==--

