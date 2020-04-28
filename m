Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47FF41BCD4C
	for <lists+openwrt-devel@lfdr.de>; Tue, 28 Apr 2020 22:22:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UvgNplTxlmcAroNxam//fYKB87Kf3ibv6j3QGqzujbM=; b=RyTXnbddMbCgvQ3DHS0TLOzb/
	2I3PNl97pvpUG2xxQoh1fWuu1m3sq5LI4QEEtW367zjfOAxjTKDCvx6lZMq8LYjvE7qJRdxlYwoPH
	wGcnnqsE47jxcAmj3tcdEjn+Ku73PnfdTf7MK3oHO/UFxSqKW7lNlLQAM8BsrLCKMMkVETpvixPRD
	O2GCETZz+cg2MGNoXashbwROJGJUPbFUAxyCyGgg8ky8FX/4ELIUdu+47pKDIitocZawOffMSJKuD
	yO9vP/0oZVDJ3FiMJJiKFFExpopHXzqNatgsYMeXmWyCLBr3GjEZk6LJJ9VOZNGyAEOGz/wiZGBCQ
	0duyQxmIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTWkJ-0001r9-7z; Tue, 28 Apr 2020 20:22:23 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTWkB-0001qN-FH
 for openwrt-devel@lists.openwrt.org; Tue, 28 Apr 2020 20:22:17 +0000
Received: by mail-qk1-x741.google.com with SMTP id n143so23220795qkn.8
 for <openwrt-devel@lists.openwrt.org>; Tue, 28 Apr 2020 13:22:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=knfMyS920oWYSzTjSxHwdBDJ95QvGTIgdIxhEM//q3A=;
 b=c1WC+TrGRVAbl63tBnVBszJfgOZqT/1zZaF/MXowBg8QFhKeKrv/k/ekHyEk2WaV6y
 vgSRbEe+8Pn58pjQ2wl+TdwV3eu5myLk6DzKHymWyGD1JkwNbDKWPkgukTVBmifR8HUM
 M3TIGC/UsD3e3r2HxxkSVvKwVmbBe/A5L78PHlRF7K0/4N7YjVgkbfFRAspoTVFhOjDp
 7Eq01DP6nY5h8gHIBRnsVGfKNX99wlpZ+8qRUANUYcr6NuNZTRrLJw1k2pdB8wZozXG6
 aXZfyV+o/taesafTNbve9NlHtgUD3UEMkT1018RsNB1oaHkVSmhQBhoShJSGxUdtmf97
 prkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=knfMyS920oWYSzTjSxHwdBDJ95QvGTIgdIxhEM//q3A=;
 b=qS1S+krLoK+UHrZux+S25Uyh3ujW/iZ2+7S6RVDdBQA16gxgj9AlUjBIsWl3Vb8RJd
 F/oz85aEMr5Msb2tpkreS1Nc/c6qp5kOqyPGvvDRiLMheMXYxbm84PKajgVphQyjD8Ip
 QbR4duivqErbrIUpd19rd1FOcshEpwJqrW48c7fJcfkanNrHfsBNuMjurVAW1RQN9Tfp
 126xd0rVFBN0MTv3h4+sctksBybO8pfyCAvZ+LXHYxucfyDQqjWSD5TjYCb7z1/bK2fm
 b54wJ6Hd4HDWfc1gUUCW4+IqePGhx3LsjPLq+qcRedDKlXz+tjR0lV0I9tsjsFm2+/y4
 HoeA==
X-Gm-Message-State: AGi0PuY6+HfKNx0WQwfudU8DXsobVDiw6hTKH5AqgmQWslHx4EDIXJ9W
 EYhqHfO8RNZYly+bqOE9um4N5fM7HrafRIpkKTexYDJ2
X-Google-Smtp-Source: APiQypJIiQ/bterFj84thYeCkzwnYmxd1DBbrjjfMKV3IJpAkaocrpjXYFJ2TZs8+FYwPzDnrrbisug86yVwGleXSyc=
X-Received: by 2002:ae9:f507:: with SMTP id o7mr28287678qkg.262.1588105332234; 
 Tue, 28 Apr 2020 13:22:12 -0700 (PDT)
MIME-Version: 1.0
References: <20200428151958.17614-1-ynezz@true.cz>
In-Reply-To: <20200428151958.17614-1-ynezz@true.cz>
From: Hans Dedecker <dedeckeh@gmail.com>
Date: Tue, 28 Apr 2020 22:22:01 +0200
Message-ID: <CAJLcKsHTvs343vRZwGkOJ6o7PPJWO_Oq_OdzDJ1TreYQKnFrzQ@mail.gmail.com>
To: =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_132215_536154_43F4D3D8 
X-CRM114-Status: GOOD (  17.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dedeckeh[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] [PATCH] dnsmasq: always inform about disabled
 dhcp service
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
Content-Type: multipart/mixed; boundary="===============3818708433319276908=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============3818708433319276908==
Content-Type: multipart/alternative; boundary="00000000000031d24705a45f961d"

--00000000000031d24705a45f961d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 28, 2020 at 5:20 PM Petr =C5=A0tetiar <ynezz@true.cz> wrote:

> Init script checks for an already active DHCP server on the interface
> and if such DHCP server is found, then it logs "refusing to start DHCP"
> message, starts dnsmasq without DHCP service unless `option force 1` is
> set and caches the DHCP server check result.
>
> Each consecutive service start then uses this cached DHCP server check
> result, but doesn't provide log feedback about disabled DHCP service
> anymore.
>
> So this patch ensures, that the log message about disabled DHCP service
> on particular interface is always provided.
>
> Signed-off-by: Petr =C5=A0tetiar <ynezz@true.cz>
>
Acked-by: Hans Dedecker <dedeckeh@gmail.com>

> ---
>  package/network/services/dnsmasq/files/dnsmasq.init | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/package/network/services/dnsmasq/files/dnsmasq.init
> b/package/network/services/dnsmasq/files/dnsmasq.init
> index 1051087e05a6..9288971426ae 100644
> --- a/package/network/services/dnsmasq/files/dnsmasq.init
> +++ b/package/network/services/dnsmasq/files/dnsmasq.init
> @@ -110,11 +110,6 @@ dhcp_check() {
>
>         udhcpc -n -q -s /bin/true -t 1 -i "$ifname" >&- && rv=3D1 || rv=
=3D0
>
> -       [ $rv -eq 1 ] && \
> -               logger -t dnsmasq \
> -                       "found already running DHCP-server on interface
> '$ifname'" \
> -                       "refusing to start, use 'option force 1' to
> override"
> -
>         echo $rv > "$stamp"
>         return $rv
>  }
> @@ -517,7 +512,12 @@ dhcp_add() {
>
>         #check for an already active dhcp server on the interface, unless
> 'force' is set
>         config_get_bool force "$cfg" force 0
> -       [ $force -gt 0 ] || dhcp_check "$ifname" || return 0
> +       [ $force -gt 0 ] || dhcp_check "$ifname" || {
> +               logger -t dnsmasq \
> +                       "found already running DHCP-server on interface
> '$ifname'" \
> +                       "refusing to start, use 'option force 1' to
> override"
> +               return 0
> +       }
>
>         config_get start "$cfg" start 100
>         config_get limit "$cfg" limit 150
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>

--00000000000031d24705a45f961d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Tue, Apr 28, 2020 at 5:20 PM Petr =
=C5=A0tetiar &lt;<a href=3D"mailto:ynezz@true.cz">ynezz@true.cz</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Init script =
checks for an already active DHCP server on the interface<br>
and if such DHCP server is found, then it logs &quot;refusing to start DHCP=
&quot;<br>
message, starts dnsmasq without DHCP service unless `option force 1` is<br>
set and caches the DHCP server check result.<br>
<br>
Each consecutive service start then uses this cached DHCP server check<br>
result, but doesn&#39;t provide log feedback about disabled DHCP service<br=
>
anymore.<br>
<br>
So this patch ensures, that the log message about disabled DHCP service<br>
on particular interface is always provided.<br>
<br>
Signed-off-by: Petr =C5=A0tetiar &lt;<a href=3D"mailto:ynezz@true.cz" targe=
t=3D"_blank">ynezz@true.cz</a>&gt;<br></blockquote><div>Acked-by: Hans Dede=
cker &lt;<a href=3D"mailto:dedeckeh@gmail.com">dedeckeh@gmail.com</a>&gt; <=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">
---<br>
=C2=A0package/network/services/dnsmasq/files/dnsmasq.init | 12 ++++++------=
<br>
=C2=A01 file changed, 6 insertions(+), 6 deletions(-)<br>
<br>
diff --git a/package/network/services/dnsmasq/files/dnsmasq.init b/package/=
network/services/dnsmasq/files/dnsmasq.init<br>
index 1051087e05a6..9288971426ae 100644<br>
--- a/package/network/services/dnsmasq/files/dnsmasq.init<br>
+++ b/package/network/services/dnsmasq/files/dnsmasq.init<br>
@@ -110,11 +110,6 @@ dhcp_check() {<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 udhcpc -n -q -s /bin/true -t 1 -i &quot;$ifname=
&quot; &gt;&amp;- &amp;&amp; rv=3D1 || rv=3D0<br>
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0[ $rv -eq 1 ] &amp;&amp; \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0logger -t dnsmasq \=
<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0&quot;found already running DHCP-server on interface &#39;$ifname=
&#39;&quot; \<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0&quot;refusing to start, use &#39;option force 1&#39; to override=
&quot;<br>
-<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 echo $rv &gt; &quot;$stamp&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 return $rv<br>
=C2=A0}<br>
@@ -517,7 +512,12 @@ dhcp_add() {<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 #check for an already active dhcp server on the=
 interface, unless &#39;force&#39; is set<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 config_get_bool force &quot;$cfg&quot; force 0<=
br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0[ $force -gt 0 ] || dhcp_check &quot;$ifname&qu=
ot; || return 0<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0[ $force -gt 0 ] || dhcp_check &quot;$ifname&qu=
ot; || {<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0logger -t dnsmasq \=
<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0&quot;found already running DHCP-server on interface &#39;$ifname=
&#39;&quot; \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0&quot;refusing to start, use &#39;option force 1&#39; to override=
&quot;<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return 0<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 config_get start &quot;$cfg&quot; start 100<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 config_get limit &quot;$cfg&quot; limit 150<br>
<br>
_______________________________________________<br>
openwrt-devel mailing list<br>
<a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blank">openwr=
t-devel@lists.openwrt.org</a><br>
<a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" rel=3D=
"noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman/listinfo/o=
penwrt-devel</a><br>
</blockquote></div></div>

--00000000000031d24705a45f961d--


--===============3818708433319276908==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3818708433319276908==--

