Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF7581D8E69
	for <lists+openwrt-devel@lfdr.de>; Tue, 19 May 2020 05:57:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=K6Wug8NPxoqTUodqJ0HFbJs5OyN6z3fo5Dnb6akBQCk=; b=kpXbbUmJYJbbCQ4tSkFUU0xGV
	sWLYur9ZRlFCdfbimiJ2+KPK2CzwX+x5ITPa3VL7MeRD4s8mDyzHRhVfHzyToOPI9a7CF+gjD+fv5
	Rw+qk9S5lgZtndX63wuf8Y83cxup3HI4qgV+4Up+UGoEuCC8a5FQGhzYWoOuRpWGmIwJhWvYxss5o
	G42cu+IQTkXy3fBnVdRbIatM6Kv4Do/br6Dr7qIhFjKNJK1s4uhQlw6p9PLkY/ssKK4jGHuyRIJn1
	qChOo4xHueVmfv1SAALK6mTrceTX/9zN7aceYp26UewsxDqyPRj//2LsBtpE7FkCSU6A2ih4MiBMu
	KS/BQP4UA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jatNw-0003It-Ek; Tue, 19 May 2020 03:57:44 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jatNn-0003HB-MZ
 for openwrt-devel@lists.openwrt.org; Tue, 19 May 2020 03:57:39 +0000
Received: by mail-ej1-x62d.google.com with SMTP id l21so10617834eji.4
 for <openwrt-devel@lists.openwrt.org>; Mon, 18 May 2020 20:57:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EWIwJKjQjMzLzI23/q2w9EsAaWndvU8Hh9lKsIIBNMo=;
 b=r9xEuU+wdyQsSQtDtu9ilI1EvhollWowWTLzeGuclg0/VZ+TNvXmdbVxhNxpCjfKP8
 rCwZXegAOZ79I17C31cFk1Jxlj0OtN05xt1W+ahz1TgLcSqYX1vsIdCO5ez38tlqx2bg
 oKSspDuIGuc8h74ItnwISo12PzaKy8m0z97edKtSc7l1UcySLb3WdHt9ruQJm/wdAw/b
 qHFji2JYy84z+kr/YDliP+8X2sYoVG1ToBD/FHXBSuQwOT1E99evVDd8kyCt+hGyvERR
 pTjJBCp79fq4uYe0L9VuapddoRaJ4fRSHVuMQnhrkO7Ak1xFcdNCVjILhy07IIU1tchS
 jlgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EWIwJKjQjMzLzI23/q2w9EsAaWndvU8Hh9lKsIIBNMo=;
 b=Mv/zINf+TNRlYL97MVnanWK+WkywGsXiyJissVX7K+KqAMqLT4Vx+N9UOtr/LL/XjV
 7alxclaUEyRP6tUK8ZrF/R/JGfhTVxvjO5SGGk2v1RJWC4lhenSdQxXBX8HcsOEsZ7QD
 Og0ZMSIiIAkhCQ9dVK8sKNz3YzTIgF2w0P6aizIs/3ki2zW3rfe9TVEX8zv+veMCydnR
 aMD6XzxAJgP7p8NnVYigt7OLciUcub8xXT6Mzj5p7/JV4q7edoMXnl758xS9use61I0W
 CTSigYH2P3mefwcUDE1l5wtkvz+aPf3F7F+0twNl6OJvfy3tSRhL2pA4Z1+tgH6rWwd4
 pjPA==
X-Gm-Message-State: AOAM531RQhVLLnYPAbni9PMU0ryE+7IShz1IPqiVgP/pB5Jmgm2U+mpq
 AYvYTKc79RTmeYuijmXVxLe2o94dqiJOqNVt3SQ=
X-Google-Smtp-Source: ABdhPJzXXkC+dShfO4SDCDMvTyZr9qE7uWdfQUHnar6/Bw8AoE4UyaUwn477gJGJLgW65ZSJ02lf1GhDo6MfPBMRKS8=
X-Received: by 2002:a17:906:e090:: with SMTP id
 gh16mr17932907ejb.41.1589860654027; 
 Mon, 18 May 2020 20:57:34 -0700 (PDT)
MIME-Version: 1.0
References: <CALYKT1hk3-kyD5xifS1QGYE5dy5rR9Jn0HjojxCbe5yDcjAxkw@mail.gmail.com>
 <CALYKT1j=15WNV+H54qX=zT8K93GoCvs5h-VUzVvRBmzAGtfrKA@mail.gmail.com>
 <CAAP7ucKtq2tiJRVMFjr5zx=NCG6=-507wyNhP18hm0Y0gAkj8Q@mail.gmail.com>
 <CALYKT1jgbSGaU++m4jbfZfnP=ecivEQ2tFRb6qpd26TZWmjJzg@mail.gmail.com>
 <CALYKT1ibXO1x96TZWxcEhmtTWwPPPFN+WPRwpYfLfULNt_edGg@mail.gmail.com>
 <CAAP7uc+mTnEbE8HSNghweu3uUYG97RrttrP4UuawokA6a1QYvg@mail.gmail.com>
 <CALYKT1jGSUNb1gPKczz8nVY2J84dBZFRY586P+OSnLNTj4Fxkg@mail.gmail.com>
 <CAAP7ucJ5qwJ+4cy_v4sEnULdD9g-D8w=5Ze7d8kubK9RZFLiQQ@mail.gmail.com>
 <CALYKT1hT=0G6ip3__-pttHVr-7Vc1rOUFBnsZFc9jCnx_uu4Wg@mail.gmail.com>
 <CALYKT1h8FF5jQsS7ereCS71rT4aywZrwr+ZjNHSPghQgqx+R8g@mail.gmail.com>
 <CAAP7ucKeVq3N0RJhez45o7g0jkRenPvDUVazRy2CCm3cK64xQg@mail.gmail.com>
 <CALYKT1gNQncwkrLR_Teb1Ak2fYzohd5E0Do79kR+aWA2eVxxkQ@mail.gmail.com>
 <CALYKT1ho94oFRCUr=ujBH1vzZc5vQrTWY1Az91HkKS_F12AivQ@mail.gmail.com>
 <CALYKT1jytZ0SmMEWc-84Fjp-oSSYvb+UmR8X3gF4BugVrbZLrw@mail.gmail.com>
 <8a3e98a9-07e5-045d-d711-0a5833dcb5cc@web.de>
In-Reply-To: <8a3e98a9-07e5-045d-d711-0a5833dcb5cc@web.de>
From: Jeonghum Joh <oosaprogrammer@gmail.com>
Date: Tue, 19 May 2020 12:57:21 +0900
Message-ID: <CALYKT1hqiBvcEQ+tqDdMh3tHznSt2NamLcVqzneU5TFJZxX1Ow@mail.gmail.com>
To: Moritz Warning <moritzwarning@web.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_205735_754471_CF6BAF08 
X-CRM114-Status: GOOD (  15.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:62d listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [oosaprogrammer[at]gmail.com]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
Content-Type: multipart/mixed; boundary="===============6028437308301061884=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============6028437308301061884==
Content-Type: multipart/alternative; boundary="00000000000086966b05a5f84787"

--00000000000086966b05a5f84787
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Moritz Warning

Thank you very much!
I can continue investigating by your hints.

Thank you.
Jeonghum

2020=EB=85=84 5=EC=9B=94 19=EC=9D=BC (=ED=99=94) =EC=98=A4=EC=A0=84 11:37, =
Moritz Warning <moritzwarning@web.de>=EB=8B=98=EC=9D=B4 =EC=9E=91=EC=84=B1:

> On 5/19/20 3:49 AM, Jeonghum Joh wrote:
> > I know how to do this for /etc/config/firewall.
> > It is package/network/config/firewall/files/firewall.config
> >
> > But I cannot find /etc/config/network for default root file system.
> >
> > Where can I find it?
> > How am I supposed to change settings in /etc/config/network of default
> root
> > file system of OpenWRT?
> >
> > Thank you in advance!
> >
> > Jeonghum
> >
> >
> > _______________________________________________
> > openwrt-devel mailing list
> > openwrt-devel@lists.openwrt.org
> > https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> >
>
> In your OpenWrt build root, create a file "files/etc/config/firewall".
> When you build OpenWrt, the file will be included in the image (and not
> overwritten).
>
> Btw., /etc/config/network is generated by a script on first boot and that
> is then deleted.
> But it is still accessible in /rom/etc/uci_defaults/02_network (not quite
> sure on the script name).
>
> - mwarning
>
> _______________________________________________
> openwrt-devel mailing list
> openwrt-devel@lists.openwrt.org
> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>

--00000000000086966b05a5f84787
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Moritz Warning<div><br></div><div>Thank you very muc=
h!</div><div>I can continue investigating by your hints.</div><div><br></di=
v><div>Thank you.</div><div>Jeonghum</div></div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">2020=EB=85=84 5=EC=9B=94 19=EC=9D=
=BC (=ED=99=94) =EC=98=A4=EC=A0=84 11:37, Moritz Warning &lt;<a href=3D"mai=
lto:moritzwarning@web.de">moritzwarning@web.de</a>&gt;=EB=8B=98=EC=9D=B4 =
=EC=9E=91=EC=84=B1:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex">On 5/19/20 3:49 AM, Jeonghum Joh wrote:<br>
&gt; I know how to do this for /etc/config/firewall.<br>
&gt; It is package/network/config/firewall/files/firewall.config<br>
&gt;<br>
&gt; But I cannot find /etc/config/network for default root file system.<br=
>
&gt;<br>
&gt; Where can I find it?<br>
&gt; How am I supposed to change settings in /etc/config/network of default=
 root<br>
&gt; file system of OpenWRT?<br>
&gt;<br>
&gt; Thank you in advance!<br>
&gt;<br>
&gt; Jeonghum<br>
&gt;<br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; openwrt-devel mailing list<br>
&gt; <a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blank">o=
penwrt-devel@lists.openwrt.org</a><br>
&gt; <a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" r=
el=3D"noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman/listi=
nfo/openwrt-devel</a><br>
&gt;<br>
<br>
In your OpenWrt build root, create a file &quot;files/etc/config/firewall&q=
uot;.<br>
When you build OpenWrt, the file will be included in the image (and not ove=
rwritten).<br>
<br>
Btw., /etc/config/network is generated by a script on first boot and that i=
s then deleted.<br>
But it is still accessible in /rom/etc/uci_defaults/02_network (not quite s=
ure on the script name).<br>
<br>
- mwarning<br>
<br>
_______________________________________________<br>
openwrt-devel mailing list<br>
<a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blank">openwr=
t-devel@lists.openwrt.org</a><br>
<a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" rel=3D=
"noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman/listinfo/o=
penwrt-devel</a><br>
</blockquote></div>

--00000000000086966b05a5f84787--


--===============6028437308301061884==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============6028437308301061884==--

