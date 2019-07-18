Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2095F6C4E3
	for <lists+openwrt-devel@lfdr.de>; Thu, 18 Jul 2019 04:14:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:References:To:In-Reply-To:Date:Mime-Version:Message-Id:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YmFEwG8ylLPozhj5k5Jd2AB3MOJgOapbhB1XP9xJwbA=; b=GBbIGeJ8ox+unbSQaujJEBOJ7
	xHKAoM3O4dECZHv7HMUmvVUdjv+TwZPMrTClJmP/TcV0YCvUynCWhI9YqxFvR971nujKJPfH8WBJy
	jVcrEEy3BY0CLBssC7J/z1xt1JVYFV697/hI7iinatneLlyrsMgKplZmc3zUWI72TQcweqGSw9c0x
	izJY5g7ucCItzqyYsRMa2Z6jLioP8o/IV/63IG1FloK8zLT0xc6/9UtNF/QrXND7axHItk1i67wXT
	BPV6UHsgApjkmZsPXbRGLI7tchjOxBlHhcy0W6fnOD1VrYAnZsN0pYY9ym0Gldq9LcHrD2dc25uUY
	bMGj/9UjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnvwJ-0002Gd-59; Thu, 18 Jul 2019 02:14:35 +0000
Received: from mail-qt1-x830.google.com ([2607:f8b0:4864:20::830])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnvw7-0002GA-4H; Thu, 18 Jul 2019 02:14:24 +0000
Received: by mail-qt1-x830.google.com with SMTP id h18so25533543qtm.9;
 Wed, 17 Jul 2019 19:14:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:message-id:mime-version:subject:date:in-reply-to:cc:to
 :references; bh=EtePUfroOoU0OqttPZWHGIyK0lhBBXa1oaZwycpI+OU=;
 b=eTZfhPhMpZ8AmARUgB3Y8H5eGGd0tNZ8RzrYWdwnNjiG/HD9eZnjvE0JV4r9lUh1T/
 actUpMpcFgJYur90kYjO94RBcvg+A4+hlLV3/P4jSGDjq9mv+c/QCCEj1FNVbOAJIBbd
 Q+d6ViTFfM9o3/1lUxw/FUFkHhgQB33JQCD+FGSAYidxOaZ936CX4RLM7A9Cg/0btqeT
 7vTMR2B6lnIB6pRgE2WvTVUXFIAt3t2EJFV0P5TJuLE2TCJwTx3iUMHh1TEJIpnT3Bd4
 Ld6u0p7xxDL/9Tpp5GGClCmv/fPkqu4oZpPIDGvuDwUebZAV3fw72XUtWsk5+aCB2E8Y
 jqAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:message-id:mime-version:subject:date
 :in-reply-to:cc:to:references;
 bh=EtePUfroOoU0OqttPZWHGIyK0lhBBXa1oaZwycpI+OU=;
 b=d94EuN0fCZt71MqvYAX8wLIUFU6feWKzlv4LZNOCoW4XMs6hn799NxLMhUTo/mjxjN
 riEIN8QseDqINvb+jopiPaS5JtQRMlKqYnQyfEPs5PaAqs/2K//k0NBi2NuqFrqKUFSO
 rXpKx/c2kRJkRlx/lD5qfnaC2GweGkgshzAYNenNSKRs6BS1Hti9qDGC9AlpvC39AwOA
 BaLeYQsiOqE1PB6skipoFcf83Vu3RJyCg1Izy+WtJpC7s/hdrelK3FBeka1SJjth2iH9
 w9/71ez4BOmt7i+cHT2skXHwuvKjPG8vMWegP/rp6QsF80RTqPdM7RIv6CaoLUk750ZH
 CD4g==
X-Gm-Message-State: APjAAAW1dPWXaWhtHH57tC2Z6jTX5SCNGGt6cs+VZ62v/a3M4kdUew8l
 ztzYVJm8irwYPBcJWKrqaDk=
X-Google-Smtp-Source: APXvYqxVjwMTpa+ngyBqMpCGgXoxVQ8m9DB7Owv6QumijCa6bH+I2NW9Q09sr08GJrO6NrANGwYPXQ==
X-Received: by 2002:ac8:2379:: with SMTP id b54mr30763041qtb.168.1563416061164; 
 Wed, 17 Jul 2019 19:14:21 -0700 (PDT)
Received: from richs-mbp-10337.lan
 (pool-70-16-109-112.port.east.myfairpoint.net. [70.16.109.112])
 by smtp.gmail.com with ESMTPSA id m3sm9387209qki.87.2019.07.17.19.14.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 17 Jul 2019 19:14:20 -0700 (PDT)
From: Rich Brown <richb.hanover@gmail.com>
Message-Id: <F6D84DF5-15CA-4C89-9FD1-C322E0479619@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Date: Wed, 17 Jul 2019 22:14:19 -0400
In-Reply-To: <02ae5038-fe1e-cd3e-da0f-9b2bbf412ff9@disroot.org>
To: SkullFace <skullface101@disroot.org>
References: <1c19841f-329f-e5d3-f7ed-e7c7b96dd9f4@disroot.org>
 <02ae5038-fe1e-cd3e-da0f-9b2bbf412ff9@disroot.org>
X-Mailer: Apple Mail (2.3273)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_191423_201486_11B1BF81 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:830 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richb.hanover[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
Subject: Re: [OpenWrt-Devel] Special features request!
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
Cc: openwrt-devel@lists.openwrt.org, openwrt-adm@lists.openwrt.org
Content-Type: multipart/mixed; boundary="===============8250902452000391039=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org


--===============8250902452000391039==
Content-Type: multipart/alternative;
 boundary="Apple-Mail=_B693FA06-47F4-4EC2-82C2-FD661CF42415"


--Apple-Mail=_B693FA06-47F4-4EC2-82C2-FD661CF42415
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,

Thanks for writing to us about OpenWrt. I think you misunderstand the =
right place to ask your questions. Please accept our advice for a good =
way to proceed. Here is how I understand your request:

1) You are looking to modify the base OpenWrt release. This seems to be =
an interesting set of features.

2) You do not presently have the technical skills (or enough time) to do =
this work yourself, so you are looking for someone to help.

3) Once you have a sense of how much work these tasks will require, you =
will crowd-fund the project.

The OpenWrt developer and admin lists (that you wrote to) are not the =
proper place to ask these questions. A better place to ask would be to =
post a note to the OpenWrt Forum (forum.openwrt.org =
<http://forum.openwrt.org/>) in the Developer category to see if there =
is interest from someone who would be willing to work with you to create =
an estimate and the desired software modifications.

Best regards,

Rich Brown

> On Jul 17, 2019, at 9:13 PM, SkullFace <skullface101@disroot.org> =
wrote:
>=20
> Hi
>=20
>=20
> I would like to ask openwrt team to add some special features that i =
need.
>=20
> I will use crowd funding to collect the money!
>=20
> 1-I need full control over Lantiq xDsl firmware using both GUI and =
CLI.
>=20
> 2-I want to override Line Config enforced by DSLAM/DLM, [SNR, Power, =
Interleaving, G.INP, BitSwap, Vectoring, Rate Adaptation....etc].
>=20
> 3-more advanced, stable and configurable VPN clients/Servers, Proxy =
Client/Servers, Obfuscating Proxy clients/Servers.
>=20
> 4-Advanced Luci Addons for CLI only packages.
>=20
> 5-Stable per user bandwidth monitor and limiter.
>=20
> 6-Per user speed limit/propriety.
>=20
> 7-Support for other unsupported  xDsl Chips
>=20
> 8-Support for the wide spead ISP routers.
>=20
> So i wanted to publish a Patreon page to cover the costs, however i =
cant complete and publish the page without knowing the money required to =
finish these tasks and/or hire more programmers to help finish the tasks =
quicker.
>=20
> How much money is required to accomplish the tasks 1-3?! and how much =
time is needed?
>=20
> Thanks
>=20
>=20
>=20
> _______________________________________________
> openwrt-adm mailing list
> openwrt-adm@lists.openwrt.org
> http://lists.infradead.org/mailman/listinfo/openwrt-adm


--Apple-Mail=_B693FA06-47F4-4EC2-82C2-FD661CF42415
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D"">Hi,<div class=3D""><br class=3D""></div><div class=3D"">Thanks =
for writing to us about OpenWrt. I think you misunderstand the right =
place to ask your questions. Please accept our advice for a good way to =
proceed. Here is how I understand your request:</div><div class=3D""><br =
class=3D""></div><div class=3D"">1) You are looking to modify the base =
OpenWrt release. This seems to be an interesting set of =
features.</div><div class=3D""><br class=3D""></div><div class=3D"">2) =
You do not presently have the technical skills (or enough time) to do =
this work yourself, so you are looking for someone to help.</div><div =
class=3D""><br class=3D""></div><div class=3D"">3) Once you have a sense =
of how much work these tasks will require, you will crowd-fund the =
project.</div><div class=3D""><br class=3D""></div><div class=3D"">The =
OpenWrt developer and admin lists (that you wrote to) are not the proper =
place to ask these questions. A better place to ask would be to post a =
note to the OpenWrt Forum (<a href=3D"http://forum.openwrt.org" =
class=3D"">forum.openwrt.org</a>) in the Developer category to see if =
there is interest from someone who would be willing to work with you to =
create an estimate and the desired software modifications.</div><div =
class=3D""><br class=3D""></div><div class=3D"">Best regards,</div><div =
class=3D""><br class=3D""></div><div class=3D"">Rich Brown</div><div =
class=3D""><br class=3D""></div><div class=3D""><div =
class=3D""><div><blockquote type=3D"cite" class=3D""><div class=3D"">On =
Jul 17, 2019, at 9:13 PM, SkullFace &lt;<a =
href=3D"mailto:skullface101@disroot.org" =
class=3D"">skullface101@disroot.org</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div class=3D"">Hi<br =
class=3D""><br class=3D""><br class=3D"">I would like to ask openwrt =
team to add some special features that i need.<br class=3D""><br =
class=3D"">I will use crowd funding to collect the money!<br =
class=3D""><br class=3D"">1-I need full control over Lantiq xDsl =
firmware using both GUI and CLI.<br class=3D""><br class=3D"">2-I want =
to override Line Config enforced by DSLAM/DLM, [SNR, Power, =
Interleaving, G.INP, BitSwap, Vectoring, Rate Adaptation....etc].<br =
class=3D""><br class=3D"">3-more advanced, stable and configurable VPN =
clients/Servers, Proxy Client/Servers, Obfuscating Proxy =
clients/Servers.<br class=3D""><br class=3D"">4-Advanced Luci Addons for =
CLI only packages.<br class=3D""><br class=3D"">5-Stable per user =
bandwidth monitor and limiter.<br class=3D""><br class=3D"">6-Per user =
speed limit/propriety.<br class=3D""><br class=3D"">7-Support for other =
unsupported&nbsp; xDsl Chips<br class=3D""><br class=3D"">8-Support for =
the wide spead ISP routers.<br class=3D""><br class=3D"">So i wanted to =
publish a Patreon page to cover the costs, however i cant complete and =
publish the page without knowing the money required to finish these =
tasks and/or hire more programmers to help finish the tasks quicker.<br =
class=3D""><br class=3D"">How much money is required to accomplish the =
tasks 1-3?! and how much time is needed?<br class=3D""><br =
class=3D"">Thanks<br class=3D""><br class=3D""><br class=3D""><br =
class=3D"">_______________________________________________<br =
class=3D"">openwrt-adm mailing list<br class=3D""><a =
href=3D"mailto:openwrt-adm@lists.openwrt.org" =
class=3D"">openwrt-adm@lists.openwrt.org</a><br =
class=3D"">http://lists.infradead.org/mailman/listinfo/openwrt-adm<br =
class=3D""></div></div></blockquote></div><br =
class=3D""></div></div></body></html>=

--Apple-Mail=_B693FA06-47F4-4EC2-82C2-FD661CF42415--


--===============8250902452000391039==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============8250902452000391039==--

