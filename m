Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16D7A194AE2
	for <lists+openwrt-devel@lfdr.de>; Thu, 26 Mar 2020 22:47:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=M3PGuR1Vdqr1Qj+pOVhhBCZfsgRpwW+hH4lciCEPv0g=; b=UZ+s4asIkkay57aOC301FC0rW
	hJ3mgV6ajRKBDlNN1cN2DHoLuZrSWm9p1dNws9RDbglzNJ5TsgIPtLlattDhB7zPB4z8zO1h7xFUV
	1nRsJyiJ7bq6C8jo18Kw9RiTDquy6u7zJsc88yyZ8+4iGgFdQjhRRBpTbc13HbdSZo1SxNUttI5Bv
	jonenh4lJdguloIdsb8XxqIOxnWgkSBFFNOZkqDx34w0ojXb/17ubTHY4fuODVOnJBNu5/OUF7UOR
	MWo5nSWak27TjnURh8Td31aEAanSc2/O01K95/LySAQyuVphdRbsJ4IgSeHdrDy/gDaUetqej2eyw
	hpdi7BOag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHaLP-0006K2-MQ; Thu, 26 Mar 2020 21:47:19 +0000
Received: from mail-qv1-xf30.google.com ([2607:f8b0:4864:20::f30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHaLG-0006Jb-2x
 for openwrt-devel@lists.openwrt.org; Thu, 26 Mar 2020 21:47:11 +0000
Received: by mail-qv1-xf30.google.com with SMTP id q73so3936677qvq.2
 for <openwrt-devel@lists.openwrt.org>; Thu, 26 Mar 2020 14:47:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5KdgOeQbZYS7F2QM+KAb26i5lQgsW0+cR0TrQoTttGg=;
 b=OB0D1t2UIUl/k8LESv///cjyy/7f/Jt1f2CYjKyrmG1wmIy4mhNgGM1188j/JpQ7Q6
 gk7kyd9nsUJrPjiTxRPbAmg6hEWZNpccgOPDllGsnDyjxJIhCD6FADLsMSQuBhlUvSKL
 N6YNQXQuMxpgqg/0FWRft8xJ8kXf78Q+K3Y4iaDfmItwdMUk27bgVnMd+XN5e5UtDTYM
 E8GNqUMjgO0jOlZ3FSz9LCiDWvAA3TGKYeLHcAwOaKrCq/uq3Pi2THodRVS8vIIcsExu
 4rOxhZKGSkyjT9ZScTdJLf56FQpW08rEFcpF0Oku2MitSxJMIjl33c14cuKv7nwAJtB+
 XggQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5KdgOeQbZYS7F2QM+KAb26i5lQgsW0+cR0TrQoTttGg=;
 b=liLMPVUMUY8LQDS0vSYChDXGWpRHDVPHgTRaV3i3seRc9vW9og7k1cfXXm/MUxMtT8
 TUQZA/cqPeyD1IitrhQSkNcr0roZs8D89SvtFUC3bNmhEVMiDBMcAJscTSmiTa9aiar6
 KEBC/HBA9f5uu/OoIro5NLxm+BBkQc7RZyQZ1P+T6O5ecQP41jTKI0PqRZHy4kj4ATO0
 n4/zJ7xf74RN1K+nU53NeGSCU/8wEA0JPqi/0fdTKBEnMk0Rhp7CxnRWBmaYF1usplPU
 QoLn4YG44f0xf+OW2wCAYg7L8XddmlKpMebr7MFeiNnj9bJwtMG51Jq9Xor31TigfNWv
 z1DA==
X-Gm-Message-State: ANhLgQ1GOhE/6jKYqrT/YkjfTG63/U2slK5oUGq1Twpn2v+H3FLefutW
 UvVTrboQDnb1yya1id8jGg54ieAJVnM5YuYWowY=
X-Google-Smtp-Source: ADFU+vv77cSZbe752Xr+PtqcouWnH7VVUTR1wlVP06QmEQXa+hshzwmEhpNQ0mBCqhyACmLUW0CyALpmqDPOrYK0sO0=
X-Received: by 2002:ad4:5427:: with SMTP id g7mr10825881qvt.23.1585259228959; 
 Thu, 26 Mar 2020 14:47:08 -0700 (PDT)
MIME-Version: 1.0
References: <CAKiAkGSCYNc7HjvdybDNEhq6ryz0KHk6VTppsFLayqPNyKZcWw@mail.gmail.com>
 <CAOX2RU5tXCkq=zhdi_CgP-JVdVS6hN2b1O6Q46vXSd7nGhKpNQ@mail.gmail.com>
 <CA+_ehUyRFpGPZ_wSF_5146HE3KjfC0Og_yFaWRQ=PaZy7xP4_A@mail.gmail.com>
In-Reply-To: <CA+_ehUyRFpGPZ_wSF_5146HE3KjfC0Og_yFaWRQ=PaZy7xP4_A@mail.gmail.com>
From: Robert Marko <robimarko@gmail.com>
Date: Thu, 26 Mar 2020 22:46:57 +0100
Message-ID: <CAOX2RU6qTuHbu3GUpT+LnuHSBVCmKTjwT=e6i7vbhd8vCcA_5w@mail.gmail.com>
To: Ansuel Smith <ansuelsmth@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_144710_129270_8C282DA5 
X-CRM114-Status: GOOD (  15.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f30 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robimarko[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] New target IPQ8074 / Asus-ax89x(u)
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
 =?UTF-8?Q?Joel_Wir=C4=81mu_Pauling?= <joel@aenertia.net>
Content-Type: multipart/mixed; boundary="===============0597168990571782409=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============0597168990571782409==
Content-Type: multipart/alternative; boundary="00000000000038323705a1c8ed64"

--00000000000038323705a1c8ed64
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 26 Mar 2020 at 22:45, Ansuel Smith <ansuelsmth@gmail.com> wrote:

> 400=E2=82=AC for a router... little too much for now... at least the firm=
ware
> is openwrt based so ASUS should provide GPL.
>
Its just QSDK with Asus customization and they always provide the whole
package that is mostly compileable.
It looks like QCA made it to kernel 4.4

>
> Il giorno gio 26 mar 2020 alle ore 22:42 Robert Marko

<robimarko@gmail.com> ha scritto:
> >
> >
> >
> > On Thu, 26 Mar 2020 at 22:39, Joel Wir=C4=81mu Pauling <joel@aenertia.n=
et>
> wrote:
> >>
> >> Hi all,
> >>
> >> I received my ax89x yesterday and have added a stub wiki page for it
> here:
> >>
> >> https://openwrt.org/toh/asus/rt-ax89x
> >>
> >> There is a published build chain for the device from ASUS - I haven't
> tried compiling it.
> >> I've done some preliminary poking and opened the case up - dumped the
> bootlog.
> >>
> >> Very interesting device and likely a good target for 10Gbit and Wifi6
> work.
> >
> >
> > Looks great, just that the price tag is painful.
> > Its HK01 reference board based, a lot of stuff has been upstreamed but =
a
> whole more is missing for IPQ807x upstream.
> >>
> >>
> >>
> >> -Joel
> >> _______________________________________________
> >> openwrt-devel mailing list
> >> openwrt-devel@lists.openwrt.org
> >> https://lists.openwrt.org/mailman/listinfo/openwrt-devel
> >
> > _______________________________________________
> > openwrt-devel mailing list
> > openwrt-devel@lists.openwrt.org
> > https://lists.openwrt.org/mailman/listinfo/openwrt-devel
>

--00000000000038323705a1c8ed64
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Thu, 26 Mar 2020 at 22:45, Ansuel =
Smith &lt;<a href=3D"mailto:ansuelsmth@gmail.com">ansuelsmth@gmail.com</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">400=
=E2=82=AC for a router... little too much for now... at least the firmware<=
br>
is openwrt based so ASUS should provide GPL.<br></blockquote><div>Its just =
QSDK with Asus customization and they always provide the whole package that=
 is mostly compileable.=C2=A0</div><div>It looks like QCA made it to kernel=
 4.4</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
Il giorno gio 26 mar 2020 alle ore 22:42 Robert Marko=C2=A0</blockquote><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex">
&lt;<a href=3D"mailto:robimarko@gmail.com" target=3D"_blank">robimarko@gmai=
l.com</a>&gt; ha scritto:<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; On Thu, 26 Mar 2020 at 22:39, Joel Wir=C4=81mu Pauling &lt;<a href=3D"=
mailto:joel@aenertia.net" target=3D"_blank">joel@aenertia.net</a>&gt; wrote=
:<br>
&gt;&gt;<br>
&gt;&gt; Hi all,<br>
&gt;&gt;<br>
&gt;&gt; I received my ax89x yesterday and have added a stub wiki page for =
it here:<br>
&gt;&gt;<br>
&gt;&gt; <a href=3D"https://openwrt.org/toh/asus/rt-ax89x" rel=3D"noreferre=
r" target=3D"_blank">https://openwrt.org/toh/asus/rt-ax89x</a><br>
&gt;&gt;<br>
&gt;&gt; There is a published build chain for the device from ASUS - I have=
n&#39;t tried compiling it.<br>
&gt;&gt; I&#39;ve done some preliminary poking and opened the case up - dum=
ped the bootlog.<br>
&gt;&gt;<br>
&gt;&gt; Very interesting device and likely a good target for 10Gbit and Wi=
fi6 work.<br>
&gt;<br>
&gt;<br>
&gt; Looks great, just that the price tag is painful.<br>
&gt; Its HK01 reference board based, a lot of stuff has been upstreamed but=
 a whole more is missing for IPQ807x upstream.<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; -Joel<br>
&gt;&gt; _______________________________________________<br>
&gt;&gt; openwrt-devel mailing list<br>
&gt;&gt; <a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blan=
k">openwrt-devel@lists.openwrt.org</a><br>
&gt;&gt; <a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-deve=
l" rel=3D"noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman/l=
istinfo/openwrt-devel</a><br>
&gt;<br>
&gt; _______________________________________________<br>
&gt; openwrt-devel mailing list<br>
&gt; <a href=3D"mailto:openwrt-devel@lists.openwrt.org" target=3D"_blank">o=
penwrt-devel@lists.openwrt.org</a><br>
&gt; <a href=3D"https://lists.openwrt.org/mailman/listinfo/openwrt-devel" r=
el=3D"noreferrer" target=3D"_blank">https://lists.openwrt.org/mailman/listi=
nfo/openwrt-devel</a><br>
</blockquote></div></div>

--00000000000038323705a1c8ed64--


--===============0597168990571782409==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============0597168990571782409==--

