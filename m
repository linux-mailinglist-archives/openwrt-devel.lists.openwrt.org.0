Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C4D41ED62C
	for <lists+openwrt-devel@lfdr.de>; Wed,  3 Jun 2020 20:34:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/ro8+o14i6Mn4mH3vY1hWbju1SX0PYnZYeLgaUagtss=; b=uCGySuB+ffSxWHDWCEXeXiotx
	qMldDMf2i4LcHMTPWXT/sqXNAV0TJy5ZjxLGK1K40zP/qnZNLrg5mptwH3Zf86FaGAhuLxxC3vWLk
	CNlEcxyR2Y+D3L5NKhiW503C8sktU7Sn7UNBhrjlXf5aQR1taGiXOWhbpCELUcejdTQbqlDuDsG/c
	1uvHnc8lYbY46V83LMVlZGfVOz1iQXm/wTJTcbkHxIa6prPvCGDVpi0srIk8CP6ZQGMUNwdjyVwnS
	5PSQrW6VQu0hgi2dR1gUQv04ugJrGQBuR09zLiiCXwJhcADea94ACbPheCclL9yVRfKD0BXz6nMKB
	2EaW49vMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgYDL-0002VO-8c; Wed, 03 Jun 2020 18:34:11 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgYDF-0002Ui-Fi
 for openwrt-devel@lists.openwrt.org; Wed, 03 Jun 2020 18:34:06 +0000
Received: by mail-lj1-x244.google.com with SMTP id z18so3989940lji.12
 for <openwrt-devel@lists.openwrt.org>; Wed, 03 Jun 2020 11:34:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=meshplusplus-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rxXhv40J9mDdUOdbqD4WjlFdKxFEflG/AAL4cFii2+c=;
 b=eD76ZwVq4VXUtymXBxrz/rxO4IGJtlfslsLDVJmQb8qbNQ2smWfFdZ/U0cRA819LDi
 bfSTlPU9Xff3RgeyCtCddreDT77VZxK3FRqcsH8JEm6IQBQ9WK9H9dei4i03JAqbJMMm
 UQebgfL77z8HepVxhLan2AacUq2SBmhaqkUJKS1UnUydxvt7yU9UNpp18rXeWpNvAy9n
 wR5qRh+V/mOE48CRy4To1N9S2fR8L+X/9/sEIK9ImN6lsbh0/9S3Or+LBxhSN8PtdAQF
 MSHMPCoCkwWgp9y/SFXkiAUqyXBAc+9GbPYDE7rIPQb1wfQr3TUaVJbyQychnZqyNA6u
 nRQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rxXhv40J9mDdUOdbqD4WjlFdKxFEflG/AAL4cFii2+c=;
 b=LbVTrZSProOTltkLr5DAI2c0v4d5u7b2Gwwm/rGAvVrhvoTOMsWka+scPvgaqbbG2X
 dv/Kc3IATJm9t4a/aRrnMnkdcS2sYQcb3i9mBNFNn0EQio0LgvklRrzDqUn2f0vvCRd3
 QAzyPaQRi7vMybrmn4oun2rHFinNWLYKPKVPwjry4ZaycKLTBoJBQNZSWsVJh9Fe24JE
 m2qHK39AwgwQxCAuHEr0du6oi3zkgmoskjPegI4uGftLJu5DrtxOn/92uqNY4DjTJqau
 WB9uy/NiJ5uvqLOaAR8c99hpfmsQKITHCLXeyI+sAX6ExltrGLMIE68QOHZBZ6rWMwH8
 hZPw==
X-Gm-Message-State: AOAM530kQ1JWLR0HIPP2BBvGS6aIejI1huyFxpUohh/+HihLr17pamYK
 Pmm8m3jwLcdsReo90lKRumk7mVu3GrjbLZh8ff4ZGw==
X-Google-Smtp-Source: ABdhPJxT1yHfA2Drn7LSSMWowcgUuQkciGHhf/2L8tASOq1F1iMP/NTbXBBCptEEvobxg764DtuorDs3DlYUYFWhD6g=
X-Received: by 2002:a05:651c:120d:: with SMTP id
 i13mr230048lja.381.1591209243071; 
 Wed, 03 Jun 2020 11:34:03 -0700 (PDT)
MIME-Version: 1.0
References: <CALu2O0Rzyg+Kv7h=tX7Gg9s9shPAUtb46oLsYpD61OYZ=VYsLg@mail.gmail.com>
In-Reply-To: <CALu2O0Rzyg+Kv7h=tX7Gg9s9shPAUtb46oLsYpD61OYZ=VYsLg@mail.gmail.com>
From: Michael Jones <mike@meshplusplus.com>
Date: Wed, 3 Jun 2020 13:33:51 -0500
Message-ID: <CAJQUmm7Pf2e+P+KLVPQsL2pU=WC6b2z734e0LObjaGeFviKAkw@mail.gmail.com>
To: Stan Grishin <stangri@melmac.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_113405_527826_1887F3F2 
X-CRM114-Status: GOOD (  14.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] base-files: add list-enabled/disabled
 to service function in /etc/profile
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
Cc: openwrt-devel <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============8084215005425761759=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============8084215005425761759==
Content-Type: multipart/alternative; boundary="000000000000b2765a05a7324559"

--000000000000b2765a05a7324559
Content-Type: text/plain; charset="UTF-8"

On Wed, Jun 3, 2020 at 6:42 AM Stan Grishin <stangri@melmac.net> wrote:

> Implement service list-enabled and service list-disabled to provide an
> easy way
> for users to list enabled/disabled services from CLI.
>
> Signed-off-by: Stan Grishin <stangri@melmac.net>
> ---
>  package/base-files/files/etc/profile | 21 +++++++++++++++++++++
>  1 file changed, 21 insertions(+)
>
> diff --git a/package/base-files/files/etc/profile
> b/package/base-files/files/etc/profile
> index 0beff1608f..e8350cfd6a 100644
> --- a/package/base-files/files/etc/profile
> +++ b/package/base-files/files/etc/profile
> @@ -38,3 +38,24 @@ in order to prevent unauthorized SSH logins.
>  --------------------------------------------------
>  EOF
>  fi
> +
> +service() {
> +        if [ "$1" = "list-enabled" ]; then
> +                for F in /etc/init.d/* ; do
> +                        $F enabled && echo "$F enabled"
> +                done;
> +        elif [ "$1" = "list-disabled" ]; then
> +                for F in /etc/init.d/* ; do
> +                        $F enabled || echo "$F disabled"
> +                done;
> +        elif [ -f "/etc/init.d/$1" ]; then
> +                /etc/init.d/$@
> +        else
> +                echo "Usage: service
> list-disabled|list-enabled|<service> [command]"
> +                if [ -n "$1" ]; then
> +                        echo "service "'"'"$1"'"'" not found, the
> following services are available:"
> +                        ls "/etc/init.d"
> +                fi
> +                return 1
> +        fi
> +}
> --
> 2.25.1
>
>
Could you provide examples of how this would be used?

What about "list-start" and "list-stop" as well?

--000000000000b2765a05a7324559
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jun 3, 2020 at 6:42 AM Stan G=
rishin &lt;<a href=3D"mailto:stangri@melmac.net">stangri@melmac.net</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Implemen=
t service list-enabled and service list-disabled to provide an easy way<br>
for users to list enabled/disabled services from CLI.<br>
<br>
Signed-off-by: Stan Grishin &lt;<a href=3D"mailto:stangri@melmac.net" targe=
t=3D"_blank">stangri@melmac.net</a>&gt;<br>
---<br>
=C2=A0package/base-files/files/etc/profile | 21 +++++++++++++++++++++<br>
=C2=A01 file changed, 21 insertions(+)<br>
<br>
diff --git a/package/base-files/files/etc/profile<br>
b/package/base-files/files/etc/profile<br>
index 0beff1608f..e8350cfd6a 100644<br>
--- a/package/base-files/files/etc/profile<br>
+++ b/package/base-files/files/etc/profile<br>
@@ -38,3 +38,24 @@ in order to prevent unauthorized SSH logins.<br>
=C2=A0--------------------------------------------------<br>
=C2=A0EOF<br>
=C2=A0fi<br>
+<br>
+service() {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 if [ &quot;$1&quot; =3D &quot;list-enabled&quo=
t; ]; then<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for F in /etc/init=
.d/* ; do<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 $F enabled &amp;&amp; echo &quot;$F enabled&quot;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 done;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 elif [ &quot;$1&quot; =3D &quot;list-disabled&=
quot; ]; then<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for F in /etc/init=
.d/* ; do<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 $F enabled || echo &quot;$F disabled&quot;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 done;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 elif [ -f &quot;/etc/init.d/$1&quot; ]; then<b=
r>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 /etc/init.d/$@<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 else<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 echo &quot;Usage: =
service<br>
list-disabled|list-enabled|&lt;service&gt; [command]&quot;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if [ -n &quot;$1&q=
uot; ]; then<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 echo &quot;service &quot;&#39;&quot;&#39;&quot;$1&quot;&#39;&quo=
t;&#39;&quot; not found, the<br>
following services are available:&quot;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 ls &quot;/etc/init.d&quot;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 fi<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 return 1<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 fi<br>
+}<br>
-- <br>
2.25.1<br>
<br></blockquote><div><br></div><div>Could you provide examples of how this=
 would be used?</div><div><br></div><div>What about &quot;list-start&quot; =
and &quot;list-stop&quot; as well?<br></div></div></div>

--000000000000b2765a05a7324559--


--===============8084215005425761759==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8084215005425761759==--

