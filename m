Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7B884B73F
	for <lists+openwrt-devel@lfdr.de>; Wed, 19 Jun 2019 13:42:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FxHQOKftw+r1BpC9KsLpx8DNlzil3GTGHTPXVSk3y2M=; b=mL+Si0oKExKVM4pp+1E866QLS
	XLZpqAsWJ5l+O7SI+HWwPa33N1iLnZ459DUC95chJEcgUEjFu/PPvq0KjXw0kIs4pLmPObe3WJI26
	CLgAA5sCyidPFzLnIQQiRwouJaqr0E5gi3SAFZ78iwlljWyCEQZz/vGett8XGpnD860JR2Jn6zbhE
	lzkkdM0c2PDJ2w7dNvbRW/wddebPWNfRunXzgkwG6RlnoSOH+7JiT5HhZO94QdomXVJg2KFJ47dqU
	5L08/hrUfvlRgEKCmzTu20ru/I3qrxF2joA8FrR7wzWlkG21rvUCVRSyYvsXwCJdEtTy4oS8LNmiz
	okidM6uIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdYyV-0007Rp-OB; Wed, 19 Jun 2019 11:41:59 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdYyL-0007RY-UV
 for openwrt-devel@lists.openwrt.org; Wed, 19 Jun 2019 11:41:51 +0000
Received: by mail-wm1-x32c.google.com with SMTP id s3so1405039wms.2
 for <openwrt-devel@lists.openwrt.org>; Wed, 19 Jun 2019 04:41:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=eaYEu4tKPca/8W51wN+UbMkEsDLmlioV8hkIssP5JH4=;
 b=kVoGlMF9GrFFeh5tRzqGg0bmkJh2dAw2NHeGnLGOAcotX5+m4mj5Mc1KsgkjXMRvTH
 e0VmISHIPQPlLCUIPcCxuYSl4F5i0sLJ58x3qoVY83XGxUmnx0PDfMP3YWu3H0eBaTSK
 vK9N+5P4Bx+fNk4XKJX27632mu27NbF6p6n+XpJC3Iq1AcbAhjhAV0NLiObhlweaixPj
 glv89ToFdzO7tvF3cWcpMhHkTMzXvZkmRx5Mgrw43vhW27JAu8zAw1352WjApFO+KC9t
 GobB63NkPlqzEdWoWYU2XAvPUUFq+JqfcEHoGnU02ZFOvWx3kdEHsFWt5nmqV2C2FJYc
 /5Dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=eaYEu4tKPca/8W51wN+UbMkEsDLmlioV8hkIssP5JH4=;
 b=gZ6IQtF+0f0GzQF91E2fgpN9TtbwGdYiRjx5Gfrh2r4nMaEyVJe0X9x56g05eABXGk
 lVl7/NNHGmU9eM7Rhm6BquEgZb+PhEeyzNkjT0ZalBrd8SCHLfGNh1WNk2NsBvR6wbcf
 rqqT7Aq/hVZKgTpieNFlB3ARHiJz3pgRdKutqjZt/a76NNL8gznsrVhlbEDZ54Yjv8ba
 uo4zfcwsh/Z46K69+pQn3JvBXe8fyu5vSWD3+Sk9z7LyztXa8Ivou5fSCtOCKepsyPX5
 AaxrUUPRxzuFf/8axkdVc0fEzBAbsRT8YeJw04DoX3HV83kjw6YGvdiw5/A2H2d7duhX
 /ZGQ==
X-Gm-Message-State: APjAAAVVBUGuE6Q8truEwNWdFcmaLku+ZehCzTiDp0ntYnPNiQR++7Jz
 6YHJYpHUbmth7B0JSjkBftos6y8dhpXzQjqjltI=
X-Google-Smtp-Source: APXvYqz5EOxagD+oi6m6WhrVol4LGh3ziURHXM8KRy3tSa/vrMbUxM1c/ClOk7VkGJYLk+JOC629DO6mSqpKzgSgdjQ=
X-Received: by 2002:a1c:a483:: with SMTP id n125mr7845325wme.3.1560944507450; 
 Wed, 19 Jun 2019 04:41:47 -0700 (PDT)
MIME-Version: 1.0
References: <CAC8mBSVP+Uev=H_x4actCT9g+FV1X0bVFZ=06biyBA=w-s6AkA@mail.gmail.com>
 <f30df01f-ea9d-32ae-2e7d-286fa4aab164@ironai.com>
 <CAC8mBSUYMvuwJaAftwYCL+TaYTaDs_4VT2P9Q3-j5sDOF6xO6Q@mail.gmail.com>
 <87imtvu3cl.fsf@husum.klickitat.com>
 <CAC8mBSWfsK+f_8Od3FF1GtQeiZeENJnZAk89ir2Q8OABY7iJkg@mail.gmail.com>
 <87o93nqszl.fsf@husum.klickitat.com>
In-Reply-To: <87o93nqszl.fsf@husum.klickitat.com>
From: =?UTF-8?Q?Denis_Peri=C5=A1a?= <darkman.hr@gmail.com>
Date: Wed, 19 Jun 2019 13:41:47 +0200
Message-ID: <CAC8mBSWjrZ9n5hCT8LJ+fCfyjowQAr3+FvJRXknVhV-sobCOVQ@mail.gmail.com>
To: Russell Senior <russell@personaltelco.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_044150_006142_F52B6098 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32c listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (darkman.hr[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] dnsmasq not leasing after a while. Sometimes
 more than 5 times a day
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
Content-Type: multipart/mixed; boundary="===============3319316674801540445=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============3319316674801540445==
Content-Type: multipart/alternative; boundary="000000000000e17999058babb636"

--000000000000e17999058babb636
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This is final error message.. after this no dns  works and dnsmasq needs to
be rebooted.. I also checked google and found numerous users have same
issue back a year or more.

Error sending DHCP packet to 172.16.6.50: Resource temporarily
unavailable....
l

On Tue, May 28, 2019 at 3:15 AM Russell Senior <russell@personaltelco.net>
wrote:

> >>>>> "Denis" =3D=3D Denis Peri=C5=A1a <darkman.hr@gmail.com> writes:
>
> Denis> There is no other dhcp in network, it's routed connection RB435G
> Denis> with multiple cards wlan.  this is config example:
>
> Denis> interface=3Deth0 except-interface=3Deth1 interface=3Dwlan3
> Denis> interface=3Dwlan0 interface=3Dwlan1 interface=3Dwlan2
>
> Denis> dhcp-range=3D172.17.3.20,172.17.3.253,255.255.255.0,1h
> Denis> dhcp-range=3D172.17.4.20,172.17.4.253,255.255.255.0,1h
> Denis> dhcp-range=3D172.17.5.20,172.17.5.253,255.255.255.0,1h
> Denis> dhcp-range=3D172.17.6.20,172.17.6.253,255.255.255.0,1h
> Denis> dhcp-range=3D172.17.7.20,172.17.7.253,255.255.255.0,1h
>
> From experience, sometimes there are DHCP servers you don't know about.
>
> This is what I see in my test bed:
>
>    # cat /var/etc/dnsmasq.conf.cfg01411c
>
>    # auto-generated config file from /etc/config/dhcp
>    conf-file=3D/etc/dnsmasq.conf
>    dhcp-authoritative
>    read-ethers
>    enable-ubus
>    bind-dynamic
>    local-service
>    domain=3Dlocalnet
>    server=3D/lan/
>    except-interface=3Deth1
>    dhcp-leasefile=3D/tmp/dhcp.leases
>    resolv-file=3D/tmp/resolv.conf.auto
>    dhcp-broadcast=3Dtag:needs-broadcast
>    addn-hosts=3D/tmp/hosts
>    conf-dir=3D/tmp/dnsmasq.d
>    user=3Ddnsmasq
>    group=3Ddnsmasq
>
>
>    dhcp-ignore-names=3Dtag:dhcp_bogus_hostname
>    conf-file=3D/usr/share/dnsmasq/dhcpbogushostname.conf
>
>
>    dhcp-range=3Dset:pub,10.11.24.5,10.11.24.30,255.255.255.224,1h
>    no-dhcp-interface=3Deth1
>    dhcp-range=3Dset:priv,192.168.11.100,192.168.11.249,255.255.255.0,12h
>
> Try turning on the force option.
>
>
> --
> Russell Senior, President
> russell@personaltelco.net
>

--000000000000e17999058babb636
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">This is final error message.. after this no dns=C2=A0 work=
s and dnsmasq needs to be rebooted.. I also checked google and found numero=
us users have same issue back a year or more.<br><br>Error sending DHCP pac=
ket to <a href=3D"http://172.16.6.50">172.16.6.50</a>: Resource temporarily=
 unavailable....<br><div>l</div></div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">On Tue, May 28, 2019 at 3:15 AM Russell Sen=
ior &lt;<a href=3D"mailto:russell@personaltelco.net">russell@personaltelco.=
net</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x">&gt;&gt;&gt;&gt;&gt; &quot;Denis&quot; =3D=3D Denis Peri=C5=A1a &lt;<a h=
ref=3D"mailto:darkman.hr@gmail.com" target=3D"_blank">darkman.hr@gmail.com<=
/a>&gt; writes:<br>
<br>
Denis&gt; There is no other dhcp in network, it&#39;s routed connection RB4=
35G<br>
Denis&gt; with multiple cards wlan.=C2=A0 this is config example:<br>
<br>
Denis&gt; interface=3Deth0 except-interface=3Deth1 interface=3Dwlan3<br>
Denis&gt; interface=3Dwlan0 interface=3Dwlan1 interface=3Dwlan2<br>
<br>
Denis&gt; dhcp-range=3D172.17.3.20,172.17.3.253,255.255.255.0,1h<br>
Denis&gt; dhcp-range=3D172.17.4.20,172.17.4.253,255.255.255.0,1h<br>
Denis&gt; dhcp-range=3D172.17.5.20,172.17.5.253,255.255.255.0,1h<br>
Denis&gt; dhcp-range=3D172.17.6.20,172.17.6.253,255.255.255.0,1h<br>
Denis&gt; dhcp-range=3D172.17.7.20,172.17.7.253,255.255.255.0,1h<br>
<br>
From experience, sometimes there are DHCP servers you don&#39;t know about.=
<br>
<br>
This is what I see in my test bed:<br>
<br>
=C2=A0 =C2=A0# cat /var/etc/dnsmasq.conf.cfg01411c<br>
<br>
=C2=A0 =C2=A0# auto-generated config file from /etc/config/dhcp<br>
=C2=A0 =C2=A0conf-file=3D/etc/dnsmasq.conf<br>
=C2=A0 =C2=A0dhcp-authoritative<br>
=C2=A0 =C2=A0read-ethers<br>
=C2=A0 =C2=A0enable-ubus<br>
=C2=A0 =C2=A0bind-dynamic<br>
=C2=A0 =C2=A0local-service<br>
=C2=A0 =C2=A0domain=3Dlocalnet<br>
=C2=A0 =C2=A0server=3D/lan/<br>
=C2=A0 =C2=A0except-interface=3Deth1<br>
=C2=A0 =C2=A0dhcp-leasefile=3D/tmp/dhcp.leases<br>
=C2=A0 =C2=A0resolv-file=3D/tmp/resolv.conf.auto<br>
=C2=A0 =C2=A0dhcp-broadcast=3Dtag:needs-broadcast<br>
=C2=A0 =C2=A0addn-hosts=3D/tmp/hosts<br>
=C2=A0 =C2=A0conf-dir=3D/tmp/dnsmasq.d<br>
=C2=A0 =C2=A0user=3Ddnsmasq<br>
=C2=A0 =C2=A0group=3Ddnsmasq<br>
<br>
<br>
=C2=A0 =C2=A0dhcp-ignore-names=3Dtag:dhcp_bogus_hostname<br>
=C2=A0 =C2=A0conf-file=3D/usr/share/dnsmasq/dhcpbogushostname.conf<br>
<br>
<br>
=C2=A0 =C2=A0dhcp-range=3Dset:pub,10.11.24.5,10.11.24.30,255.255.255.224,1h=
<br>
=C2=A0 =C2=A0no-dhcp-interface=3Deth1<br>
=C2=A0 =C2=A0dhcp-range=3Dset:priv,192.168.11.100,192.168.11.249,255.255.25=
5.0,12h<br>
<br>
Try turning on the force option.<br>
<br>
<br>
-- <br>
Russell Senior, President<br>
<a href=3D"mailto:russell@personaltelco.net" target=3D"_blank">russell@pers=
onaltelco.net</a><br>
</blockquote></div>

--000000000000e17999058babb636--


--===============3319316674801540445==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============3319316674801540445==--

