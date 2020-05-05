Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEAFC1C4C35
	for <lists+openwrt-devel@lfdr.de>; Tue,  5 May 2020 04:35:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=C3F7zFH3NTObOj1fdBsfhzORNohD+UcsAaQymLqBoVM=; b=T4tNoXRYtbL9jNrSqwOQOVMev
	TGeaSV5iNJMYtVWlL+5rTE82Lsr7OkNAN43+Nz3+CuW+wkXJ1WTlmZyX4k80cS83Cy1ojA/Ieck+h
	/NJnKPkhwJnQKKRdREs+v3vOpzZNxsrHR6LpNOkxdg2mHi/DDg0fgmlh34+a7nnrdzXAf/I+mGor3
	43FnX1M6325qLCmo993On/o9qL8TskJ/iT+Zi6544i6S4mkjlNv3Dhs0DoKhpZ3F1h5GsE17wOW3F
	bQnHtMuOTWzILh+mTA8ZLB2QS7ACb6di9UOlMQMOlK/LCZGTDYPpe6iE683KJ9d08yd4UCbPXr1by
	lb5+4rlwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVnQs-00055R-Vj; Tue, 05 May 2020 02:35:42 +0000
Received: from mail-oi1-x22c.google.com ([2607:f8b0:4864:20::22c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVnQn-00053G-KX
 for openwrt-devel@lists.openwrt.org; Tue, 05 May 2020 02:35:39 +0000
Received: by mail-oi1-x22c.google.com with SMTP id r25so714247oij.4
 for <openwrt-devel@lists.openwrt.org>; Mon, 04 May 2020 19:35:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lHFzYM1Pzt+qCipm/FDXa577gi5hDzziwsmQCuPLLy0=;
 b=Mr4lSi0CDnKbe2X6dZprexHySRoz3iSKOtCt/CcfWqv9+t+1JaNY+68eAZ7iUr+m8o
 Zm+5XgCcduI3ahpYeC4unp0E0czP7D2Q96bTyLHy2tjIVa8d3qbpCIz+70snP+jSBXEd
 a+6Wtqa22VcE+nhJdKGrYqnm7lvli3I2ULOKHKmkrPxmxDbb6fB2+t5hnChxUvi6UtaE
 18aSWNuTFbA57VDsjZjZiRzV1kWk+1/hR0rvltkXGQf5LXnCf/rZXtv+6ZRyJGBunVQO
 4xK3e1I4eYcAjbENglqaLTDdT8lfcUE7M2lbQVLIsqU+FKhIFRareDNIsKwbdSOzDoZ2
 aXlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lHFzYM1Pzt+qCipm/FDXa577gi5hDzziwsmQCuPLLy0=;
 b=Q5pKFOVkD8ZxX6KTEMrECz4dA7Vwm8R+6GJVdv5QaGn/cR4U3R5e5CbtEyy1j2LtVY
 upFIAizFttbeFD5YADD581yMOv+dZgVy/vhjk8AysnaCFJXIl5g0EU/JTBKHCbc0DNnV
 HxPTj59I0sQ4c+5pgAFqDvF7pDZ7InmMrLgefFFAXd7XtKegPbFjHzPBkdafwCFHMLnu
 6WsfTf/jhbv5edZZCWcrEqGK2z9SO/ACw923guoXUbGFzfL8mBDxzBq735Ca9zwbNY/S
 tcT1wKF8tMrk/SDGX/rnDYMhYKDq1F4whcaBuNdMHcWZsTYEsZfuCIgrekFK8n8k3TOx
 s1ug==
X-Gm-Message-State: AGi0PuZ2msMnPKzF40Ci945lMyM09kBYAGLo0rRYhVRnsqFW8AQZd3zM
 G3zKvfkpc0ota3+r9lFELwEITpvYFMxTU2kOaSjasPT5y5o=
X-Google-Smtp-Source: APiQypImSTuwXmxD5D2IcNESPVCAAnw8zLh9MHe2bVCCl+OLUDW797ThNQ2wAuXurVKXtUTAXQPgHQcpEDBOsp7DF04=
X-Received: by 2002:aca:5b83:: with SMTP id p125mr969214oib.95.1588646134250; 
 Mon, 04 May 2020 19:35:34 -0700 (PDT)
MIME-Version: 1.0
References: <CABH8e0+-TaVCT7AvHRYyemTuzhx=BbNN1BaZPJQj6OJ6KJwM5A@mail.gmail.com>
 <CAKiAkGQg-Hiqw6isSmJYyLRWrTOpE0BZm4m+DPJPXBcNbiZCJw@mail.gmail.com>
In-Reply-To: <CAKiAkGQg-Hiqw6isSmJYyLRWrTOpE0BZm4m+DPJPXBcNbiZCJw@mail.gmail.com>
From: Gracias Amigou <puchapapa01@gmail.com>
Date: Mon, 4 May 2020 20:35:14 -0600
Message-ID: <CABH8e0+q18=D-7aWhywJ-R_vGaMPGGHZYFaR6mgGa1v9x-nnSA@mail.gmail.com>
To: =?UTF-8?Q?Joel_Wir=C4=81mu_Pauling?= <joel@aenertia.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_193537_701089_BBEA574D 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:22c listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [puchapapa01[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [puchapapa01[at]gmail.com]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: Re: [OpenWrt-Devel] FULL CONE NAT in OpenWrt
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
Content-Type: multipart/mixed; boundary="===============8835793028701724232=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============8835793028701724232==
Content-Type: multipart/alternative; boundary="0000000000008181dc05a4dd80fa"

--0000000000008181dc05a4dd80fa
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

*Read this:*
*=E2=80=A2 *Gaming with Full Cone vs Symmetric NAT Routers
<http://badmodems.com/Forum/viewtopic.php?f=3D6&t=3D21>

It is a feature that is necessary and should be by default in OpenWrt.

I hope you will add it in the next releases or at least the package.

Thank you.

El lun., 4 may. 2020 a las 14:52, Joel Wir=C4=81mu Pauling (<joel@aenertia.=
net>)
escribi=C3=B3:

> I am all for exposing Cone Nat in UCI / Firewall zones as an option to th=
e
> masquerading configuration in a zone.
>
> Also as much as I hate it nat66 for IPv6 needs to be exposed in the same
> place - specifically for mapping routable PD which change often to ULA's.
>
> -Joel
>
> On Tue, 5 May 2020 at 07:25, Gracias Amigou <puchapapa01@gmail.com> wrote=
:
>
>> Please add this package as official:
>>
>> *Posts:*
>>
>>    1. xt_FULLCONENAT -- Implementing RFC 3489 full cone SNAT in OpenWrt
>>    <https://forum.openwrt.org/t/xt-fullconenat-implementing-rfc-3489-ful=
l-cone-snat-in-openwrt/14816>
>>    2. [12/8=E6=9B=B4=E6=96=B0]OpenWrt =E4=B8=8A=E5=AE=9E=E7=8E=B0 NAT1 (=
Full cone NAT) =E7=9A=84=E6=96=B9=E6=B3=95=EF=BC=8C=E6=97=A0=E9=9C=80 DMZ/U=
PnP -
>>    OPENWRT=E4=B8=93=E7=89=88 <https://www.right.com.cn/forum/thread-3198=
27-1-1.html>
>>    3. =E4=BB=8EDNAT=E5=88=B0netfilter=E5=86=85=E6=A0=B8=E5=AD=90=E7=B3=
=BB=E7=BB=9F=EF=BC=8C=E6=B5=85=E8=B0=88Linux=E7=9A=84Full Cone NAT=E5=AE=9E=
=E7=8E=B0 | ChionLab
>>    <https://blog.chionlab.moe/2018/02/09/full-cone-nat-with-linux/>
>>
>>
>> *Git:*
>> =E2=80=A2 GitHub - LGA1150/openwrt-fullconenat: Netfilter and iptables e=
xtension
>> for full cone NAT ported to OpenWrt.
>> <https://github.com/LGA1150/openwrt-fullconenat>
>> _______________________________________________
>> openwrt-devel mailing list
>> openwrt-devel@lists.openwrt.org
>> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>>
>

--0000000000008181dc05a4dd80fa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><b>Read this:</b><div><b>=E2=80=A2=C2=A0</b><a href=3D"htt=
p://badmodems.com/Forum/viewtopic.php?f=3D6&amp;t=3D21" target=3D"_blank">G=
aming with Full Cone vs Symmetric NAT Routers</a></div><div><br></div><div>=
It is a feature that is necessary and should be by default in OpenWrt.<br><=
/div><div><br></div><div>I hope you will add it in the next releases or at =
least the package.<br></div><div><br></div><div>Thank you.<br></div></div><=
br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">El lun.=
, 4 may. 2020 a las 14:52, Joel Wir=C4=81mu Pauling (&lt;<a href=3D"mailto:=
joel@aenertia.net" target=3D"_blank">joel@aenertia.net</a>&gt;) escribi=C3=
=B3:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D=
"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif"=
>I am all for exposing Cone Nat in UCI / Firewall zones as an option to the=
 masquerading configuration in a zone.</div><div class=3D"gmail_default" st=
yle=3D"font-family:verdana,sans-serif"><br></div><div class=3D"gmail_defaul=
t" style=3D"font-family:verdana,sans-serif">Also as much as I hate it nat66=
 for IPv6 needs to be exposed in the same place - specifically for mapping =
routable PD which change often to ULA&#39;s. <br></div><div class=3D"gmail_=
default" style=3D"font-family:verdana,sans-serif"><br></div><div class=3D"g=
mail_default" style=3D"font-family:verdana,sans-serif">-Joel<br></div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tu=
e, 5 May 2020 at 07:25, Gracias Amigou &lt;<a href=3D"mailto:puchapapa01@gm=
ail.com" target=3D"_blank">puchapapa01@gmail.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-le=
ft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Please add=
 this package as official:<br><div><br></div><div><b>Posts:</b></div><div><=
ol><li><a href=3D"https://forum.openwrt.org/t/xt-fullconenat-implementing-r=
fc-3489-full-cone-snat-in-openwrt/14816" target=3D"_blank">xt_FULLCONENAT -=
- Implementing RFC 3489 full cone SNAT in OpenWrt</a></li><li><a href=3D"ht=
tps://www.right.com.cn/forum/thread-319827-1-1.html" target=3D"_blank">[12/=
8=E6=9B=B4=E6=96=B0]OpenWrt =E4=B8=8A=E5=AE=9E=E7=8E=B0 NAT1 (Full cone NAT=
) =E7=9A=84=E6=96=B9=E6=B3=95=EF=BC=8C=E6=97=A0=E9=9C=80 DMZ/UPnP - OPENWRT=
=E4=B8=93=E7=89=88</a></li><li><a href=3D"https://blog.chionlab.moe/2018/02=
/09/full-cone-nat-with-linux/" target=3D"_blank">=E4=BB=8EDNAT=E5=88=B0netf=
ilter=E5=86=85=E6=A0=B8=E5=AD=90=E7=B3=BB=E7=BB=9F=EF=BC=8C=E6=B5=85=E8=B0=
=88Linux=E7=9A=84Full Cone NAT=E5=AE=9E=E7=8E=B0 | ChionLab</a></li></ol></=
div><div><b><br></b></div><div><b>Git:</b><br></div><div>=E2=80=A2=C2=A0<a =
href=3D"https://github.com/LGA1150/openwrt-fullconenat" target=3D"_blank">G=
itHub - LGA1150/openwrt-fullconenat: Netfilter and iptables extension for f=
ull cone NAT ported to OpenWrt.</a><br></div></div>
_______________________________________________<br>
openwrt-devel mailing list<br>
<a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blank">openwr=
t-devel@lists.openwrt.org</a><br>
<a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" rel=3D=
"noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman/listinfo/o=
penwrt-devel</a><br>
</blockquote></div>
</blockquote></div>

--0000000000008181dc05a4dd80fa--


--===============8835793028701724232==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8835793028701724232==--

