Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC725194AC3
	for <lists+openwrt-devel@lfdr.de>; Thu, 26 Mar 2020 22:39:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=fEwen5KtSvFDxUm2khIwCWpoTGFWWSxraCC06LWCrzE=; b=Y6a
	NNhtBw3uRUlmEQLL/Rc4MdViYvnoEpAWxfJ5IWBxZAVES47/atyozK50YQB1gT9yZ+Ji+KQUSDqQd
	A9dBixUeAbYGhjOlB8pcH0aZUx2jcaYKWDvvbqxNYh/B63yFxI0CwI86AVkBOZ+zwumL2aOcV6CUl
	jXZUH/u59RPbcK8p4WZ36j0C2ja6LjXgTY6//WlV+RH2cB2VUyVZzV7iw8gxrR865B8AWU27i6c2g
	HmzrHFlikKjqiIrNruSSyu8yMq9B1qnkOY/sf3RtYkictBsnckdFRVPKPMGoaLhpGDa1RUrKs0hnL
	4mIJgDniJdD7cfmEtu600dOBDOPu6OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHaDf-0002oj-Kp; Thu, 26 Mar 2020 21:39:19 +0000
Received: from mail-vs1-xe33.google.com ([2607:f8b0:4864:20::e33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHaDT-0002ny-W3
 for openwrt-devel@lists.openwrt.org; Thu, 26 Mar 2020 21:39:12 +0000
Received: by mail-vs1-xe33.google.com with SMTP id x206so4939058vsx.5
 for <openwrt-devel@lists.openwrt.org>; Thu, 26 Mar 2020 14:39:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=aenertia.net; s=dkimaenertianet;
 h=mime-version:from:date:message-id:subject:to;
 bh=bxE7zAjfCM5Ar0MsbV2NBtBkErTRMPg3tZWvIPnwBWk=;
 b=NY3tRnmgBO5ovw6dwj/sjHA7B/HdNl20WWp3am14Yj/INvY7xYSUjy3JJcrqq08uqs
 dphZ0aNFS9uw/URpvrou1wVZa1MNfoz2rilE6ui+O01zUZKvnqOqF7avD+EN3s9sdug+
 FzlHZW6xKqazS4He5nBPFfwZF9fDoIbw7iDFU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=bxE7zAjfCM5Ar0MsbV2NBtBkErTRMPg3tZWvIPnwBWk=;
 b=adzXBdmeINw71JaVIXsgppe4Ejsy9CuvOoTcTqQYJExy+2to/IecIo0l+DRkD5z3/3
 P7YK9WbAmEBGa5FR8Ta+RyavV6JE3zc4BEj28UClHLSpEHoBdmvVYiDc9fsYk+Bi1raq
 IGoWDFEzux3mev9VYdSY46tZPEMwd/nAQXhHSHOTiSBAHZDV3JP+aJHSrJjLlgeXmMsB
 iRTgF1B/zBjchIDJXZvakXjvAjMrEna5BzbhaJbdiUa/iUvq0lV3t6F7MCmINhY5IKlF
 F+0D8WXLAEsxJkjV1K+c+xK0y+cia6BLT6r3OPmEzXSTttqsY3UurIWxaqB96PpUKnmx
 /COg==
X-Gm-Message-State: ANhLgQ2IQoLeazxbUtFssdQE5wiIs0FtD/1XjcoFwld8wwlUdsuC3R5q
 Vof/snFNH44iITYRNU/g7KiejkYAMAs0FnwdXZ+pQWt5o9A=
X-Google-Smtp-Source: ADFU+vvGaM1ZO7ruSR1l3Qv3/wSETYdv8/YWsl2ozmpgX6VtkmNGB2OYaFNHxHsC3j57lA7qXwBoL4XoM34IKU7SX1A=
X-Received: by 2002:a67:646:: with SMTP id 67mr8824444vsg.34.1585258744607;
 Thu, 26 Mar 2020 14:39:04 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Joel_Wir=C4=81mu_Pauling?= <joel@aenertia.net>
Date: Fri, 27 Mar 2020 10:38:53 +1300
Message-ID: <CAKiAkGSCYNc7HjvdybDNEhq6ryz0KHk6VTppsFLayqPNyKZcWw@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_143908_211284_FFA717B1 
X-CRM114-Status: UNSURE (   6.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e33 listed in]
 [list.dnswl.org]
 0.0 T_SPF_TEMPERROR        SPF: test of record failed (temperror)
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: [OpenWrt-Devel] New target IPQ8074 / Asus-ax89x(u)
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
Content-Type: multipart/mixed; boundary="===============4564696476957305626=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============4564696476957305626==
Content-Type: multipart/alternative; boundary="00000000000059882605a1c8d056"

--00000000000059882605a1c8d056
Content-Type: text/plain; charset="UTF-8"

Hi all,

I received my ax89x yesterday and have added a stub wiki page for it here:

https://openwrt.org/toh/asus/rt-ax89x

There is a published build chain for the device from ASUS - I haven't tried
compiling it.
I've done some preliminary poking and opened the case up - dumped the
bootlog.

Very interesting device and likely a good target for 10Gbit and Wifi6 work.


-Joel

--00000000000059882605a1c8d056
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif">Hi all,</div><div class=3D"gmail_default" style=3D"font-family:=
verdana,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-fa=
mily:verdana,sans-serif">I received my ax89x yesterday and have added a stu=
b wiki page for it here:</div><div class=3D"gmail_default" style=3D"font-fa=
mily:verdana,sans-serif"><br></div><div class=3D"gmail_default" style=3D"fo=
nt-family:verdana,sans-serif"><a href=3D"https://openwrt.org/toh/asus/rt-ax=
89x">https://openwrt.org/toh/asus/rt-ax89x</a></div><div class=3D"gmail_def=
ault" style=3D"font-family:verdana,sans-serif"><br></div><div class=3D"gmai=
l_default" style=3D"font-family:verdana,sans-serif">There is a published bu=
ild chain for the device from ASUS - I haven&#39;t tried compiling it.</div=
><div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif"></di=
v><div class=3D"gmail_default" style=3D"font-family:verdana,sans-serif">I&#=
39;ve done some preliminary poking and opened the case up - dumped the boot=
log.</div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-se=
rif"></div><div class=3D"gmail_default" style=3D"font-family:verdana,sans-s=
erif"><br></div><div class=3D"gmail_default" style=3D"font-family:verdana,s=
ans-serif">Very interesting device and likely a good target for 10Gbit and =
Wifi6 work.</div><div class=3D"gmail_default" style=3D"font-family:verdana,=
sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-family:ver=
dana,sans-serif"><br></div><div class=3D"gmail_default" style=3D"font-famil=
y:verdana,sans-serif">-Joel<br></div></div>

--00000000000059882605a1c8d056--


--===============4564696476957305626==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4564696476957305626==--

