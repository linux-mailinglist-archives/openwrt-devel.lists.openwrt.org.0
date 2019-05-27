Return-Path: <openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org>
X-Original-To: lists+openwrt-devel@lfdr.de
Delivered-To: lists+openwrt-devel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB9352B360
	for <lists+openwrt-devel@lfdr.de>; Mon, 27 May 2019 13:44:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:To:Message-ID:Date:From:MIME-Version:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=jKOgUU1vciz/AoL85n+F2ZpST2ahkAKT/2RsFrfa9EA=; b=cJp
	eOPeJuFzPVJy7JrEy9HzLMhgBSDfw0jODu6tbDRjnYWo3ikZrWkTNBZBB2MQ3sbT3fCKWpFyTjicv
	L8V8ovA61AZXPrV2Z6AX26CejSqChxbT3jqV6YhKoq0xACS9X57H5IfZYXzUNyRjZ6PustWWx2tsw
	nlO6T8j3ftO+6xgVs3T8da1X2DUMbGvXIFNC4wVJH3FL2/Bqlx/0RSM+DXHS6AKZqB2AlxhIkbKmo
	d6nk42rffpcGIiCqxZUTtGOAJGdRpi1nva+gnRQbCnkiT4dUGz+k58wp+HAW63M7Cj8/vChFr641V
	MvM3khJKVngIi1esheGbMaQ0gJ9IYuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVE2p-0004Xd-I3; Mon, 27 May 2019 11:43:59 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVE2j-0004XA-HM
 for openwrt-devel@lists.openwrt.org; Mon, 27 May 2019 11:43:54 +0000
Received: by mail-wr1-x42c.google.com with SMTP id d9so16640282wrx.0
 for <openwrt-devel@lists.openwrt.org>; Mon, 27 May 2019 04:43:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=urPnjfg9SYmjmMMi96bNUH9g6Vit8eadxUdavyoYtkg=;
 b=J7ldk0Ks5WcRiAB0KNwtJK5RgPMVTYh8PHEZCZJkuD5l7cMb28fZlyHU3FYUa9jgk4
 siNa7uvsBoM/Ivowc1Fq2ztXPmauf1/8sc3UgwNrEFLF7iKTmlsdhTU/TlsNqWTaEJD2
 ml7ZVk8cHFMaqdhDI8sxrkvaz+ZkeSlKg6Kwe1j/AxUgsZGlUrg2UsWGm8ORp10IBqCD
 5PfjR+sX8BVkDkEXBgrV+0G+dw8HLUDrhonHyQSQITMygvASnZdvkgeIPa/oVq+Q8Pmp
 5QYZE5WW8cOnL7yVgYxHZP0MrGoLH7uiDjsFhk8vPZO81J4uFbGIBT9puHU8fN5ryEbT
 CDOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=urPnjfg9SYmjmMMi96bNUH9g6Vit8eadxUdavyoYtkg=;
 b=pdUsShx0NX4BHP4GywiZicxqXnJoym8hl/fCFPTsjqJr0+vWgwgRrQJDB/BbrNpadw
 Mf6OIlT9CFGsICJLMLwUtGntB9CHrgSapMnTKeh56BG0F4C4VMi0WKA653VA3bQz3KjQ
 D/7opxXsFJv8dHjjuU4u2NNQm4sW4U5Eap3fEEaYKEnPwAkWzyn8Lk9tt4swVONo3nyz
 SCuL/FEMC41Ivko2MBiB7Ve49xRTeUdAW2XEblPLYZSOjLLb2ah+9sJ/Xc6UnA1K59wp
 8Qb+UkUqaXxZbrVYAKedEW75DG7lr2mCKTvURpSsXqMYKPYv9b4g2A5Tcp5DhdNzAayU
 bDZA==
X-Gm-Message-State: APjAAAUNCbESBpr5diA8cVq4TJqsvnyagjY+IIU8h0stkKPB7/sZ/wGD
 ptpa3YBYcaeJkyrGEPNvMJyOjjcI9Y5gx1yRQs/16zcVzsQ=
X-Google-Smtp-Source: APXvYqwWYQpVEEHBXqxRDdt1btnLGerWaqIeGYi0ipBFKHhufpZ8a6aQA2hFXTERkAWQCu/09YZ2cssdXQ3O6kBKaEI=
X-Received: by 2002:a5d:6750:: with SMTP id l16mr24517875wrw.274.1558957429997; 
 Mon, 27 May 2019 04:43:49 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?Q?Denis_Peri=C5=A1a?= <darkman.hr@gmail.com>
Date: Mon, 27 May 2019 13:43:47 +0200
Message-ID: <CAC8mBSVP+Uev=H_x4actCT9g+FV1X0bVFZ=06biyBA=w-s6AkA@mail.gmail.com>
To: OpenWrt Development List <openwrt-devel@lists.openwrt.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_044353_602888_6AB71A93 
X-CRM114-Status: UNSURE (   6.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42c listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (darkman.hr[at]gmail.com)
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
Subject: [OpenWrt-Devel] dnsmasq not leasing after a while. Sometimes more
 than 5 times a day
X-BeenThere: openwrt-devel@lists.openwrt.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <openwrt-devel.lists.openwrt.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/openwrt-devel>, 
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/openwrt-devel/>
List-Post: <mailto:openwrt-devel@lists.openwrt.org>
List-Help: <mailto:openwrt-devel-request@lists.openwrt.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/openwrt-devel>,
 <mailto:openwrt-devel-request@lists.openwrt.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============4879973491335011273=="
Sender: "openwrt-devel" <openwrt-devel-bounces@lists.openwrt.org>
Errors-To: openwrt-devel-bounces+lists+openwrt-devel=lfdr.de@lists.openwrt.org

--===============4879973491335011273==
Content-Type: multipart/alternative; boundary="000000000000d5c5410589dd0fb1"

--000000000000d5c5410589dd0fb1
Content-Type: text/plain; charset="UTF-8"

Hi all,

This "bug" is following me for some time now.. a year at least. I'm hoping
day after day that someone might find reason and fix it. I've set a script
that checks dnsmasq and restarts it.

-->
         if ! ( dhcping -q -h 00:99:99:99:99:99 -s 10.0.0.1 ) #Jos jedna
provjera
                        then
                                echo "DEAD dnsmasq! - `date` " >>
/scripts/CRASH.log
                                killall dnsmasq
                                sleep 2
                                dnsmasq;
.... .>.>>>> etc........... CUT ---

two checks to be sure... and I get a lot of restart messages. different
nodes.
I run this via cron every half hour.

Anyone have similar problem?

--000000000000d5c5410589dd0fb1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all,<div><br></div><div>This &quot;bug&quot; is followi=
ng me for some time now.. a year at least. I&#39;m hoping day after day tha=
t someone might find reason and fix it. I&#39;ve set a script that checks d=
nsmasq and restarts it.<br><br>--&gt;<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
if ! ( dhcping -q -h 00:99:99:99:99:99 -s 10.0.0.1 ) #Jos jedna provjera<br=
>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 then<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 echo &quot;DEAD dns=
masq! - `date` &quot; &gt;&gt; /scripts/CRASH.log<br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 killall dnsmasq<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 s=
leep 2<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 dnsmasq;<br></div><div>...=
. .&gt;.&gt;&gt;&gt;&gt; etc........... CUT ---</div><div><br></div><div>tw=
o checks to be sure... and I get a lot of restart messages. different nodes=
.<br>I run this via cron every half hour.</div><div><br></div><div>Anyone h=
ave similar problem?</div></div>

--000000000000d5c5410589dd0fb1--


--===============4879973491335011273==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
openwrt-devel mailing list
openwrt-devel@lists.openwrt.org
https://lists.openwrt.org/mailman/listinfo/openwrt-devel

--===============4879973491335011273==--

