Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6093175AC6
	for <lists+openwrt-devel@lfdr.de>; Mon,  2 Mar 2020 13:47:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wQKdFUj8RgqeXymtTd1Us9zryjW1c6YHUl00dmr0fTI=; b=FJJN3F35GnW2GKiP9eHftBfut
	0IUahwpanpfxIbK5kj+p0V7/G0CYl3mERVcxO0Jt+ap7t7BCbi38LJlh8dU9ac2LZkSyT3XYLgQL4
	8YDHgFLjBkUeX3O9noLLZ6wSPL3tacoEXBZR3lzRP0Tp4j+E33Q3IsZu75cBtm/YCrk2lrlwn+v4+
	pdqGvPma/OirppyBWpWVkOzhC5au9hyJal8imc53TaCopUtd0nuqUlp3CTexedLgitik7Ynvfe4uM
	bOdiNTiUnKgLUpIdLkD8ROJ4QB9Tt2FAFW4Zx8yK6gWlBNe8VsI/gwnBvfM+UixfSIP+L3ggA4TZw
	BRCZHaSOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8kTP-0006oZ-2I; Mon, 02 Mar 2020 12:47:03 +0000
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8kTI-0006nj-HE; Mon, 02 Mar 2020 12:46:58 +0000
Received: by mail-pl1-x62e.google.com with SMTP id ay11so4170790plb.0;
 Mon, 02 Mar 2020 04:46:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=K1BLdjomDLLqO4xqvWL6B+p6Q4+GgVnIe2D93brBphc=;
 b=lG2nE2QuSCTMs8SIlibfCjRg87dVV+fqpHigKDRg3F+Azjk5J35i3dshdLyT03drRb
 k36OklTGc+ZHM267V/OLJIwLha+aMRr2hJtNLgjEvAmD0OHDDZdYDh+EkadAy25ofNma
 Jydxu2ElU3ReI3ildM5esbHCrsmBFYtOip2+hWQxfWpM6GNmILktN39FoD3Z0MDNSd1D
 wVAPQGCAeLnyPJOQcfJSTkfriwJgL6qtPAsGJPsK0JuxDE3n8GvXjaeNE+/6CqkisUcI
 N0SmS8OZ/yKVGrj1qq6pFlXm70VUOLdXcMR/hsPRB3PvcEQ+fX3M2IB3q865D31FnSD6
 CTEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=K1BLdjomDLLqO4xqvWL6B+p6Q4+GgVnIe2D93brBphc=;
 b=Wszw1UEYHPaJwJAHzC7jnA6xoRymCZMtxQL3selBtxGnfHM+N/ibe4vDGnQO0qa926
 KgZF5f9nmwWhzvc+xIagpUxs8KSHthT3gyNkmkBFSsII4f2IqziQm4I6avKjXzESJ1wa
 G+lQW3RpXQwu9rvXnEjBVQlOLCeakzG24gv5Q82+j22q6ozbKghEi64anGtzzp5Xyd/p
 uNpCye+yH39zmyueK2ZVaNzVA3QyYXpoqKmCb4PdoZQpA70AyrVXcAO6X1T02LzICkcl
 vSKinSDi1Sls2U4KxOYh8Q0yTfHn3W/JJ7MXuc8uPV0Ne5RkaX3bQm+fy74CfTS4TKiz
 FFMw==
X-Gm-Message-State: APjAAAVOEajvbE129CghXkHyrobsFxu3HJu9SVduxQ99Me4d1q/u0YBX
 QbMpPln3UaNerOF2Nld9KEUgVnZf9pKusNQfTXE=
X-Google-Smtp-Source: APXvYqxAgucH3WoOMaoYorpNii/WnOzCbRywUkz9Y6DI2Ibph2YqJDXvu68VU3Gjlwb70+MBfI/V9jhJpRnjAA+3sF8=
X-Received: by 2002:a17:902:9303:: with SMTP id
 bc3mr17096878plb.187.1583153210537; 
 Mon, 02 Mar 2020 04:46:50 -0800 (PST)
MIME-Version: 1.0
References: <7e661795-63c8-2c62-f3ce-bde77adcdfe2@aparcar.org>
 <20200226133614.GJ99033@meh.true.cz>
 <F03638DF-B6C4-438F-9B4F-E1110111AD01@gmail.com>
 <e169bdbe-fc8a-6a6f-c778-ae91ad7a8ced@aparcar.org>
In-Reply-To: <e169bdbe-fc8a-6a6f-c778-ae91ad7a8ced@aparcar.org>
From: Luiz Angelo Daros de Luca <luizluca@gmail.com>
Date: Mon, 2 Mar 2020 09:46:38 -0300
Message-ID: <CAJq09z7WbOG-PbJmHDDr4Dut9o+Z-QEXfAdrnkcM46QhJFsXxg@mail.gmail.com>
To: Paul Spooren <mail@aparcar.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_044656_598577_58FAD683 
X-CRM114-Status: UNSURE (   7.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:62e listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [luizluca[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Subject: Re: [OpenWrt-Devel] RFC: versions.json
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
Cc: Rich Brown <richb.hanover@gmail.com>, openwrt-adm@lists.openwrt.org,
 mail@adrianschmutzler.de, =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>,
 openwrt-devel@lists.openwrt.org, fhfrediani@gmail.com
Content-Type: multipart/mixed; boundary="===============4133019709696234210=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============4133019709696234210==
Content-Type: multipart/alternative; boundary="000000000000bd3a5f059fde94d3"

--000000000000bd3a5f059fde94d3
Content-Type: text/plain; charset="UTF-8"

Hello,

Thinking on which info the client side would need, I would remove the
minors info if we can just skip to latest. And, It's missing a changelog
link. Also, each release can have its own info.json with more info.

How would it deal with devices that cannot be upgrades (like the past case
of 4/32)? Or will it bother the user forever with a nonsense upgrade
suggestion? How would it deal with devices target or subtarget changes
(like ar71xx -> ath79, or generic -> tiny) or this is more a "go to
OpenWrt.org" instead of "click here to download"? And aborted releases that
brick devices until a new release is ready, specially when they are
specific to a device?

The version.json would speed up upgrade rollout. It would also increase the
impact of a bugged upgrade. I would be nice to have something like a staged
release process, even just for suggesting them to the user. We could create
some form of machine id mixing device mac, urandom seed, board id and the
new release version and use it for selecting a device for a stage. It could
be a client-side-code only strategy but versions.json could inform the
proportion of each stage.

It would also be interesting to have some form of automatic or manual
success feedback like "Notify OpenWrt if your upgrade worked". This way, a
backend could be notified before the upgrade and expect a response
afterwards.

Regards,

--000000000000bd3a5f059fde94d3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hello,<div dir=3D"auto"><br></div><div dir=3D"auto">Think=
ing on which info the client side would need, I would remove the minors inf=
o if we can just skip to latest. And, It&#39;s missing a changelog link. Al=
so, each release can have its own info.json with more info.</div><div dir=
=3D"auto"><br></div><div dir=3D"auto">How would it deal with devices that c=
annot be upgrades (like the past case of 4/32)? Or will it bother the user =
forever with a nonsense upgrade suggestion? How would it deal with devices =
target or subtarget changes (like ar71xx -&gt; ath79, or generic -&gt; tiny=
) or this is more a &quot;go to OpenWrt.org&quot; instead of &quot;click he=
re to download&quot;? And aborted releases that brick devices until a new r=
elease is ready, specially when they are specific to a device?</div><div di=
r=3D"auto"><br></div><div dir=3D"auto">The version.json would speed up upgr=
ade rollout. It would also increase the impact of a bugged upgrade. I would=
 be nice to have something like a staged release process, even just for sug=
gesting them to the user. We could create some form of machine id mixing de=
vice mac, urandom seed, board id and the new release version and use it for=
 selecting a device for a stage. It could be a client-side-code only strate=
gy but versions.json could inform the proportion of each stage.</div><div d=
ir=3D"auto"><br></div><div dir=3D"auto">It would also be interesting to hav=
e some form of automatic or manual success feedback like &quot;Notify OpenW=
rt if your upgrade worked&quot;. This way, a backend could be notified befo=
re the upgrade and expect a response afterwards.</div><div dir=3D"auto"><br=
></div><div dir=3D"auto">Regards,</div></div>

--000000000000bd3a5f059fde94d3--


--===============4133019709696234210==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4133019709696234210==--

